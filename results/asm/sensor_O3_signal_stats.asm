0000000000002220 <signal_stats>:
    2220:	endbr64
    2224:	movss  xmm2,DWORD PTR [rdi]
    2228:	test   esi,esi
    222a:	jle    2288 <signal_stats+0x68>
    222c:	movsxd rax,esi
    222f:	movaps xmm3,xmm2
    2232:	pxor   xmm1,xmm1
    2236:	lea    rax,[rdi+rax*4]
    223a:	nop    WORD PTR [rax+rax*1+0x0]
    2240:	movss  xmm0,DWORD PTR [rdi]
    2244:	add    rdi,0x4
    2248:	movaps xmm4,xmm0
    224b:	movaps xmm5,xmm0
    224e:	cvtss2sd xmm0,xmm0
    2252:	addsd  xmm1,xmm0
    2256:	minss  xmm4,xmm2
    225a:	maxss  xmm5,xmm3
    225e:	movaps xmm2,xmm4
    2261:	movaps xmm3,xmm5
    2264:	cmp    rax,rdi
    2267:	jne    2240 <signal_stats+0x20>
    2269:	pxor   xmm0,xmm0
    226d:	movss  DWORD PTR [rdx],xmm2
    2271:	cvtsi2sd xmm0,esi
    2275:	movss  DWORD PTR [rcx],xmm3
    2279:	divsd  xmm1,xmm0
    227d:	movsd  QWORD PTR [r8],xmm1
    2282:	ret
    2283:	nop    DWORD PTR [rax+rax*1+0x0]
    2288:	movaps xmm3,xmm2
    228b:	pxor   xmm1,xmm1
    228f:	jmp    2269 <signal_stats+0x49>

