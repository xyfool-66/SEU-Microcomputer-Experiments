      .data
str:  .asciiz "the answer = "
note: .asciiz "\n==========================================\nALL RIGHTS RESERVED (C) 2021 Wuqiong Zhao\n"
      .text
main: li $v0, 4     # system call code for print_str
      la $a0, str   # address of string to print
      syscall       # print the string

      li $v0, 1     # system call code for print_int
      li $a0, 5     # integer to print
      syscall       # print it
      
      li $v0, 4     # system call code for print_str
      la $a0, note  # address of the cpoyright notice
      syscall       # print the cpoyright notice
      jr $ra        # terminate the program

