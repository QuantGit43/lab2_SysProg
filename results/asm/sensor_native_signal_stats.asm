00000000000024f0 <signal_stats>:
    24f0:	endbr64
    24f4:	vmovss xmm2,DWORD PTR [rdi]
    24f8:	test   esi,esi
    24fa:	jle    2550 <signal_stats+0x60>
    24fc:	movsxd rax,esi
    24ff:	vmovaps xmm3,xmm2
    2503:	vxorpd xmm1,xmm1,xmm1
    2507:	lea    rax,[rdi+rax*4]
    250b:	nop    DWORD PTR [rax+rax*1+0x0]
    2510:	vmovss xmm0,DWORD PTR [rdi]
    2514:	add    rdi,0x4
    2518:	vminss xmm2,xmm0,xmm2
    251c:	vmaxss xmm3,xmm0,xmm3
    2520:	vcvtss2sd xmm0,xmm0,xmm0
    2524:	vaddsd xmm1,xmm1,xmm0
    2528:	cmp    rax,rdi
    252b:	jne    2510 <signal_stats+0x20>
    252d:	vmovss DWORD PTR [rdx],xmm2
    2531:	vxorps xmm0,xmm0,xmm0
    2535:	vcvtsi2sd xmm0,xmm0,esi
    2539:	vdivsd xmm1,xmm1,xmm0
    253d:	vmovss DWORD PTR [rcx],xmm3
    2541:	vmovsd QWORD PTR [r8],xmm1
    2546:	ret
    2547:	nop    WORD PTR [rax+rax*1+0x0]
    2550:	vmovaps xmm3,xmm2
    2554:	vxorpd xmm1,xmm1,xmm1
    2558:	jmp    252d <signal_stats+0x3d>

