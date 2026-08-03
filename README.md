<div align="center">

# Advanced Memory Allocation System

**An extension of the mCertiKOS operating system implementing buddy allocation, contiguous memory allocation, 4MB superpages, and dynamic heap management for efficient memory utilization.**

> <img src="https://github.com/ridika-2004/Advanced_Memory_Allocation_Os/blob/master/mcertikos.gif" />

</div>

## Overview

This project extends the memory management subsystem of **mCertiKOS** by implementing an advanced memory allocation framework that supports contiguous allocation, buddy allocation, superpage management, and dynamic heap expansion.

The implementation focuses on reducing memory fragmentation, improving allocation efficiency, minimizing Translation Lookaside Buffer (TLB) misses, and supporting larger memory allocations through **4MB superpages**.

## Features
> <img align="right" width="400" alt="Slide-page-4" src="https://github.com/user-attachments/assets/8b2a2060-1c19-4f24-84d1-de12d5e52781" />

- Buddy Allocation using power-of-two (`2ⁿ`) block sizes
- Contiguous physical memory allocation
- 4MB Superpage allocation and deallocation
- Memory zone partitioning to reduce fragmentation
- Dynamic heap management through the `brk()` system call
- Container-based memory accounting and quota tracking
- Efficient Allocation Table (`AT[]`) metadata management
- Automated kernel test suite

# Key Concepts

> <img width="400" align="right" src="https://github.com/user-attachments/assets/95b62a56-f2e8-44a6-9695-3dca0072ff00" />


| # | Concept |
|---|---------|
| 1 | Paging & Virtual Memory |
| 2 | Page Tables & Page Directories |
| 3 | Translation Lookaside Buffer (TLB) |
| 4 | Page Size Extension (PSE) |
| 5 | `brk()` System Call |
| 6 | Buddy Memory Allocation |
| 7 | Contiguous Physical Memory Allocation |
| 8 | Superpage Memory Management |
| 9 | Dynamic Heap Management |

# Technologies & Tools

| Category | Details |
|----------|---------|
| **Programming Language** | C |
| **Operating System Framework** | mCertiKOS |
| **CPU Architecture** | x86 |
| **Development Environment** | VMware |
| **Editor** | Visual Studio Code |
| **Compiler** | GCC |
| **Build System** | Makefile |
| **Emulator** | QEMU |

# System Flow

> <img alt="Slide-page-2" src="https://github.com/user-attachments/assets/342aabb6-8694-4477-8c9f-095856e718ed" />


The memory management system is organized into multiple layers that cooperate to manage physical and virtual memory efficiently. It includes buddy allocation for contiguous memory, superpage support for large mappings, container-based quota management, and dynamic heap expansion.

# Repository Structure

```text
.
├── boot/
├── kern/
│   ├── init/
│   ├── mm/
│   ├── trap/
│   └── ...
├── user/
├── test/
├── Makefile
└── README.md
```

---

# Building & Running

## Clone the repository

```bash
git clone https://github.com/ZAsabiha/Advanced_Memory_Allocation_Os.git
cd Advanced_Memory_Allocation_Os
```

## Build and run

Inside the configured **mCertiKOS Virtual Machine**, execute:

```bash
make clean
make TEST=1
```

The commands will:

- Build the kernel
- Generate the bootable disk image
- Launch the operating system using **QEMU**
- Execute the automated memory allocation test suite


# Test Coverage

The project includes automated tests for:

- Physical Memory Initialization
- Buddy Allocator
- Contiguous Memory Allocation
- Superpage Allocation & Deallocation
- Memory Zone Management
- Allocation Table (AT)
- Container Memory Quotas
- Virtual Memory Mapping
- Dynamic Heap (`brk()`)
- MPT Layer Integration

# Future Improvements

- NUMA-aware allocation
- Transparent Huge Pages
- Memory compaction
- Slab allocator integration
- Advanced page replacement algorithms


# Acknowledgements

This project was developed by extending the **mCertiKOS** educational operating system as part of an Operating Systems coursework focusing on advanced memory management techniques.


