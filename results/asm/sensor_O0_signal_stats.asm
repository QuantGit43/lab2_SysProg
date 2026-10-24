0000000000001703 <signal_stats>:
    1703:	endbr64
    1707:	push   rbp
    1708:	mov    rbp,rsp
    170b:	mov    QWORD PTR [rbp-0x28],rdi
    170f:	mov    DWORD PTR [rbp-0x2c],esi
    1712:	mov    QWORD PTR [rbp-0x38],rdx
    1716:	mov    QWORD PTR [rbp-0x40],rcx
    171a:	mov    QWORD PTR [rbp-0x48],r8
    171e:	mov    rax,QWORD PTR [rbp-0x28]
    1722:	movss  xmm0,DWORD PTR [rax]
    1726:	movss  DWORD PTR [rbp-0x14],xmm0
    172b:	mov    rax,QWORD PTR [rbp-0x28]
    172f:	movss  xmm0,DWORD PTR [rax]
    1733:	movss  DWORD PTR [rbp-0x10],xmm0
    1738:	pxor   xmm0,xmm0
    173c:	movsd  QWORD PTR [rbp-0x8],xmm0
    1741:	mov    DWORD PTR [rbp-0xc],0x0
    1748:	jmp    17f5 <signal_stats+0xf2>
    174d:	mov    eax,DWORD PTR [rbp-0xc]
    1750:	cdqe
    1752:	lea    rdx,[rax*4+0x0]
    175a:	mov    rax,QWORD PTR [rbp-0x28]
    175e:	add    rax,rdx
    1761:	movss  xmm1,DWORD PTR [rax]
    1765:	movss  xmm0,DWORD PTR [rbp-0x14]
    176a:	comiss xmm0,xmm1
    176d:	jbe    178c <signal_stats+0x89>
    176f:	mov    eax,DWORD PTR [rbp-0xc]
    1772:	cdqe
    1774:	lea    rdx,[rax*4+0x0]
    177c:	mov    rax,QWORD PTR [rbp-0x28]
    1780:	add    rax,rdx
    1783:	movss  xmm0,DWORD PTR [rax]
    1787:	movss  DWORD PTR [rbp-0x14],xmm0
    178c:	mov    eax,DWORD PTR [rbp-0xc]
    178f:	cdqe
    1791:	lea    rdx,[rax*4+0x0]
    1799:	mov    rax,QWORD PTR [rbp-0x28]
    179d:	add    rax,rdx
    17a0:	movss  xmm0,DWORD PTR [rax]
    17a4:	comiss xmm0,DWORD PTR [rbp-0x10]
    17a8:	jbe    17c7 <signal_stats+0xc4>
    17aa:	mov    eax,DWORD PTR [rbp-0xc]
    17ad:	cdqe
    17af:	lea    rdx,[rax*4+0x0]
    17b7:	mov    rax,QWORD PTR [rbp-0x28]
    17bb:	add    rax,rdx
    17be:	movss  xmm0,DWORD PTR [rax]
    17c2:	movss  DWORD PTR [rbp-0x10],xmm0
    17c7:	mov    eax,DWORD PTR [rbp-0xc]
    17ca:	cdqe
    17cc:	lea    rdx,[rax*4+0x0]
    17d4:	mov    rax,QWORD PTR [rbp-0x28]
    17d8:	add    rax,rdx
    17db:	movss  xmm0,DWORD PTR [rax]
    17df:	cvtss2sd xmm0,xmm0
    17e3:	movsd  xmm1,QWORD PTR [rbp-0x8]
    17e8:	addsd  xmm0,xmm1
    17ec:	movsd  QWORD PTR [rbp-0x8],xmm0
    17f1:	add    DWORD PTR [rbp-0xc],0x1
    17f5:	mov    eax,DWORD PTR [rbp-0xc]
    17f8:	cmp    eax,DWORD PTR [rbp-0x2c]
    17fb:	jl     174d <signal_stats+0x4a>
    1801:	mov    rax,QWORD PTR [rbp-0x38]
    1805:	movss  xmm0,DWORD PTR [rbp-0x14]
    180a:	movss  DWORD PTR [rax],xmm0
    180e:	mov    rax,QWORD PTR [rbp-0x40]
    1812:	movss  xmm0,DWORD PTR [rbp-0x10]
    1817:	movss  DWORD PTR [rax],xmm0
    181b:	pxor   xmm1,xmm1
    181f:	cvtsi2sd xmm1,DWORD PTR [rbp-0x2c]
    1824:	movsd  xmm0,QWORD PTR [rbp-0x8]
    1829:	divsd  xmm0,xmm1
    182d:	mov    rax,QWORD PTR [rbp-0x48]
    1831:	movsd  QWORD PTR [rax],xmm0
    1835:	nop
    1836:	pop    rbp
    1837:	ret

