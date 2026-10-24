0000000000001666 <count_beats>:
    1666:	endbr64
    166a:	push   rbp
    166b:	mov    rbp,rsp
    166e:	mov    QWORD PTR [rbp-0x18],rdi
    1672:	mov    DWORD PTR [rbp-0x1c],esi
    1675:	mov    DWORD PTR [rbp-0xc],0x0
    167c:	mov    DWORD PTR [rbp-0x8],0x1
    1683:	mov    DWORD PTR [rbp-0x4],0x0
    168a:	jmp    16f6 <count_beats+0x90>
    168c:	cmp    DWORD PTR [rbp-0x8],0x0
    1690:	je     16c0 <count_beats+0x5a>
    1692:	mov    eax,DWORD PTR [rbp-0x4]
    1695:	cdqe
    1697:	lea    rdx,[rax*4+0x0]
    169f:	mov    rax,QWORD PTR [rbp-0x18]
    16a3:	add    rax,rdx
    16a6:	movss  xmm0,DWORD PTR [rax]
    16aa:	comiss xmm0,DWORD PTR [rip+0x1dc3]        # 3474 <_IO_stdin_used+0x474>
    16b1:	jbe    16c0 <count_beats+0x5a>
    16b3:	add    DWORD PTR [rbp-0xc],0x1
    16b7:	mov    DWORD PTR [rbp-0x8],0x0
    16be:	jmp    16f2 <count_beats+0x8c>
    16c0:	cmp    DWORD PTR [rbp-0x8],0x0
    16c4:	jne    16f2 <count_beats+0x8c>
    16c6:	mov    eax,DWORD PTR [rbp-0x4]
    16c9:	cdqe
    16cb:	lea    rdx,[rax*4+0x0]
    16d3:	mov    rax,QWORD PTR [rbp-0x18]
    16d7:	add    rax,rdx
    16da:	movss  xmm1,DWORD PTR [rax]
    16de:	movss  xmm0,DWORD PTR [rip+0x1da2]        # 3488 <_IO_stdin_used+0x488>
    16e6:	comiss xmm0,xmm1
    16e9:	jbe    16f2 <count_beats+0x8c>
    16eb:	mov    DWORD PTR [rbp-0x8],0x1
    16f2:	add    DWORD PTR [rbp-0x4],0x1
    16f6:	mov    eax,DWORD PTR [rbp-0x4]
    16f9:	cmp    eax,DWORD PTR [rbp-0x1c]
    16fc:	jl     168c <count_beats+0x26>
    16fe:	mov    eax,DWORD PTR [rbp-0xc]
    1701:	pop    rbp
    1702:	ret

