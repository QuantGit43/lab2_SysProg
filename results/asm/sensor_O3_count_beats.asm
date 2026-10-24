00000000000021b0 <count_beats>:
    21b0:	endbr64
    21b4:	test   esi,esi
    21b6:	jle    2210 <count_beats+0x60>
    21b8:	movsxd rsi,esi
    21bb:	movss  xmm1,DWORD PTR [rip+0xe55]        # 3018 <_IO_stdin_used+0x18>
    21c3:	mov    eax,0x1
    21c8:	xor    ecx,ecx
    21ca:	lea    rdx,[rdi+rsi*4]
    21ce:	xchg   ax,ax
    21d0:	test   eax,eax
    21d2:	je     21fc <count_beats+0x4c>
    21d4:	movss  xmm0,DWORD PTR [rdi]
    21d8:	comiss xmm0,DWORD PTR [rip+0xe29]        # 3008 <_IO_stdin_used+0x8>
    21df:	ja     21f0 <count_beats+0x40>
    21e1:	add    rdi,0x4
    21e5:	cmp    rdi,rdx
    21e8:	jne    21d4 <count_beats+0x24>
    21ea:	mov    eax,ecx
    21ec:	ret
    21ed:	nop    DWORD PTR [rax]
    21f0:	add    rdi,0x4
    21f4:	add    ecx,0x1
    21f7:	cmp    rdx,rdi
    21fa:	je     21ea <count_beats+0x3a>
    21fc:	xor    eax,eax
    21fe:	comiss xmm1,DWORD PTR [rdi]
    2201:	seta   al
    2204:	add    rdi,0x4
    2208:	cmp    rdi,rdx
    220b:	jne    21d0 <count_beats+0x20>
    220d:	mov    eax,ecx
    220f:	ret
    2210:	xor    ecx,ecx
    2212:	mov    eax,ecx
    2214:	ret

