0000000000001f60 <smooth>:
    1f60:	endbr64
    1f64:	mov    rcx,rdi
    1f67:	movsxd rdi,edx
    1f6a:	vmovss xmm0,DWORD PTR [rcx]
    1f6e:	vmovss DWORD PTR [rsi],xmm0
    1f72:	cmp    edi,0x2
    1f75:	jle    22f4 <smooth+0x394>
    1f7b:	lea    eax,[rdi-0x3]
    1f7e:	lea    r9d,[rdi-0x2]
    1f82:	cmp    eax,0xe
    1f85:	jbe    235f <smooth+0x3ff>
    1f8b:	vbroadcastss zmm1,DWORD PTR [rip+0x1577]        # 350c <_IO_stdin_used+0x50c>
    1f95:	mov    edx,r9d
    1f98:	xor    eax,eax
    1f9a:	shr    edx,0x4
    1f9d:	shl    rdx,0x6
    1fa1:	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1fac:	nop    DWORD PTR [rax+0x0]
    1fb0:	vmovups zmm6,ZMMWORD PTR [rcx+rax*1]
    1fb7:	vaddps zmm0,zmm6,ZMMWORD PTR [rcx+rax*1+0x4]
    1fc2:	vaddps zmm0,zmm0,ZMMWORD PTR [rcx+rax*1+0x8]
    1fcd:	vdivps zmm0,zmm0,zmm1
    1fd3:	vmovups ZMMWORD PTR [rsi+rax*1+0x4],zmm0
    1fde:	add    rax,0x40
    1fe2:	cmp    rax,rdx
    1fe5:	jne    1fb0 <smooth+0x50>
    1fe7:	mov    eax,r9d
    1fea:	and    eax,0xfffffff0
    1fed:	lea    edx,[rax+0x1]
    1ff0:	test   r9b,0xf
    1ff4:	je     2310 <smooth+0x3b0>
    1ffa:	mov    r8d,edi
    1ffd:	sub    r8d,eax
    2000:	lea    r10d,[r8-0x2]
    2004:	sub    r8d,0x3
    2008:	cmp    r8d,0x6
    200c:	jbe    2045 <smooth+0xe5>
    200e:	shl    rax,0x2
    2012:	vmovups ymm7,YMMWORD PTR [rcx+rax*1]
    2017:	vaddps ymm0,ymm7,YMMWORD PTR [rcx+rax*1+0x4]
    201d:	vaddps ymm0,ymm0,YMMWORD PTR [rcx+rax*1+0x8]
    2023:	vdivps ymm0,ymm0,DWORD BCST [rip+0x14df]        # 350c <_IO_stdin_used+0x50c>
    202d:	vmovups YMMWORD PTR [rsi+rax*1+0x4],ymm0
    2033:	mov    eax,r10d
    2036:	and    eax,0xfffffff8
    2039:	add    edx,eax
    203b:	and    r10d,0x7
    203f:	je     2310 <smooth+0x3b0>
    2045:	movsxd r10,edx
    2048:	lea    r8d,[rdx+0x1]
    204c:	lea    rax,[r10*4+0x0]
    2054:	lea    r11,[rcx+rax*1]
    2058:	cmp    r8d,r9d
    205b:	jge    21f0 <smooth+0x290>
    2061:	vmovq  xmm0,QWORD PTR [r11-0x4]
    2067:	vmovq  xmm2,QWORD PTR [r11]
    206c:	vmovaps xmm3,XMMWORD PTR [rip+0x141c]        # 3490 <_IO_stdin_used+0x490>
    2074:	lea    r10,[rax+0x8]
    2078:	vmovq  xmm4,QWORD PTR [rcx+rax*1+0x4]
    207e:	lea    r8d,[rdx+0x3]
    2082:	vmovss xmm1,DWORD PTR [rcx+r10*1]
    2088:	vaddps xmm0,xmm0,xmm2
    208c:	vaddps xmm0,xmm0,xmm4
    2090:	vdivps xmm0,xmm0,xmm3
    2094:	vmovlps QWORD PTR [rsi+rax*1],xmm0
    2099:	cmp    r9d,r8d
    209c:	jle    2340 <smooth+0x3e0>
    20a2:	lea    r8,[rcx+rax*1+0xc]
    20a7:	lea    r11,[rax+0x10]
    20ab:	vinsertps xmm0,xmm1,DWORD PTR [r8],0x10
    20b1:	vmovq  xmm5,QWORD PTR [r8]
    20b6:	lea    r8d,[rdx+0x5]
    20ba:	vmovss xmm2,DWORD PTR [rcx+r11*1]
    20c0:	vaddps xmm0,xmm0,xmm4
    20c4:	vaddps xmm0,xmm0,xmm5
    20c8:	vdivps xmm0,xmm0,xmm3
    20cc:	vmovlps QWORD PTR [rsi+r10*1],xmm0
    20d2:	cmp    r9d,r8d
    20d5:	jle    2320 <smooth+0x3c0>
    20db:	lea    r8,[rcx+rax*1+0x14]
    20e0:	lea    r10,[rax+0x18]
    20e4:	vinsertps xmm0,xmm2,DWORD PTR [r8],0x10
    20ea:	vmovq  xmm4,QWORD PTR [r8]
    20ef:	lea    r8d,[rdx+0x7]
    20f3:	vmovss xmm1,DWORD PTR [rcx+r10*1]
    20f9:	vaddps xmm0,xmm0,xmm5
    20fd:	vaddps xmm0,xmm0,xmm4
    2101:	vdivps xmm0,xmm0,xmm3
    2105:	vmovlps QWORD PTR [rsi+r11*1],xmm0
    210b:	cmp    r9d,r8d
    210e:	jle    2350 <smooth+0x3f0>
    2114:	lea    r8,[rcx+rax*1+0x1c]
    2119:	lea    r11,[rax+0x20]
    211d:	vinsertps xmm0,xmm1,DWORD PTR [r8],0x10
    2123:	vmovq  xmm5,QWORD PTR [r8]
    2128:	lea    r8d,[rdx+0x9]
    212c:	vmovss xmm2,DWORD PTR [rcx+r11*1]
    2132:	vaddps xmm0,xmm0,xmm4
    2136:	vaddps xmm0,xmm0,xmm5
    213a:	vdivps xmm0,xmm0,xmm3
    213e:	vmovlps QWORD PTR [rsi+r10*1],xmm0
    2144:	cmp    r9d,r8d
    2147:	jle    236b <smooth+0x40b>
    214d:	lea    r8,[rcx+rax*1+0x24]
    2152:	lea    r10,[rax+0x28]
    2156:	vinsertps xmm0,xmm2,DWORD PTR [r8],0x10
    215c:	vmovq  xmm4,QWORD PTR [r8]
    2161:	lea    r8d,[rdx+0xb]
    2165:	vmovss xmm1,DWORD PTR [rcx+r10*1]
    216b:	vaddps xmm0,xmm0,xmm5
    216f:	vaddps xmm0,xmm0,xmm4
    2173:	vdivps xmm0,xmm0,xmm3
    2177:	vmovlps QWORD PTR [rsi+r11*1],xmm0
    217d:	cmp    r9d,r8d
    2180:	jle    232f <smooth+0x3cf>
    2186:	lea    r8,[rcx+rax*1+0x2c]
    218b:	lea    r11,[rax+0x30]
    218f:	vinsertps xmm0,xmm1,DWORD PTR [r8],0x10
    2195:	vmovq  xmm5,QWORD PTR [r8]
    219a:	lea    r8d,[rdx+0xd]
    219e:	vmovss xmm2,DWORD PTR [rcx+r11*1]
    21a4:	vaddps xmm0,xmm0,xmm4
    21a8:	vaddps xmm0,xmm0,xmm5
    21ac:	vdivps xmm0,xmm0,xmm3
    21b0:	vmovlps QWORD PTR [rsi+r10*1],xmm0
    21b6:	cmp    r9d,r8d
    21b9:	jle    237a <smooth+0x41a>
    21bf:	vinsertps xmm0,xmm2,DWORD PTR [rcx+rax*1+0x34],0x10
    21c7:	vmovq  xmm1,QWORD PTR [rcx+rax*1+0x34]
    21cd:	add    edx,0xe
    21d0:	movsxd r10,edx
    21d3:	lea    r8d,[rdx+0x1]
    21d7:	vaddps xmm0,xmm0,xmm5
    21db:	vaddps xmm0,xmm0,xmm1
    21df:	vdivps xmm0,xmm0,xmm3
    21e3:	vmovlps QWORD PTR [rsi+r11*1],xmm0
    21e9:	nop    DWORD PTR [rax+0x0]
    21f0:	lea    rax,[r10*4+0x0]
    21f8:	vmovss xmm2,DWORD PTR [rip+0x130c]        # 350c <_IO_stdin_used+0x50c>
    2200:	lea    r9d,[rdi-0x1]
    2204:	vmovss xmm0,DWORD PTR [rcx+rax*1]
    2209:	vaddss xmm1,xmm0,DWORD PTR [rcx+rax*1-0x4]
    220f:	vmovss xmm3,DWORD PTR [rcx+rax*1+0x4]
    2215:	vaddss xmm1,xmm1,xmm3
    2219:	vdivss xmm1,xmm1,xmm2
    221d:	vmovss DWORD PTR [rsi+rax*1],xmm1
    2222:	cmp    r9d,r8d
    2225:	jle    2310 <smooth+0x3b0>
    222b:	vmovss xmm1,DWORD PTR [rcx+rax*1+0x8]
    2231:	vaddss xmm0,xmm0,xmm3
    2235:	lea    r10d,[rdx+0x2]
    2239:	vaddss xmm0,xmm0,xmm1
    223d:	vdivss xmm0,xmm0,xmm2
    2241:	vmovss DWORD PTR [rsi+rax*1+0x4],xmm0
    2247:	cmp    r9d,r10d
    224a:	jle    2310 <smooth+0x3b0>
    2250:	vaddss xmm0,xmm1,DWORD PTR [rcx+rax*1+0x4]
    2256:	vmovss xmm3,DWORD PTR [rcx+rax*1+0xc]
    225c:	lea    r8d,[rdx+0x3]
    2260:	vaddss xmm0,xmm0,xmm3
    2264:	vdivss xmm0,xmm0,xmm2
    2268:	vmovss DWORD PTR [rsi+rax*1+0x8],xmm0
    226e:	cmp    r9d,r8d
    2271:	jle    2310 <smooth+0x3b0>
    2277:	vmovss xmm0,DWORD PTR [rcx+rax*1+0x10]
    227d:	vaddss xmm1,xmm1,xmm3
    2281:	lea    r10d,[rdx+0x4]
    2285:	vaddss xmm1,xmm1,xmm0
    2289:	vdivss xmm1,xmm1,xmm2
    228d:	vmovss DWORD PTR [rsi+rax*1+0xc],xmm1
    2293:	cmp    r9d,r10d
    2296:	jle    2310 <smooth+0x3b0>
    2298:	vmovss xmm1,DWORD PTR [rcx+rax*1+0x14]
    229e:	vaddss xmm0,xmm0,xmm3
    22a2:	lea    r8d,[rdx+0x5]
    22a6:	vaddss xmm0,xmm0,xmm1
    22aa:	vdivss xmm0,xmm0,xmm2
    22ae:	vmovss DWORD PTR [rsi+rax*1+0x10],xmm0
    22b4:	cmp    r9d,r8d
    22b7:	jle    2310 <smooth+0x3b0>
    22b9:	vaddss xmm1,xmm1,DWORD PTR [rcx+rax*1+0x10]
    22bf:	vmovss xmm0,DWORD PTR [rcx+rax*1+0x18]
    22c5:	add    edx,0x6
    22c8:	vaddss xmm1,xmm1,xmm0
    22cc:	vdivss xmm1,xmm1,xmm2
    22d0:	vmovss DWORD PTR [rsi+rax*1+0x14],xmm1
    22d6:	cmp    r9d,edx
    22d9:	jle    2310 <smooth+0x3b0>
    22db:	vaddss xmm0,xmm0,DWORD PTR [rcx+rax*1+0x14]
    22e1:	vaddss xmm0,xmm0,DWORD PTR [rcx+rax*1+0x1c]
    22e7:	vdivss xmm0,xmm0,xmm2
    22eb:	vmovss DWORD PTR [rsi+rax*1+0x18],xmm0
    22f1:	vzeroupper
    22f4:	lea    rax,[rdi*4-0x4]
    22fc:	vmovss xmm0,DWORD PTR [rcx+rax*1]
    2301:	vmovss DWORD PTR [rsi+rax*1],xmm0
    2306:	ret
    2307:	nop    WORD PTR [rax+rax*1+0x0]
    2310:	vzeroupper
    2313:	jmp    22f4 <smooth+0x394>
    2315:	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2320:	add    edx,0x4
    2323:	movsxd r10,edx
    2326:	lea    r8d,[rdx+0x1]
    232a:	jmp    21f0 <smooth+0x290>
    232f:	add    edx,0xa
    2332:	movsxd r10,edx
    2335:	lea    r8d,[rdx+0x1]
    2339:	jmp    21f0 <smooth+0x290>
    233e:	xchg   ax,ax
    2340:	add    edx,0x2
    2343:	movsxd r10,edx
    2346:	lea    r8d,[rdx+0x1]
    234a:	jmp    21f0 <smooth+0x290>
    234f:	nop
    2350:	add    edx,0x6
    2353:	movsxd r10,edx
    2356:	lea    r8d,[rdx+0x1]
    235a:	jmp    21f0 <smooth+0x290>
    235f:	xor    eax,eax
    2361:	mov    edx,0x1
    2366:	jmp    1ffa <smooth+0x9a>
    236b:	add    edx,0x8
    236e:	movsxd r10,edx
    2371:	lea    r8d,[rdx+0x1]
    2375:	jmp    21f0 <smooth+0x290>
    237a:	add    edx,0xc
    237d:	movsxd r10,edx
    2380:	lea    r8d,[rdx+0x1]
    2384:	jmp    21f0 <smooth+0x290>

