0000000000002100 <smooth>:
    2100:	endbr64
    2104:	mov    rcx,rdi
    2107:	movsxd rdi,edx
    210a:	vmovss xmm0,DWORD PTR [rcx]
    210e:	vmovss DWORD PTR [rsi],xmm0
    2112:	cmp    edi,0x2
    2115:	jle    24a4 <smooth+0x3a4>
    211b:	lea    eax,[rdi-0x3]
    211e:	lea    r8d,[rdi-0x2]
    2122:	cmp    eax,0xe
    2125:	jbe    250f <smooth+0x40f>
    212b:	vbroadcastss zmm1,DWORD PTR [rip+0x1353]        # 3488 <_IO_stdin_used+0x488>
    2135:	mov    edx,r8d
    2138:	xor    eax,eax
    213a:	shr    edx,0x4
    213d:	shl    rdx,0x6
    2141:	data16 cs nop WORD PTR [rax+rax*1+0x0]
    214c:	nop    DWORD PTR [rax+0x0]
    2150:	vmovups zmm7,ZMMWORD PTR [rcx+rax*1]
    2157:	vaddps zmm0,zmm7,ZMMWORD PTR [rcx+rax*1+0x4]
    2162:	vaddps zmm0,zmm0,ZMMWORD PTR [rcx+rax*1+0x8]
    216d:	vmulps zmm0,zmm0,zmm1
    2173:	vmovups ZMMWORD PTR [rsi+rax*1+0x4],zmm0
    217e:	add    rax,0x40
    2182:	cmp    rax,rdx
    2185:	jne    2150 <smooth+0x50>
    2187:	mov    eax,r8d
    218a:	and    eax,0xfffffff0
    218d:	lea    edx,[rax+0x1]
    2190:	test   r8b,0xf
    2194:	je     24c0 <smooth+0x3c0>
    219a:	mov    r9d,edi
    219d:	sub    r9d,eax
    21a0:	lea    r10d,[r9-0x2]
    21a4:	sub    r9d,0x3
    21a8:	cmp    r9d,0x6
    21ac:	jbe    21e5 <smooth+0xe5>
    21ae:	shl    rax,0x2
    21b2:	vmovups ymm6,YMMWORD PTR [rcx+rax*1+0x8]
    21b8:	vaddps ymm0,ymm6,YMMWORD PTR [rcx+rax*1+0x4]
    21be:	vaddps ymm0,ymm0,YMMWORD PTR [rcx+rax*1]
    21c3:	vmulps ymm0,ymm0,DWORD BCST [rip+0x12bb]        # 3488 <_IO_stdin_used+0x488>
    21cd:	vmovups YMMWORD PTR [rsi+rax*1+0x4],ymm0
    21d3:	mov    eax,r10d
    21d6:	and    eax,0xfffffff8
    21d9:	add    edx,eax
    21db:	and    r10d,0x7
    21df:	je     24c0 <smooth+0x3c0>
    21e5:	movsxd r10,edx
    21e8:	lea    r9d,[rdx+0x1]
    21ec:	lea    rax,[r10*4+0x0]
    21f4:	lea    r11,[rcx+rax*1]
    21f8:	cmp    r9d,r8d
    21fb:	jge    23a0 <smooth+0x2a0>
    2201:	vmovq  xmm3,QWORD PTR [r11]
    2206:	vmovq  xmm0,QWORD PTR [r11-0x4]
    220c:	lea    r9d,[rdx+0x3]
    2210:	lea    r10,[rax+0x8]
    2214:	vmovq  xmm2,QWORD PTR [rcx+rax*1+0x4]
    221a:	vaddps xmm0,xmm0,xmm3
    221e:	vmovshdup xmm1,xmm3
    2222:	vmovq  xmm3,QWORD PTR [rip+0x125e]        # 3488 <_IO_stdin_used+0x488>
    222a:	vmovshdup xmm5,xmm2
    222e:	vaddps xmm0,xmm0,xmm2
    2232:	vmulps xmm0,xmm0,xmm3
    2236:	vmovlps QWORD PTR [rsi+rax*1],xmm0
    223b:	cmp    r8d,r9d
    223e:	jle    24f0 <smooth+0x3f0>
    2244:	lea    r9,[rax+0x10]
    2248:	vmovss xmm0,DWORD PTR [rcx+rax*1+0xc]
    224e:	vmovss xmm4,DWORD PTR [rcx+r9*1]
    2254:	vaddss xmm1,xmm1,xmm0
    2258:	vaddss xmm2,xmm0,xmm4
    225c:	vaddss xmm1,xmm1,xmm5
    2260:	vaddss xmm5,xmm2,xmm5
    2264:	vunpcklps xmm1,xmm1,xmm5
    2268:	vmulps xmm1,xmm1,xmm3
    226c:	vmovlps QWORD PTR [rsi+r10*1],xmm1
    2272:	lea    r10d,[rdx+0x5]
    2276:	cmp    r8d,r10d
    2279:	jle    24d0 <smooth+0x3d0>
    227f:	lea    r10,[rax+0x18]
    2283:	vmovss xmm0,DWORD PTR [rcx+rax*1+0x14]
    2289:	vmovss xmm5,DWORD PTR [rcx+r10*1]
    228f:	vaddss xmm2,xmm2,xmm0
    2293:	vaddss xmm4,xmm4,xmm5
    2297:	vaddss xmm4,xmm4,xmm0
    229b:	vunpcklps xmm2,xmm2,xmm4
    229f:	vmulps xmm2,xmm2,xmm3
    22a3:	vmovlps QWORD PTR [rsi+r9*1],xmm2
    22a9:	lea    r9d,[rdx+0x7]
    22ad:	cmp    r8d,r9d
    22b0:	jle    2500 <smooth+0x400>
    22b6:	vmovss xmm1,DWORD PTR [rcx+rax*1+0x1c]
    22bc:	lea    r9,[rax+0x20]
    22c0:	vmovss xmm4,DWORD PTR [rcx+r9*1]
    22c6:	vaddss xmm0,xmm0,xmm1
    22ca:	vaddss xmm0,xmm0,xmm5
    22ce:	vaddss xmm5,xmm5,xmm4
    22d2:	vaddss xmm5,xmm5,xmm1
    22d6:	vunpcklps xmm0,xmm0,xmm5
    22da:	vmulps xmm0,xmm0,xmm3
    22de:	vmovlps QWORD PTR [rsi+r10*1],xmm0
    22e4:	lea    r10d,[rdx+0x9]
    22e8:	cmp    r8d,r10d
    22eb:	jle    251b <smooth+0x41b>
    22f1:	vmovss xmm2,DWORD PTR [rcx+rax*1+0x24]
    22f7:	lea    r10,[rax+0x28]
    22fb:	vmovss xmm5,DWORD PTR [rcx+r10*1]
    2301:	vaddss xmm1,xmm1,xmm2
    2305:	vaddss xmm0,xmm1,xmm4
    2309:	vaddss xmm4,xmm4,xmm5
    230d:	vaddss xmm4,xmm4,xmm2
    2311:	vunpcklps xmm0,xmm0,xmm4
    2315:	vmulps xmm0,xmm0,xmm3
    2319:	vmovlps QWORD PTR [rsi+r9*1],xmm0
    231f:	lea    r9d,[rdx+0xb]
    2323:	cmp    r8d,r9d
    2326:	jle    24df <smooth+0x3df>
    232c:	lea    r9,[rcx+rax*1+0x2c]
    2331:	vmovss xmm4,DWORD PTR [r9]
    2336:	vmovq  xmm6,QWORD PTR [r9]
    233b:	lea    r9,[rax+0x30]
    233f:	vmovss xmm1,DWORD PTR [rcx+r9*1]
    2345:	vaddss xmm2,xmm2,xmm4
    2349:	vaddss xmm0,xmm2,xmm5
    234d:	vaddss xmm5,xmm5,xmm4
    2351:	vmovshdup xmm2,xmm6
    2355:	vaddss xmm5,xmm5,xmm2
    2359:	vunpcklps xmm0,xmm0,xmm5
    235d:	vmulps xmm0,xmm0,xmm3
    2361:	vmovlps QWORD PTR [rsi+r10*1],xmm0
    2367:	lea    r10d,[rdx+0xd]
    236b:	cmp    r8d,r10d
    236e:	jle    252a <smooth+0x42a>
    2374:	lea    rax,[rcx+rax*1+0x34]
    2379:	add    edx,0xe
    237c:	vmovq  xmm0,QWORD PTR [rax]
    2380:	vinsertps xmm1,xmm1,DWORD PTR [rax],0x10
    2386:	movsxd r10,edx
    2389:	vaddps xmm0,xmm0,xmm6
    238d:	vaddps xmm0,xmm0,xmm1
    2391:	vmulps xmm0,xmm0,xmm3
    2395:	vmovlps QWORD PTR [rsi+r9*1],xmm0
    239b:	lea    r9d,[rdx+0x1]
    239f:	nop
    23a0:	lea    rax,[r10*4+0x0]
    23a8:	vmovss xmm2,DWORD PTR [rip+0x10d8]        # 3488 <_IO_stdin_used+0x488>
    23b0:	lea    r8d,[rdi-0x1]
    23b4:	vmovss xmm3,DWORD PTR [rcx+rax*1+0x4]
    23ba:	vaddss xmm1,xmm3,DWORD PTR [rcx+rax*1-0x4]
    23c0:	vmovss xmm0,DWORD PTR [rcx+rax*1]
    23c5:	vaddss xmm1,xmm1,xmm0
    23c9:	vmulss xmm1,xmm1,xmm2
    23cd:	vmovss DWORD PTR [rsi+rax*1],xmm1
    23d2:	cmp    r8d,r9d
    23d5:	jle    24c0 <smooth+0x3c0>
    23db:	vmovss xmm1,DWORD PTR [rcx+rax*1+0x8]
    23e1:	lea    r10d,[rdx+0x2]
    23e5:	vaddss xmm0,xmm0,xmm1
    23e9:	vaddss xmm0,xmm0,xmm3
    23ed:	vmulss xmm0,xmm0,xmm2
    23f1:	vmovss DWORD PTR [rsi+rax*1+0x4],xmm0
    23f7:	cmp    r8d,r10d
    23fa:	jle    24c0 <smooth+0x3c0>
    2400:	vmovss xmm3,DWORD PTR [rcx+rax*1+0xc]
    2406:	vaddss xmm0,xmm3,DWORD PTR [rcx+rax*1+0x4]
    240c:	lea    r9d,[rdx+0x3]
    2410:	vaddss xmm0,xmm0,xmm1
    2414:	vmulss xmm0,xmm0,xmm2
    2418:	vmovss DWORD PTR [rsi+rax*1+0x8],xmm0
    241e:	cmp    r8d,r9d
    2421:	jle    24c0 <smooth+0x3c0>
    2427:	vmovss xmm4,DWORD PTR [rcx+rax*1+0x10]
    242d:	lea    r10d,[rdx+0x4]
    2431:	vaddss xmm1,xmm1,xmm4
    2435:	vaddss xmm1,xmm1,xmm3
    2439:	vmulss xmm1,xmm1,xmm2
    243d:	vmovss DWORD PTR [rsi+rax*1+0xc],xmm1
    2443:	cmp    r8d,r10d
    2446:	jle    24c0 <smooth+0x3c0>
    2448:	vmovss xmm1,DWORD PTR [rcx+rax*1+0x14]
    244e:	lea    r9d,[rdx+0x5]
    2452:	vaddss xmm0,xmm1,xmm3
    2456:	vaddss xmm0,xmm0,xmm4
    245a:	vmulss xmm0,xmm0,xmm2
    245e:	vmovss DWORD PTR [rsi+rax*1+0x10],xmm0
    2464:	cmp    r8d,r9d
    2467:	jle    24c0 <smooth+0x3c0>
    2469:	vmovss xmm3,DWORD PTR [rcx+rax*1+0x18]
    246f:	add    edx,0x6
    2472:	vaddss xmm0,xmm3,xmm4
    2476:	vaddss xmm0,xmm0,xmm1
    247a:	vmulss xmm0,xmm0,xmm2
    247e:	vmovss DWORD PTR [rsi+rax*1+0x14],xmm0
    2484:	cmp    r8d,edx
    2487:	jle    24c0 <smooth+0x3c0>
    2489:	vmovss xmm0,DWORD PTR [rcx+rax*1+0x1c]
    248f:	vaddss xmm0,xmm0,xmm1
    2493:	vaddss xmm0,xmm0,xmm3
    2497:	vmulss xmm0,xmm0,xmm2
    249b:	vmovss DWORD PTR [rsi+rax*1+0x18],xmm0
    24a1:	vzeroupper
    24a4:	lea    rax,[rdi*4-0x4]
    24ac:	vmovss xmm0,DWORD PTR [rcx+rax*1]
    24b1:	vmovss DWORD PTR [rsi+rax*1],xmm0
    24b6:	ret
    24b7:	nop    WORD PTR [rax+rax*1+0x0]
    24c0:	vzeroupper
    24c3:	jmp    24a4 <smooth+0x3a4>
    24c5:	data16 cs nop WORD PTR [rax+rax*1+0x0]
    24d0:	add    edx,0x4
    24d3:	movsxd r10,edx
    24d6:	lea    r9d,[rdx+0x1]
    24da:	jmp    23a0 <smooth+0x2a0>
    24df:	add    edx,0xa
    24e2:	movsxd r10,edx
    24e5:	lea    r9d,[rdx+0x1]
    24e9:	jmp    23a0 <smooth+0x2a0>
    24ee:	xchg   ax,ax
    24f0:	add    edx,0x2
    24f3:	movsxd r10,edx
    24f6:	lea    r9d,[rdx+0x1]
    24fa:	jmp    23a0 <smooth+0x2a0>
    24ff:	nop
    2500:	add    edx,0x6
    2503:	movsxd r10,edx
    2506:	lea    r9d,[rdx+0x1]
    250a:	jmp    23a0 <smooth+0x2a0>
    250f:	xor    eax,eax
    2511:	mov    edx,0x1
    2516:	jmp    219a <smooth+0x9a>
    251b:	add    edx,0x8
    251e:	movsxd r10,edx
    2521:	lea    r9d,[rdx+0x1]
    2525:	jmp    23a0 <smooth+0x2a0>
    252a:	add    edx,0xc
    252d:	movsxd r10,edx
    2530:	lea    r9d,[rdx+0x1]
    2534:	jmp    23a0 <smooth+0x2a0>

