0000000000002480 <count_beats>:
    2480:	endbr64
    2484:	test   esi,esi
    2486:	jle    24e0 <count_beats+0x60>
    2488:	vmovss xmm1,DWORD PTR [rip+0xb78]        # 3008 <_IO_stdin_used+0x8>
    2490:	movsxd rsi,esi
    2493:	mov    eax,0x1
    2498:	xor    ecx,ecx
    249a:	lea    rdx,[rdi+rsi*4]
    249e:	xchg   ax,ax
    24a0:	test   eax,eax
    24a2:	je     24cb <count_beats+0x4b>
    24a4:	vmovss xmm0,DWORD PTR [rdi]
    24a8:	vcomiss xmm0,DWORD PTR [rip+0xb68]        # 3018 <_IO_stdin_used+0x18>
    24b0:	ja     24c0 <count_beats+0x40>
    24b2:	add    rdi,0x4
    24b6:	cmp    rdi,rdx
    24b9:	jne    24a4 <count_beats+0x24>
    24bb:	mov    eax,ecx
    24bd:	ret
    24be:	xchg   ax,ax
    24c0:	add    rdi,0x4
    24c4:	inc    ecx
    24c6:	cmp    rdx,rdi
    24c9:	je     24bb <count_beats+0x3b>
    24cb:	xor    eax,eax
    24cd:	vcomiss xmm1,DWORD PTR [rdi]
    24d1:	seta   al
    24d4:	add    rdi,0x4
    24d8:	cmp    rdi,rdx
    24db:	jne    24a0 <count_beats+0x20>
    24dd:	mov    eax,ecx
    24df:	ret
    24e0:	xor    ecx,ecx
    24e2:	mov    eax,ecx
    24e4:	ret

