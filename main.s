@stm32f103

.syntax unified 

.thumb
.cpu cortex-m3 

.equ StackPointer, 0x20005000


.word StackPointer
.word Reset + 1


Reset: B Reset 
