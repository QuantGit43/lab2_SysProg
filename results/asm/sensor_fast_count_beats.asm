0000000000002630 <count_beats>:
    2630:	endbr64
    2634:	test   esi,esi
    2636:	jle    26a0 <count_beats+0x70>
    2638:	movsxd rsi,esi
    263b:	mov    eax,0x1
    2640:	xor    ecx,ecx
    2642:	lea    rdx,[rdi+rsi*4]
    2646:	cs nop WORD PTR [rax+rax*1+0x0]
    2650:	test   eax,eax
    2652:	je     267b <count_beats+0x4b>
    2654:	vmovss xmm0,DWORD PTR [rdi]
    2658:	vcomiss xmm0,DWORD PTR [rip+0x9b4]        # 3014 <_IO_stdin_used+0x14>
    2660:	ja     2670 <count_beats+0x40>
    2662:	add    rdi,0x4
    2666:	cmp    rdi,rdx
    2669:	jne    2654 <count_beats+0x24>
    266b:	mov    eax,ecx
    266d:	ret
    266e:	xchg   ax,ax
    2670:	add    rdi,0x4
    2674:	inc    ecx
    2676:	cmp    rdx,rdi
    2679:	je     266b <count_beats+0x3b>
    267b:	xor    eax,eax
    267d:	vmovss xmm0,DWORD PTR [rdi]
    2681:	vcomiss xmm0,DWORD PTR [rip+0x97f]        # 3008 <_IO_stdin_used+0x8>
    2689:	setb   al
    268c:	add    rdi,0x4
    2690:	cmp    rdi,rdx
    2693:	jne    2650 <count_beats+0x20>
    2695:	mov    eax,ecx
    2697:	ret
    2698:	nop    DWORD PTR [rax+rax*1+0x0]
    26a0:	xor    ecx,ecx
    26a2:	mov    eax,ecx
    26a4:	ret

