# key
# t0: i
# t1: array[i]
# t2: current value
# t3: j
# t4: array[j]
# t5: value at array[j]

.data
array: .word 4, 5, 3, 1, 6 # array
n: .word 5 # array size

.text
main:
	la t6, n
	lw a1, 0(t6) # a1 = array size
	la a0, array # a0 = array address
	li t0, 1 # i = 1

for_loop:
	bge t0, a1, end
	slli t1, t0, 2 # compute address array[i]
	add t1, a0, t1 # adding offset to base address of array
	lw t2, 0(t1)  
	addi t3, t0, -1 # j = i - 1

while_loop:
	blt t3, x0, insert
	slli t4, t3, 2 # compute address array[j]
	add t4, a0, t4 # adding offset to base address of array
	lw t5, 0(t4) # loading array[j]

	bge t2, t5, insert
	sw t5, 4(t4) # value at array[j+1] = array[j]
	addi t3, t3, -1 # j = j - 1
	beq x0, x0, while_loop

insert:
	addi t6, t3, 1 # t6 = j + 1
	slli t6, t6, 2 # offset = (j + 1)*offset 4
	add t6, a0, t6 # adding offset to base address of array
	sw t2, 0(t6) # storing array[j + offset] into current value
	addi t0, t0, 1 # i = i + 1
	beq x0, x0, for_loop

end:
	ret

