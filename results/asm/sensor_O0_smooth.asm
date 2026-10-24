00000000000014fe <smooth>:
    14fe:	endbr64
    1502:	push   rbp
    1503:	mov    rbp,rsp
    1506:	mov    QWORD PTR [rbp-0x18],rdi
    150a:	mov    QWORD PTR [rbp-0x20],rsi
    150e:	mov    DWORD PTR [rbp-0x24],edx
    1511:	mov    rax,QWORD PTR [rbp-0x18]
    1515:	movss  xmm0,DWORD PTR [rax]
    1519:	mov    rax,QWORD PTR [rbp-0x20]
    151d:	movss  DWORD PTR [rax],xmm0
    1521:	mov    DWORD PTR [rbp-0x4],0x1
    1528:	jmp    15a6 <smooth+0xa8>
    152a:	mov    eax,DWORD PTR [rbp-0x4]
    152d:	cdqe
    152f:	shl    rax,0x2
    1533:	lea    rdx,[rax-0x4]
    1537:	mov    rax,QWORD PTR [rbp-0x18]
    153b:	add    rax,rdx
    153e:	movss  xmm1,DWORD PTR [rax]
    1542:	mov    eax,DWORD PTR [rbp-0x4]
    1545:	cdqe
    1547:	lea    rdx,[rax*4+0x0]
    154f:	mov    rax,QWORD PTR [rbp-0x18]
    1553:	add    rax,rdx
    1556:	movss  xmm0,DWORD PTR [rax]
    155a:	addss  xmm1,xmm0
    155e:	mov    eax,DWORD PTR [rbp-0x4]
    1561:	cdqe
    1563:	add    rax,0x1
    1567:	lea    rdx,[rax*4+0x0]
    156f:	mov    rax,QWORD PTR [rbp-0x18]
    1573:	add    rax,rdx
    1576:	movss  xmm0,DWORD PTR [rax]
    157a:	addss  xmm0,xmm1
    157e:	mov    eax,DWORD PTR [rbp-0x4]
    1581:	cdqe
    1583:	lea    rdx,[rax*4+0x0]
    158b:	mov    rax,QWORD PTR [rbp-0x20]
    158f:	add    rax,rdx
    1592:	movss  xmm1,DWORD PTR [rip+0x1eea]        # 3484 <_IO_stdin_used+0x484>
    159a:	divss  xmm0,xmm1
    159e:	movss  DWORD PTR [rax],xmm0
    15a2:	add    DWORD PTR [rbp-0x4],0x1
    15a6:	mov    eax,DWORD PTR [rbp-0x24]
    15a9:	sub    eax,0x1
    15ac:	cmp    DWORD PTR [rbp-0x4],eax
    15af:	jl     152a <smooth+0x2c>
    15b5:	mov    eax,DWORD PTR [rbp-0x24]
    15b8:	cdqe
    15ba:	shl    rax,0x2
    15be:	lea    rdx,[rax-0x4]
    15c2:	mov    rax,QWORD PTR [rbp-0x18]
    15c6:	add    rdx,rax
    15c9:	mov    eax,DWORD PTR [rbp-0x24]
    15cc:	cdqe
    15ce:	shl    rax,0x2
    15d2:	lea    rcx,[rax-0x4]
    15d6:	mov    rax,QWORD PTR [rbp-0x20]
    15da:	add    rax,rcx
    15dd:	movss  xmm0,DWORD PTR [rdx]
    15e1:	movss  DWORD PTR [rax],xmm0
    15e5:	nop
    15e6:	pop    rbp
    15e7:	ret

