# Password-Validity-Checking-System

## Problem Statement:
To write a program in 8086 Assembly Language that checks an input string against a password string stored in memory and outputs a message based on whether the password is matched or not.


## Tools used:
1. DOSBox : DOSBox is a free and open-source emulator which runs software for MS-DOS compatible disk operating systems—primarily video games. It was first released in               2002.
2. TASM 1.4 : Turbo Assembler aka tasm is an assembler for software development published by Borland 1989.


## Segments in the code:
1. Data Segment : Password and input messages are stored.
                  Messages to be displayed are stored.
                  
2. Code Segment : Input and password is DS is moved and checked
                  Compared and zero flag sets
               
3. Zero Flag : If sets to 0 , array elements don't match and m3 is displayed.
               If sets to 1 , array elements match and m2 is displayed.


