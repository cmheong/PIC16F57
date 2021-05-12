# PIC16F57
Toy program to verify PIC16F57 development system
Toochain is: MPLab 8.33 (on Windows XP on Qemu), Pickit 2, pk2cmd, and handbuilt PIC16F57 target system
![PICkit 2 program and run](program_n_run.jpg)
Typical programming command:
$./pk2cmd -PPIC16F57 -Fledblink.hex -M
PICkit 2 Program Report
12-5-2021, 14:45:05
Device Type: PIC16F57

Program Succeeded.

Operation Succeeded

To run:
$./pk2cmd -PPIC16F57 -GC -T -R
Read successfully.

Configuration Memory

0FFB  

Operation Succeeded
