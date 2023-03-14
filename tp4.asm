# GUILHERME MARTINS SPECHT(20102977-4)
# LUCAS DIAS NARDINO(21101052-5)

.text				 
	.globl	DECLARACAO	

DECLARACAO:	la $s0, n			# load adress => n = $s0
		la $s7, k			# load adress => k = $s7
		lw $s7, 0($s7)			# load word em $s7
		lw $s0, 0($s0)			# load word em $s0
		xor $t2, $t2, $t2		# i = $t2, i = 0
		xor $s1, $s1, $s1		# $s1 com o valor de 0
		la $t3, A			# load adress do Vetor A
		la $t4, B			# load adress do Vetor B
		la $t5, C			# load adress do Vetor C
						# load adress do Vetor D
      
LOOPSOMA:	addi $t2, $t2, 1		# i = i + 1
		lw $t3, 0($t3)			# load adress de $t3 em $s1
		lw $t4, 0($t4)			# load adress de $t4 em $s1
		lw $t5, 0($t5)			# load adress de $t5 em $s1
		add $t6, $t6, $t3		# adiciona o valor de uma posiçao do Vetor A
		add $t7, $t7, $t4  		# adiciona o valor de uma posiçao do Vetor B
		add $t8, $t8, $t5		# adiciona o valor de uma posiçao do Vetor C
		la $t3, A			# load adress do Vetor A
		la $t4, B			# load adress do Vetor B
		la $t5, C			# load adress do Vetor C
		mul $s1, $t2, 4			# valor do adress passa para o próximo valor dos vetores
		add $t3, $t3, $s1		# proxima posição do vetor A
		add $t4, $t4, $s1		# proxima posição do vetor B
		add $t5, $t5, $s1		# proxima posição do vetor C
		blt $t2,$s0,LOOPSOMA		# if(i < n), jump to LOOPSOMA
		divu $t6,$t6,$s0		# Média do Vetor A
		divu $t7,$t7,$s0		# Média do Vetor B 
		divu $t8,$t8,$s0		# Média do Vetor C
		addi $t9,$t6,0			# Média do Vetor A = VM
		blt $t7, $t9, VERIF		#if(B[] < VM)
		blt $t8,$t9, VERI
		j GUARDAVM
		#addi $t9,$t7,0 	        # Média do Vetor B = VM
		
VERIF:		addi $t9,$t7,0 
		#blt $t9,$t8,GUARDAVM		#if(C[] < VM)
		j GUARDAVM			# Média do Vetor C = VM
		
VERI:		addi $t9,$t8,0			#vetor t8
		
GUARDAVM:  	la $s3,VM			# load adress VM = $s3
		sw $t9, 0($s3)			# Menor média dos três em $s3
		xor $t2, $t2, $t2		# i = 0, denovo 
		sub $t3, $t3, $s1		# Primeira posição do Vetor A
		sub $t4, $t4, $s1		# Primeira posição do Vetor B
		sub $t5, $t5, $s1		# Primeira posição do Vetor C
		xor $s1, $s1, $s1		# $s1 => 0
		la $t0, D
		
LOOPVETOR:	addi $t2, $t2, 1		# i = i + 1
		lw $t3, 0($t3)			# load adress de $t3 em $s1
		lw $t4, 0($t4)			# load adress de $t4 em $s1
		lw $t5, 0($t5)  		# load adress de $t5 em $s1
		bge $t3, $t9, ADDEMDA		# Confere se o vetor A é menor que VM
		
COMPARAB: 	bge $t4, $t9, ADDEMDB		# Confere se o vetor B é menor que VM

COMPARAC: 	bge $t5, $t9, ADDEMDC 		# Confere se o vetor C é menor que VM
		j MUL				# jump to MUL
		
ADDEMDA:	sw $t3, 0($t0)			# Adiciona o valor do Vetor A no Vetor D
		addi $t0, $t0, 4		# Vai para a próxima posição do Vetor D
		#addi $t1, $t1, 1		# Mais um no contador do Vetor D(k)
		addi $s7, $s7, 1
		j COMPARAB			# jump to COMPARAB
		
ADDEMDB:	sw $t4, 0($t0)			# Adiciona o valor do Vetor B no Vetor D
		addi $t0, $t0, 4		# Vai para a próxima posição do Vetor D
		addi $s7, $s7, 1		
		#addi $t1, $t1, 1		# Mais um no contador do Vetor D(k)
		j COMPARAC			# jump to COMPARAB
		
ADDEMDC:	sw $t5, 0($t0)			# Adiciona o valor do Vetor C no Vetor D
		addi $t0, $t0, 4		# Vai para a próxima posição do Vetor D
		addi $s7, $s7, 1				
		
		
MUL:		mul $s1, $t2, 4			# Valor da memória vai para o próximo valor dos Vetores
		la $t3, A			# load adress do Vetor A
		la $t4, B			# load adress do Vetor B
		la $t5, C			# load adress do Vetor C
		add $t3, $t3, $s1		# Próxima posição do Vetor A
		add $t4, $t4, $s1		# Próxima posição do Vetor B
		add $t5, $t5, $s1		# Próxima posição do Vetor C	
		blt $t2, $s0, LOOPVETOR		# if(i < n), jumo to LOOPVETOR
		#la $s2, k			# load adress => $s2
		la $s5, k
		sw $s7, 0($s5)
		   
end:	j	end				# FIM #conferir se foi ensinado


.data
n:	.word	4				# Tamanho dos Vetores A, B e C
k:	.word	0				# Tamanho do Vetor D
A:	.word	255, 801, 198, 433		# Vetor A
B:	.word	100, 200, 300, 400		# Vetor B
C:	.word	450, 666, 20, 780		# Vetor C
D:	.word 	0				# Vetor D
VM:	.word					# Valor Médio
