# Userspace Thread Scheduler

A cooperative, userspace thread scheduler in **C** that enables user‑level threads to yield control cooperatively.

---

## 🚀 Features

- **Create Threads**  
  `scheduler_create(fn, arg)` spawns a new user‐level thread running `fn(arg)`.  

- **Cooperative Multitasking**  
  `scheduler_yield()` lets a running thread yield the CPU to another ready thread.  

- **Context Switching in Assembly**  
  Low‑overhead register saving/restoring in `scheduler.s` and `system.s`.  

- **Custom Runtime Utilities**  
  - `us_sleep(us)` — microsecond‐precision sleep  
  - `memory_align()` — page‐aligned allocator  
  - Safe string/format helpers (`safe_strlen`, `safe_sprintf`)

---

## 🛠️ Tech Stack

- **Language:** C  
- **Build:** GNU Make, GCC (`-ansi -pedantic -O3`)  
- **Files:**  
  - `scheduler.c` / `scheduler.h` — scheduling logic  
  - `system.c` / `system.h` — runtime utilities  
  - `*.s` — assembly context‐switch routines  
  - `main.c` — example/demo usage  
  - `Makefile` — compile & link to `cs238` executable

---

## ⚙️ Build & Run

```bash
# Build the scheduler and demo
make

# Run the demo program
./cs238
