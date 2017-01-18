# What's this repo ?
I'm following an online OS course and cracking its code. This repo records how much I have cracked so far.

# What's uCore ?
uCore is an operating system developed by Tsinghua University for its operating systems course. It is developed from MIT xv6 OS.
It is compsed of 8 labs covering all aspects of an modern operating system: 

* how to boot an OS
* physical memory management
* virtual memory management
* kernel thread
* user thread
* scheduler
* mutual exclusion
* file system

The whole OS can break down into 38 small projects, to guide the students to establish a complete OS step by step.

# How I learn it ?
The Tsinghua University provides plenty of support to who want to study this course. I learn by studying each small projects.
As an true enthusiast in OS, I satisfy myself by: 
* Reading each line of code of each file, no matter which file it is. I read all libarary files, linker script, bootstraping assembly files, makefile, qemu documentations, and kernel source code.
* Getting myself familiar with software tools by reading their manual, like make, objdump, nm, readelf, etc.
* Be more knowledgeable in how the compiler, debugger works. I got know how ELF format consists of and how compiling, linking,
relocating work together. I read gdb stabs information to construct the call trace for debugging. etc.

# How's the progress ? 
I have carefully studied 8 of 38 small projects. I have concrete understanding on how OS boots. The next step is to do memory management.
The process seems slow but I learned a lot of things and feel improved gradually.

# What achieved at proj4.3 ?
* make a kernel image, load it into memory, and execute from its starting point
* call trace enabled, with ability of tracing back up to 20 levels
* switching between kernel mode and user mode

