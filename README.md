# Out-of-Bounds Array Access in Assembly

This repository demonstrates a common error in assembly language programming: out-of-bounds array access.  The `bug.asm` file contains code that attempts to access an array element using an index that is outside the bounds of the array. This can lead to a segmentation fault or other undefined behavior.

The `bugSolution.asm` file provides a corrected version of the code, incorporating bounds checking to prevent such errors.  This solution demonstrates how to write safer and more reliable assembly code.

This example highlights the importance of careful memory management and bounds checking in low-level programming.