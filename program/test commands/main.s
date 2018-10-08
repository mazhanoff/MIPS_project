begin:	xori $t0, $t0, 10
		nor  $t1, $t0, $t1
		sllv $t2, $t0, $t1
		bgez $t0, begin