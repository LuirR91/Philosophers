# Philosophers

## Overview

Philosophers is a C-language implementation of the classic "Dining Philosophers" problem, a common exercise in concurrency and synchronization. This project demonstrates managing shared resources and avoiding deadlocks using multithreading and mutex locks.

## Features

- Handles multiple philosophers and forks
- Prevents deadlocks & starvation (using standard concurrency strategies)
- Command-line configuration for number of philosophers
- Easy to read and modify source code

## Getting Started

### Prerequisites

- GCC or compatible C compiler
- Make
- POSIX Threads (pthreads) library

### Building

Clone the repository:

```sh
git clone https://github.com/LuirR91/Philosophers.git
cd Philosophers
```

Compile the project:

```sh
make
```

### Running

```sh
./philosophers <number_of_philosophers> <time to die> <time to eat> <time to sleep> <number of times all the philosophers need to eat before terminating the program> **

** optional argument>
```

## Project Structure

- `main.c` — Entry point and program logic
- `philosophers.c` — Philosopher thread routines
- `philosophers.h` — Header definitions
- `Makefile` — Build instructions (if present)
