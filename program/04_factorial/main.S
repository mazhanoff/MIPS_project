

.text

init:		li $t1, 7
			li $t4, 1
			li $v0, 0
L1:			subu $t2, $t1, $t4	## cur_num = num-1
			li $t3, 0			## acc=0
			beqz $t2, end
L2:			beqz $t2, L4		## while(cur_num!=0)
			bnez $v0, L3		## if (result==0)
			addu $t3, $t3, $t1	## acc += num
L3:			addu $t3, $t3, $v0	## else
			subu $t2, $t2, $t4	## acc += result
			beqz $0, L2			##
L4:			move $v0, $t3		## result = acc
			subu $t1, $t1, $t4	## num--
			bnez $t1, L1		## while(num!=0)
end:		beqz    $0,  end 

