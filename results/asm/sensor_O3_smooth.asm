0000000000001fc0 <smooth>:
    1fc0:	endbr64
    1fc4:	mov    rax,rdi
    1fc7:	movsxd rdi,edx
    1fca:	mov    rcx,rsi
    1fcd:	movss  xmm0,DWORD PTR [rax]
    1fd1:	movss  DWORD PTR [rsi],xmm0
    1fd5:	cmp    edi,0x2
    1fd8:	jle    20b5 <smooth+0xf5>
    1fde:	lea    edx,[rdi-0x3]
    1fe1:	lea    esi,[rdi-0x2]
    1fe4:	cmp    edx,0x2
    1fe7:	jbe    20c6 <smooth+0x106>
    1fed:	mov    r8d,esi
    1ff0:	movss  xmm1,DWORD PTR [rip+0x1498]        # 3490 <_IO_stdin_used+0x490>
    1ff8:	xor    edx,edx
    1ffa:	shr    r8d,0x2
    1ffe:	shl    r8,0x4
    2002:	shufps xmm1,xmm1,0x0
    2006:	cs nop WORD PTR [rax+rax*1+0x0]
    2010:	movups xmm0,XMMWORD PTR [rax+rdx*1]
    2014:	movups xmm2,XMMWORD PTR [rax+rdx*1+0x4]
    2019:	movups xmm3,XMMWORD PTR [rax+rdx*1+0x8]
    201e:	addps  xmm0,xmm2
    2021:	addps  xmm0,xmm3
    2024:	divps  xmm0,xmm1
    2027:	movups XMMWORD PTR [rcx+rdx*1+0x4],xmm0
    202c:	add    rdx,0x10
    2030:	cmp    rdx,r8
    2033:	jne    2010 <smooth+0x50>
    2035:	test   sil,0x3
    2039:	je     20b5 <smooth+0xf5>
    203b:	and    esi,0xfffffffc
    203e:	lea    edx,[rsi+0x1]
    2041:	mov    r8d,edi
    2044:	sub    r8d,esi
    2047:	lea    r9d,[r8-0x2]
    204b:	cmp    r8d,0x3
    204f:	je     208c <smooth+0xcc>
    2051:	lea    r8,[rsi*4+0x0]
    2059:	movq   xmm0,QWORD PTR [rax+rsi*4]
    205e:	movq   xmm1,QWORD PTR [rax+r8*1+0x4]
    2065:	addps  xmm0,xmm1
    2068:	movq   xmm1,QWORD PTR [rax+r8*1+0x8]
    206f:	addps  xmm0,xmm1
    2072:	divps  xmm0,XMMWORD PTR [rip+0x1417]        # 3490 <_IO_stdin_used+0x490>
    2079:	movlps QWORD PTR [rcx+r8*1+0x4],xmm0
    207f:	test   r9b,0x1
    2083:	je     20b5 <smooth+0xf5>
    2085:	and    r9d,0xfffffffe
    2089:	add    edx,r9d
    208c:	movsxd rdx,edx
    208f:	lea    rsi,[rdx*4+0x0]
    2097:	movss  xmm0,DWORD PTR [rax+rsi*1-0x4]
    209d:	addss  xmm0,DWORD PTR [rax+rdx*4]
    20a2:	addss  xmm0,DWORD PTR [rax+rsi*1+0x4]
    20a8:	divss  xmm0,DWORD PTR [rip+0x13e0]        # 3490 <_IO_stdin_used+0x490>
    20b0:	movss  DWORD PTR [rcx+rdx*4],xmm0
    20b5:	shl    rdi,0x2
    20b9:	movss  xmm0,DWORD PTR [rax+rdi*1-0x4]
    20bf:	movss  DWORD PTR [rcx+rdi*1-0x4],xmm0
    20c5:	ret
    20c6:	xor    esi,esi
    20c8:	mov    edx,0x1
    20cd:	jmp    2041 <smooth+0x81>

