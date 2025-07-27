/**
 * Tony Givargis
 * Copyright (C), 2023
 * University of California, Irvine
 *
 * CS 238P - Operating Systems
 * scheduler.c
 */

#undef _FORTIFY_SOURCE

#include <unistd.h>
#include <signal.h>
#include <setjmp.h>
#include "system.h"
#include "scheduler.h"
#include <signal.h>
#include <stdio.h>

/**
 * Needs:
 *   setjmp()
 *   longjmp()
 */

/* research the above Needed API and design accordingly */

#define SZSTACK 1048576

typedef struct thread {
    jmp_buf ctx;
    struct {
        char *memory;
        char *memory_;
    }stack;
    struct{
        void *arg;
        scheduler_fnc_t fnc;
    }code;
    enum{INIT, RUNNING, SLEEPING, TERMINATED}status;
    struct thread *link;
}thread_tem;

thread_tem *head = NULL;
thread_tem *current_thread = NULL;
jmp_buf ctx;

int scheduler_create(scheduler_fnc_t fnc, void *arg) {
    thread_tem *new_thread = (thread_tem *)malloc(sizeof(thread_tem));
    if (!new_thread) {
        printf("Failed to allocate memory for thread");
        return -1;
    }
    new_thread->code.fnc = fnc;
    new_thread->code.arg = arg;
    new_thread->status = INIT;
    new_thread->stack.memory_ = (char *)malloc(SZSTACK+page_size());
    if (!new_thread->stack.memory_){
        free(new_thread);
        printf("failed to allocate stack memory for thread");
        return -1;
    }
    new_thread->stack.memory = memory_align(new_thread->stack.memory_, SZSTACK);
    new_thread->link = head;
    head = new_thread;
    return 0;
}

void handler(){
    signal(SIGALRM,handler);
    alarm(1);
    scheduler_yield();
}


static void destroy(void){
    thread_tem *t, *t_;
    t = head;
    while(t){
        t_ = t;
        t = t->link;
        free(t_->stack.memory_);
        free(t_);
    }
}

static struct thread *Candidate(void) {
    thread_tem *t;
    if(current_thread->link!=NULL)
        t = current_thread->link;
    else
        t=head;
   
    while (t!=NULL) {
        if (t->status == INIT || t->status == SLEEPING){
            return t; 
        }
        t = t->link;
    }
    t=head;
    while (t != NULL) {
        if (t->status != TERMINATED){
            return t;
        }
        t = t->link;
    } 
    return NULL;
}


static void schedule(void){
    unsigned long new_sp;
    thread_tem *t;
    t = Candidate();
    if (t == NULL){
        return;
    }

    current_thread =t;
    if (t->status == INIT)
    {
        new_sp = (unsigned long)t->stack.memory;
        __asm__ volatile (
        "movq %0, %%rsp\n"
        :
        : "r"(new_sp)
        : 
        );
        t->status = RUNNING;
        t->code.fnc(t->code.arg);
        t->status = TERMINATED;
        longjmp(ctx, 1);
    }
    else{
        t->status = RUNNING;
        longjmp(t->ctx,1);
    }
}

void scheduler_execute(void){
    current_thread=head;
    signal(SIGALRM,handler);
    alarm(1);
    setjmp(ctx);
    schedule();
    destroy();
}

void scheduler_yield(void){
    if (!setjmp(current_thread->ctx)){
        current_thread->status = SLEEPING;
        longjmp(ctx, 1);
    }
}

