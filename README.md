# What's this repo ?
I'm following an online OS course and cracking its code. This repo records how much I have cracked so far.

# What's uCore ?
uCore is an operating system developed by Tsinghua University for its operating systems course. It is developed from MIT xv6 OS. It is compsed of 8 labs covering these topics: 

* how to boot an OS
* physical memory management
* virtual memory management
* kernel thread
* user thread
* scheduler
* mutual exclusion
* file system

# How I learn it ?
This course is well-supported by Tsinghua University. The uCore OS can break down into 38 small projects. I learn the small project one by one. I: 
* Read each line of code, no matter what file it is. I read library file, linker script, bootstraping code, makefile, qemu documentations, and kernel source code.
* Understand software tools by reading their manuals, like gdb, make, objdump, nm, readelf, etc.
* Study the build process. understand ELF format, compiling, linking, and reallocating.
* Study the debugger. How to add remote debugger, how to use kgdb/kdb, how to create function trace using stabs of debugging info. etc.

# How's the progress ? 
I have carefully studied 8 of 38 small projects. I have concrete understanding on how OS boots. The next step is to do memory management. The process seems slow but I learned a lot of things.

# What achieved at proj4.3 ?
### proj1: simple bootloader

### proj2: bootloader that can read disk

### proj3: bootloader that can parse kernel image of ELF format
* read 1st page off disk
* load each program segment
* call the entry point from the ELF header

### proj3.1: uCore can trace function calls
* can display call traces including file name, function name, line number, registers' value

### proj4: uCore can handle external interrupts from COM1, keyboard, and timer

### proj4.1: Add user segments

### proj4.2: Add gdb remote server/stub

### proj4.3: Allow hardware breakpoint and watchpoint
* implemented system call and switching between user and kernel mode

