00000000000026b0 <signal_stats>:
    26b0:	endbr64
    26b4:	vmovss xmm2,DWORD PTR [rdi]
    26b8:	mov    r9,rdx
    26bb:	test   esi,esi
    26bd:	jle    2960 <signal_stats+0x2b0>
    26c3:	lea    eax,[rsi-0x1]
    26c6:	cmp    eax,0xe
    26c9:	jbe    296a <signal_stats+0x2ba>
    26cf:	mov    edx,esi
    26d1:	vbroadcastss zmm1,xmm2
    26d7:	mov    rax,rdi
    26da:	vxorpd xmm8,xmm8,xmm8
    26df:	shr    edx,0x4
    26e2:	vmovaps zmm3,zmm1
    26e8:	shl    rdx,0x6
    26ec:	add    rdx,rdi
    26ef:	nop
    26f0:	vmovups zmm7,ZMMWORD PTR [rax]
    26f6:	vcvtps2pd zmm4,YMMWORD PTR [rax]
    26fc:	vminps zmm1,zmm1,ZMMWORD PTR [rax]
    2702:	add    rax,0x40
    2706:	vmaxps zmm3,zmm3,ZMMWORD PTR [rax-0x40]
    270d:	vextractf32x8 ymm0,zmm7,0x1
    2714:	vcvtps2pd zmm0,ymm0
    271a:	vaddpd zmm0,zmm4,zmm0
    2720:	vaddpd zmm8,zmm8,zmm0
    2726:	cmp    rdx,rax
    2729:	jne    26f0 <signal_stats+0x40>
    272b:	vextractf64x4 ymm9,zmm8,0x1
    2732:	mov    eax,esi
    2734:	vextractf32x8 ymm4,zmm3,0x1
    273b:	vaddpd ymm0,ymm9,ymm8
    2740:	and    eax,0xfffffff0
    2743:	vmaxps ymm2,ymm4,ymm3
    2747:	vextractf32x8 ymm10,zmm1,0x1
    274e:	mov    edx,eax
    2750:	vmaxps ymm3,ymm3,ymm4
    2754:	vaddpd ymm4,ymm8,ymm9
    2759:	vextractf64x2 xmm5,ymm0,0x1
    2760:	vaddpd xmm5,xmm5,xmm0
    2764:	vextractf128 xmm6,ymm2,0x1
    276a:	vmaxps xmm6,xmm6,xmm2
    276e:	vunpckhpd xmm0,xmm5,xmm5
    2772:	vaddpd xmm0,xmm0,xmm5
    2776:	vmovhlps xmm5,xmm6,xmm6
    277a:	vmaxps xmm5,xmm5,xmm6
    277e:	vshufps xmm2,xmm5,xmm5,0x55
    2783:	vmaxps xmm2,xmm2,xmm5
    2787:	vmovaps xmm7,xmm2
    278b:	vminps ymm2,ymm10,ymm1
    278f:	vminps ymm1,ymm1,ymm10
    2794:	vextractf128 xmm6,ymm2,0x1
    279a:	vminps xmm6,xmm6,xmm2
    279e:	vmovhlps xmm5,xmm6,xmm6
    27a2:	vminps xmm5,xmm5,xmm6
    27a6:	vshufps xmm6,xmm5,xmm5,0x55
    27ab:	vminps xmm5,xmm6,xmm5
    27af:	vmovaps xmm2,xmm5
    27b3:	cmp    esi,eax
    27b5:	je     2940 <signal_stats+0x290>
    27bb:	mov    r10d,esi
    27be:	sub    r10d,edx
    27c1:	lea    r11d,[r10-0x1]
    27c5:	cmp    r11d,0x6
    27c9:	jbe    2851 <signal_stats+0x1a1>
    27cf:	vmovups ymm0,YMMWORD PTR [rdi+rdx*4]
    27d4:	mov    edx,r10d
    27d7:	and    edx,0xfffffff8
    27da:	add    eax,edx
    27dc:	and    r10d,0x7
    27e0:	vmaxps ymm2,ymm3,ymm0
    27e4:	vminps ymm1,ymm1,ymm0
    27e8:	vcvtps2pd ymm3,xmm0
    27ec:	vextractf128 xmm0,ymm0,0x1
    27f2:	vcvtps2pd ymm0,xmm0
    27f6:	vaddpd ymm0,ymm3,ymm0
    27fa:	vaddpd ymm0,ymm0,ymm4
    27fe:	vextractf64x2 xmm3,ymm0,0x1
    2805:	vaddpd xmm3,xmm3,xmm0
    2809:	vunpckhpd xmm0,xmm3,xmm3
    280d:	vaddpd xmm0,xmm0,xmm3
    2811:	vextractf128 xmm3,ymm2,0x1
    2817:	vmaxps xmm3,xmm3,xmm2
    281b:	vmovhlps xmm2,xmm3,xmm3
    281f:	vmaxps xmm2,xmm2,xmm3
    2823:	vshufps xmm3,xmm2,xmm2,0x55
    2828:	vmaxps xmm2,xmm3,xmm2
    282c:	vmovaps xmm7,xmm2
    2830:	vextractf128 xmm2,ymm1,0x1
    2836:	vminps xmm2,xmm2,xmm1
    283a:	vmovhlps xmm1,xmm2,xmm2
    283e:	vminps xmm1,xmm1,xmm2
    2842:	vshufps xmm2,xmm1,xmm1,0x55
    2847:	vminps xmm2,xmm2,xmm1
    284b:	je     2940 <signal_stats+0x290>
    2851:	movsxd rdx,eax
    2854:	lea    r10d,[rax+0x1]
    2858:	shl    rdx,0x2
    285c:	vmovss xmm1,DWORD PTR [rdi+rdx*1]
    2861:	vminss xmm2,xmm2,xmm1
    2865:	vmaxss xmm7,xmm7,xmm1
    2869:	vcvtss2sd xmm1,xmm1,xmm1
    286d:	vaddsd xmm0,xmm0,xmm1
    2871:	cmp    esi,r10d
    2874:	jle    2940 <signal_stats+0x290>
    287a:	vmovss xmm1,DWORD PTR [rdi+rdx*1+0x4]
    2880:	lea    r10d,[rax+0x2]
    2884:	vminss xmm2,xmm2,xmm1
    2888:	vmaxss xmm7,xmm7,xmm1
    288c:	vcvtss2sd xmm1,xmm1,xmm1
    2890:	vaddsd xmm0,xmm0,xmm1
    2894:	cmp    esi,r10d
    2897:	jle    2940 <signal_stats+0x290>
    289d:	vmovss xmm1,DWORD PTR [rdi+rdx*1+0x8]
    28a3:	lea    r10d,[rax+0x3]
    28a7:	vminss xmm2,xmm2,xmm1
    28ab:	vmaxss xmm7,xmm7,xmm1
    28af:	vcvtss2sd xmm1,xmm1,xmm1
    28b3:	vaddsd xmm0,xmm0,xmm1
    28b7:	cmp    esi,r10d
    28ba:	jle    2940 <signal_stats+0x290>
    28c0:	vmovss xmm1,DWORD PTR [rdi+rdx*1+0xc]
    28c6:	lea    r10d,[rax+0x4]
    28ca:	vminss xmm2,xmm2,xmm1
    28ce:	vmaxss xmm7,xmm7,xmm1
    28d2:	vcvtss2sd xmm1,xmm1,xmm1
    28d6:	vaddsd xmm0,xmm0,xmm1
    28da:	cmp    esi,r10d
    28dd:	jle    2940 <signal_stats+0x290>
    28df:	vmovss xmm1,DWORD PTR [rdi+rdx*1+0x10]
    28e5:	lea    r10d,[rax+0x5]
    28e9:	vminss xmm2,xmm2,xmm1
    28ed:	vmaxss xmm7,xmm7,xmm1
    28f1:	vcvtss2sd xmm1,xmm1,xmm1
    28f5:	vaddsd xmm0,xmm0,xmm1
    28f9:	cmp    esi,r10d
    28fc:	jle    2940 <signal_stats+0x290>
    28fe:	vmovss xmm1,DWORD PTR [rdi+rdx*1+0x14]
    2904:	add    eax,0x6
    2907:	vminss xmm2,xmm2,xmm1
    290b:	vmaxss xmm7,xmm7,xmm1
    290f:	vcvtss2sd xmm1,xmm1,xmm1
    2913:	vaddsd xmm0,xmm0,xmm1
    2917:	cmp    esi,eax
    2919:	jle    2940 <signal_stats+0x290>
    291b:	vmovss xmm1,DWORD PTR [rdi+rdx*1+0x18]
    2921:	vminss xmm2,xmm2,xmm1
    2925:	vmaxss xmm7,xmm7,xmm1
    2929:	vcvtss2sd xmm1,xmm1,xmm1
    292d:	vaddsd xmm0,xmm0,xmm1
    2931:	vzeroupper
    2934:	jmp    2943 <signal_stats+0x293>
    2936:	cs nop WORD PTR [rax+rax*1+0x0]
    2940:	vzeroupper
    2943:	vmovss DWORD PTR [r9],xmm2
    2948:	vxorps xmm1,xmm1,xmm1
    294c:	vcvtsi2sd xmm1,xmm1,esi
    2950:	vdivsd xmm0,xmm0,xmm1
    2954:	vmovss DWORD PTR [rcx],xmm7
    2958:	vmovsd QWORD PTR [r8],xmm0
    295d:	ret
    295e:	xchg   ax,ax
    2960:	vmovaps xmm7,xmm2
    2964:	vxorpd xmm0,xmm0,xmm0
    2968:	jmp    2943 <signal_stats+0x293>
    296a:	vbroadcastss ymm1,xmm2
    296f:	vmovaps xmm7,xmm2
    2973:	xor    edx,edx
    2975:	xor    eax,eax
    2977:	vmovaps ymm3,ymm1
    297b:	vxorpd xmm4,xmm4,xmm4
    297f:	vxorpd xmm0,xmm0,xmm0
    2983:	jmp    27bb <signal_stats+0x10b>

