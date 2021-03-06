
# qhasm: int64 counter 

# qhasm: int64 a0      

# qhasm: int64 a51     

# qhasm: int64 a102    

# qhasm: int64 a153    

# qhasm: int64 a204    

# qhasm: int64 b0      

# qhasm: int64 b51     

# qhasm: int64 b102    

# qhasm: int64 b153    

# qhasm: int64 b204    

# qhasm: int6464 c0    

# qhasm: int6464 c51   

# qhasm: int6464 c102  

# qhasm: int6464 c153  

# qhasm: int6464 c204  

# qhasm: int6464 d0    

# qhasm: int6464 d51   

# qhasm: int6464 d102  

# qhasm: int6464 d153  

# qhasm: int6464 d204  

# qhasm: int6464 e0    

# qhasm: int6464 e51   

# qhasm: int6464 e102  

# qhasm: int6464 e153  

# qhasm: int6464 e204  

# qhasm: int64 rax

# qhasm: int64 rdx

# qhasm: int64 mask

# qhasm: int64 high

# qhasm: int64 low

# qhasm: int64 scal

# qhasm: int64 overflow

# qhasm: int64 a153M19

# qhasm: int64 a204M19

# qhasm: int64 b153M19

# qhasm: int64 b204M19

# qhasm: int64 c51M19

# qhasm: int64 c102M19

# qhasm: int64 c153M19

# qhasm: int64 c204M19

# qhasm: enter scalBtoA local
.text
.p2align 5
_scalBtoA:
scalBtoA:

# qhasm:   b0   = register 11

# qhasm:   b51  = register 12

# qhasm:   b102 = register 13

# qhasm:   b153 = register 14

# qhasm:   b204 = register 15

# qhasm:   counter = register 4

# qhasm:   mask = 0x7ffffffffffff
# asm 1: mov  $0x7ffffffffffff,>mask=int64#2
# asm 2: mov  $0x7ffffffffffff,>mask=%rsi
mov  $0x7ffffffffffff,%rsi

# qhasm:   scal = 121665
# asm 1: mov  $121665,>scal=int64#10
# asm 2: mov  $121665,>scal=%r12
mov  $121665,%r12

# qhasm:   assign 10 to scal

# qhasm:   rax = b0
# asm 1: mov  <b0=int64#11,>rax=int64#7
# asm 2: mov  <b0=%r13,>rax=%rax
mov  %r13,%rax

# qhasm:   (int128) rdx rax = rax * scal
# asm 1: imul <scal=int64#10
# asm 2: imul <scal=%r12
imul %r12

# qhasm:   rdx = (rdx.rax) << 13
# asm 1: shld $13,<rax=int64#7,<rdx=int64#3
# asm 2: shld $13,<rax=%rax,<rdx=%rdx
shld $13,%rax,%rdx

# qhasm:   rax &= mask
# asm 1: and  <mask=int64#2,<rax=int64#7
# asm 2: and  <mask=%rsi,<rax=%rax
and  %rsi,%rax

# qhasm:   a0 = rax
# asm 1: mov  <rax=int64#7,>a0=int64#6
# asm 2: mov  <rax=%rax,>a0=%r9
mov  %rax,%r9

# qhasm:   overflow = rdx
# asm 1: mov  <rdx=int64#3,>overflow=int64#1
# asm 2: mov  <rdx=%rdx,>overflow=%rdi
mov  %rdx,%rdi

# qhasm:   rax = b51
# asm 1: mov  <b51=int64#12,>rax=int64#7
# asm 2: mov  <b51=%r14,>rax=%rax
mov  %r14,%rax

# qhasm:   (int128) rdx rax = rax * scal
# asm 1: imul <scal=int64#10
# asm 2: imul <scal=%r12
imul %r12

# qhasm:   rdx = (rdx.rax) << 13
# asm 1: shld $13,<rax=int64#7,<rdx=int64#3
# asm 2: shld $13,<rax=%rax,<rdx=%rdx
shld $13,%rax,%rdx

# qhasm:   rax &= mask
# asm 1: and  <mask=int64#2,<rax=int64#7
# asm 2: and  <mask=%rsi,<rax=%rax
and  %rsi,%rax

# qhasm:   a51 = rax + overflow
# asm 1: lea  (<rax=int64#7,<overflow=int64#1),>a51=int64#1
# asm 2: lea  (<rax=%rax,<overflow=%rdi),>a51=%rdi
lea  (%rax,%rdi),%rdi

# qhasm:   overflow = rdx
# asm 1: mov  <rdx=int64#3,>overflow=int64#5
# asm 2: mov  <rdx=%rdx,>overflow=%r8
mov  %rdx,%r8

# qhasm:   rax = b102
# asm 1: mov  <b102=int64#13,>rax=int64#7
# asm 2: mov  <b102=%r15,>rax=%rax
mov  %r15,%rax

# qhasm:   (int128) rdx rax = rax * scal
# asm 1: imul <scal=int64#10
# asm 2: imul <scal=%r12
imul %r12

# qhasm:   rdx = (rdx.rax) << 13
# asm 1: shld $13,<rax=int64#7,<rdx=int64#3
# asm 2: shld $13,<rax=%rax,<rdx=%rdx
shld $13,%rax,%rdx

# qhasm:   rax &= mask
# asm 1: and  <mask=int64#2,<rax=int64#7
# asm 2: and  <mask=%rsi,<rax=%rax
and  %rsi,%rax

# qhasm:   a102 = rax + overflow
# asm 1: lea  (<rax=int64#7,<overflow=int64#5),>a102=int64#8
# asm 2: lea  (<rax=%rax,<overflow=%r8),>a102=%r10
lea  (%rax,%r8),%r10

# qhasm:   overflow = rdx
# asm 1: mov  <rdx=int64#3,>overflow=int64#5
# asm 2: mov  <rdx=%rdx,>overflow=%r8
mov  %rdx,%r8

# qhasm:   rax = b153
# asm 1: mov  <b153=int64#14,>rax=int64#7
# asm 2: mov  <b153=%rbx,>rax=%rax
mov  %rbx,%rax

# qhasm:   (int128) rdx rax = rax * scal
# asm 1: imul <scal=int64#10
# asm 2: imul <scal=%r12
imul %r12

# qhasm:   rdx = (rdx.rax) << 13
# asm 1: shld $13,<rax=int64#7,<rdx=int64#3
# asm 2: shld $13,<rax=%rax,<rdx=%rdx
shld $13,%rax,%rdx

# qhasm:   rax &= mask
# asm 1: and  <mask=int64#2,<rax=int64#7
# asm 2: and  <mask=%rsi,<rax=%rax
and  %rsi,%rax

# qhasm:   a153 = rax + overflow
# asm 1: lea  (<rax=int64#7,<overflow=int64#5),>a153=int64#9
# asm 2: lea  (<rax=%rax,<overflow=%r8),>a153=%r11
lea  (%rax,%r8),%r11

# qhasm:   overflow = rdx
# asm 1: mov  <rdx=int64#3,>overflow=int64#5
# asm 2: mov  <rdx=%rdx,>overflow=%r8
mov  %rdx,%r8

# qhasm:   rax = b204
# asm 1: mov  <b204=int64#15,>rax=int64#7
# asm 2: mov  <b204=%rbp,>rax=%rax
mov  %rbp,%rax

# qhasm:   (int128) rdx rax = rax * scal
# asm 1: imul <scal=int64#10
# asm 2: imul <scal=%r12
imul %r12

# qhasm:   rdx = (rdx.rax) << 13
# asm 1: shld $13,<rax=int64#7,<rdx=int64#3
# asm 2: shld $13,<rax=%rax,<rdx=%rdx
shld $13,%rax,%rdx

# qhasm:   rax &= mask
# asm 1: and  <mask=int64#2,<rax=int64#7
# asm 2: and  <mask=%rsi,<rax=%rax
and  %rsi,%rax

# qhasm:   a204 = rax + overflow
# asm 1: lea  (<rax=int64#7,<overflow=int64#5),>a204=int64#10
# asm 2: lea  (<rax=%rax,<overflow=%r8),>a204=%r12
lea  (%rax,%r8),%r12

# qhasm:   rdx *= 19
# asm 1: imul  $19,<rdx=int64#3
# asm 2: imul  $19,<rdx=%rdx
imul  $19,%rdx

# qhasm:   a0 += rdx
# asm 1: add  <rdx=int64#3,<a0=int64#6
# asm 2: add  <rdx=%rdx,<a0=%r9
add  %rdx,%r9

# qhasm:   assign 11 to b0

# qhasm:   assign 12 to b51

# qhasm:   assign 13 to b102

# qhasm:   assign 14 to b153

# qhasm:   assign 15 to b204

# qhasm:   assign 6 to a0

# qhasm:   assign 1 to a51

# qhasm:   assign 8 to a102

# qhasm:   assign 9 to a153

# qhasm:   assign 10 to a204

# qhasm:   assign 4 to counter

# qhasm: leave local
ret

# qhasm: enter sqrAtoB local
.text
.p2align 5
_sqrAtoB:
sqrAtoB:

# qhasm:   a0   = register 6

# qhasm:   a51  = register 1

# qhasm:   a102 = register 8

# qhasm:   a153 = register 9

# qhasm:   a204 = register 10

# qhasm:   counter = register 4

# qhasm:   a153M19 = a153
# asm 1: mov  <a153=int64#9,>a153M19=int64#13
# asm 2: mov  <a153=%r11,>a153M19=%r15
mov  %r11,%r15

# qhasm:   a204M19 = a204
# asm 1: mov  <a204=int64#10,>a204M19=int64#14
# asm 2: mov  <a204=%r12,>a204M19=%rbx
mov  %r12,%rbx

# qhasm:   a153M19 *= 19
# asm 1: imul  $19,<a153M19=int64#13
# asm 2: imul  $19,<a153M19=%r15
imul  $19,%r15

# qhasm:   a204M19 *= 19
# asm 1: imul  $19,<a204M19=int64#14
# asm 2: imul  $19,<a204M19=%rbx
imul  $19,%rbx

# qhasm:   assign 13 to a153M19

# qhasm:   assign 14 to a204M19

# qhasm:     rax = a51 + a51
# asm 1: lea  (<a51=int64#1,<a51=int64#1),>rax=int64#7
# asm 2: lea  (<a51=%rdi,<a51=%rdi),>rax=%rax
lea  (%rdi,%rdi),%rax

# qhasm:     (int128) rdx rax = rax * a204M19
# asm 1: imul <a204M19=int64#14
# asm 2: imul <a204M19=%rbx
imul %rbx

# qhasm:     low = rax
# asm 1: mov  <rax=int64#7,>low=int64#2
# asm 2: mov  <rax=%rax,>low=%rsi
mov  %rax,%rsi

# qhasm:     high = rdx
# asm 1: mov  <rdx=int64#3,>high=int64#5
# asm 2: mov  <rdx=%rdx,>high=%r8
mov  %rdx,%r8

# qhasm:     rax = a102 + a102
# asm 1: lea  (<a102=int64#8,<a102=int64#8),>rax=int64#7
# asm 2: lea  (<a102=%r10,<a102=%r10),>rax=%rax
lea  (%r10,%r10),%rax

# qhasm:     (int128) rdx rax = rax * a153M19
# asm 1: imul <a153M19=int64#13
# asm 2: imul <a153M19=%r15
imul %r15

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a0
# asm 1: mov  <a0=int64#6,>rax=int64#7
# asm 2: mov  <a0=%r9,>rax=%rax
mov  %r9,%rax

# qhasm:     (int128) rdx rax = rax * a0
# asm 1: imul <a0=int64#6
# asm 2: imul <a0=%r9
imul %r9

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b0 = low
# asm 1: mov  <low=int64#2,>b0=int64#11
# asm 2: mov  <low=%rsi,>b0=%r13
mov  %rsi,%r13

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = a102 + a102
# asm 1: lea  (<a102=int64#8,<a102=int64#8),>rax=int64#7
# asm 2: lea  (<a102=%r10,<a102=%r10),>rax=%rax
lea  (%r10,%r10),%rax

# qhasm:     (int128) rdx rax = rax * a204M19
# asm 1: imul <a204M19=int64#14
# asm 2: imul <a204M19=%rbx
imul %rbx

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a153
# asm 1: mov  <a153=int64#9,>rax=int64#7
# asm 2: mov  <a153=%r11,>rax=%rax
mov  %r11,%rax

# qhasm:     (int128) rdx rax = rax * a153M19
# asm 1: imul <a153M19=int64#13
# asm 2: imul <a153M19=%r15
imul %r15

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a0 + a0
# asm 1: lea  (<a0=int64#6,<a0=int64#6),>rax=int64#7
# asm 2: lea  (<a0=%r9,<a0=%r9),>rax=%rax
lea  (%r9,%r9),%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b51 = low
# asm 1: mov  <low=int64#2,>b51=int64#12
# asm 2: mov  <low=%rsi,>b51=%r14
mov  %rsi,%r14

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = a153 + a153
# asm 1: lea  (<a153=int64#9,<a153=int64#9),>rax=int64#7
# asm 2: lea  (<a153=%r11,<a153=%r11),>rax=%rax
lea  (%r11,%r11),%rax

# qhasm:     (int128) rdx rax = rax * a204M19
# asm 1: imul <a204M19=int64#14
# asm 2: imul <a204M19=%rbx
imul %rbx

# qhasm:     carry? low += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a0 + a0
# asm 1: lea  (<a0=int64#6,<a0=int64#6),>rax=int64#7
# asm 2: lea  (<a0=%r9,<a0=%r9),>rax=%rax
lea  (%r9,%r9),%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a51
# asm 1: mov  <a51=int64#1,>rax=int64#7
# asm 2: mov  <a51=%rdi,>rax=%rax
mov  %rdi,%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b102 = low
# asm 1: mov  <low=int64#2,>b102=int64#13
# asm 2: mov  <low=%rsi,>b102=%r15
mov  %rsi,%r15

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = a204
# asm 1: mov  <a204=int64#10,>rax=int64#7
# asm 2: mov  <a204=%r12,>rax=%rax
mov  %r12,%rax

# qhasm:     (int128) rdx rax = rax * a204M19
# asm 1: imul <a204M19=int64#14
# asm 2: imul <a204M19=%rbx
imul %rbx

# qhasm:     carry? low += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a0 + a0
# asm 1: lea  (<a0=int64#6,<a0=int64#6),>rax=int64#7
# asm 2: lea  (<a0=%r9,<a0=%r9),>rax=%rax
lea  (%r9,%r9),%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a51 + a51
# asm 1: lea  (<a51=int64#1,<a51=int64#1),>rax=int64#7
# asm 2: lea  (<a51=%rdi,<a51=%rdi),>rax=%rax
lea  (%rdi,%rdi),%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b153 = low
# asm 1: mov  <low=int64#2,>b153=int64#14
# asm 2: mov  <low=%rsi,>b153=%rbx
mov  %rsi,%rbx

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = a0 + a0
# asm 1: lea  (<a0=int64#6,<a0=int64#6),>rax=int64#7
# asm 2: lea  (<a0=%r9,<a0=%r9),>rax=%rax
lea  (%r9,%r9),%rax

# qhasm:     (int128) rdx rax = rax * a204
# asm 1: imul <a204=int64#10
# asm 2: imul <a204=%r12
imul %r12

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a51 + a51
# asm 1: lea  (<a51=int64#1,<a51=int64#1),>rax=int64#7
# asm 2: lea  (<a51=%rdi,<a51=%rdi),>rax=%rax
lea  (%rdi,%rdi),%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = a102
# asm 1: mov  <a102=int64#8,>rax=int64#7
# asm 2: mov  <a102=%r10,>rax=%rax
mov  %r10,%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b204 = low
# asm 1: mov  <low=int64#2,>b204=int64#15
# asm 2: mov  <low=%rsi,>b204=%rbp
mov  %rsi,%rbp

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:   high *= 19
# asm 1: imul  $19,<high=int64#5
# asm 2: imul  $19,<high=%r8
imul  $19,%r8

# qhasm:   rax = 19
# asm 1: mov  $19,>rax=int64#7
# asm 2: mov  $19,>rax=%rax
mov  $19,%rax

# qhasm:   (uint128) rdx rax = rax * low
# asm 1: mul  <low=int64#2
# asm 2: mul  <low=%rsi
mul  %rsi

# qhasm:   rdx += high
# asm 1: add  <high=int64#5,<rdx=int64#3
# asm 2: add  <high=%r8,<rdx=%rdx
add  %r8,%rdx

# qhasm:   mask = 0x7ffffffffffff
# asm 1: mov  $0x7ffffffffffff,>mask=int64#2
# asm 2: mov  $0x7ffffffffffff,>mask=%rsi
mov  $0x7ffffffffffff,%rsi

# qhasm:   b0   &= mask
# asm 1: and  <mask=int64#2,<b0=int64#11
# asm 2: and  <mask=%rsi,<b0=%r13
and  %rsi,%r13

# qhasm:   b51  &= mask
# asm 1: and  <mask=int64#2,<b51=int64#12
# asm 2: and  <mask=%rsi,<b51=%r14
and  %rsi,%r14

# qhasm:   b102 &= mask
# asm 1: and  <mask=int64#2,<b102=int64#13
# asm 2: and  <mask=%rsi,<b102=%r15
and  %rsi,%r15

# qhasm:   b153 &= mask
# asm 1: and  <mask=int64#2,<b153=int64#14
# asm 2: and  <mask=%rsi,<b153=%rbx
and  %rsi,%rbx

# qhasm:   b204 &= mask
# asm 1: and  <mask=int64#2,<b204=int64#15
# asm 2: and  <mask=%rsi,<b204=%rbp
and  %rsi,%rbp

# qhasm:   mask &= rax
# asm 1: and  <rax=int64#7,<mask=int64#2
# asm 2: and  <rax=%rax,<mask=%rsi
and  %rax,%rsi

# qhasm:   rax = (rdx rax) >> 51
# asm 1: shrd $51,<rdx=int64#3,<rax=int64#7
# asm 2: shrd $51,<rdx=%rdx,<rax=%rax
shrd $51,%rdx,%rax

# qhasm:   b0  += mask
# asm 1: add  <mask=int64#2,<b0=int64#11
# asm 2: add  <mask=%rsi,<b0=%r13
add  %rsi,%r13

# qhasm:   b51 += rax
# asm 1: add  <rax=int64#7,<b51=int64#12
# asm 2: add  <rax=%rax,<b51=%r14
add  %rax,%r14

# qhasm:   assign 11 to b0

# qhasm:   assign 12 to b51

# qhasm:   assign 13 to b102

# qhasm:   assign 14 to b153

# qhasm:   assign 15 to b204

# qhasm:   assign 6 to a0

# qhasm:   assign 1 to a51

# qhasm:   assign 8 to a102

# qhasm:   assign 9 to a153

# qhasm:   assign 10 to a204

# qhasm:   assign 4 to counter

# qhasm: leave local
ret

# qhasm: enter sqrBtoA local
.text
.p2align 5
_sqrBtoA:
sqrBtoA:

# qhasm:   b0   = register 11

# qhasm:   b51  = register 12

# qhasm:   b102 = register 13

# qhasm:   b153 = register 14

# qhasm:   b204 = register 15

# qhasm:   counter = register 4

# qhasm:   b153M19 = b153
# asm 1: mov  <b153=int64#14,>b153M19=int64#8
# asm 2: mov  <b153=%rbx,>b153M19=%r10
mov  %rbx,%r10

# qhasm:   b204M19 = b204
# asm 1: mov  <b204=int64#15,>b204M19=int64#9
# asm 2: mov  <b204=%rbp,>b204M19=%r11
mov  %rbp,%r11

# qhasm:   b153M19 *= 19
# asm 1: imul  $19,<b153M19=int64#8
# asm 2: imul  $19,<b153M19=%r10
imul  $19,%r10

# qhasm:   b204M19 *= 19
# asm 1: imul  $19,<b204M19=int64#9
# asm 2: imul  $19,<b204M19=%r11
imul  $19,%r11

# qhasm:   assign 8 to b153M19

# qhasm:   assign 9 to b204M19

# qhasm:     rax = b51 + b51
# asm 1: lea  (<b51=int64#12,<b51=int64#12),>rax=int64#7
# asm 2: lea  (<b51=%r14,<b51=%r14),>rax=%rax
lea  (%r14,%r14),%rax

# qhasm:     (int128) rdx rax = rax * b204M19
# asm 1: imul <b204M19=int64#9
# asm 2: imul <b204M19=%r11
imul %r11

# qhasm:     low = rax
# asm 1: mov  <rax=int64#7,>low=int64#2
# asm 2: mov  <rax=%rax,>low=%rsi
mov  %rax,%rsi

# qhasm:     high = rdx
# asm 1: mov  <rdx=int64#3,>high=int64#5
# asm 2: mov  <rdx=%rdx,>high=%r8
mov  %rdx,%r8

# qhasm:     rax = b102 + b102
# asm 1: lea  (<b102=int64#13,<b102=int64#13),>rax=int64#7
# asm 2: lea  (<b102=%r15,<b102=%r15),>rax=%rax
lea  (%r15,%r15),%rax

# qhasm:     (int128) rdx rax = rax * b153M19
# asm 1: imul <b153M19=int64#8
# asm 2: imul <b153M19=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b0
# asm 1: mov  <b0=int64#11,>rax=int64#7
# asm 2: mov  <b0=%r13,>rax=%rax
mov  %r13,%rax

# qhasm:     (int128) rdx rax = rax * b0
# asm 1: imul <b0=int64#11
# asm 2: imul <b0=%r13
imul %r13

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     a0 = low
# asm 1: mov  <low=int64#2,>a0=int64#6
# asm 2: mov  <low=%rsi,>a0=%r9
mov  %rsi,%r9

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = b102 + b102
# asm 1: lea  (<b102=int64#13,<b102=int64#13),>rax=int64#7
# asm 2: lea  (<b102=%r15,<b102=%r15),>rax=%rax
lea  (%r15,%r15),%rax

# qhasm:     (int128) rdx rax = rax * b204M19
# asm 1: imul <b204M19=int64#9
# asm 2: imul <b204M19=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b153
# asm 1: mov  <b153=int64#14,>rax=int64#7
# asm 2: mov  <b153=%rbx,>rax=%rax
mov  %rbx,%rax

# qhasm:     (int128) rdx rax = rax * b153M19
# asm 1: imul <b153M19=int64#8
# asm 2: imul <b153M19=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b0 + b0
# asm 1: lea  (<b0=int64#11,<b0=int64#11),>rax=int64#7
# asm 2: lea  (<b0=%r13,<b0=%r13),>rax=%rax
lea  (%r13,%r13),%rax

# qhasm:     (int128) rdx rax = rax * b51
# asm 1: imul <b51=int64#12
# asm 2: imul <b51=%r14
imul %r14

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     a51 = low
# asm 1: mov  <low=int64#2,>a51=int64#1
# asm 2: mov  <low=%rsi,>a51=%rdi
mov  %rsi,%rdi

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = b153 + b153
# asm 1: lea  (<b153=int64#14,<b153=int64#14),>rax=int64#7
# asm 2: lea  (<b153=%rbx,<b153=%rbx),>rax=%rax
lea  (%rbx,%rbx),%rax

# qhasm:     (int128) rdx rax = rax * b204M19
# asm 1: imul <b204M19=int64#9
# asm 2: imul <b204M19=%r11
imul %r11

# qhasm:     carry? low += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b0 + b0
# asm 1: lea  (<b0=int64#11,<b0=int64#11),>rax=int64#7
# asm 2: lea  (<b0=%r13,<b0=%r13),>rax=%rax
lea  (%r13,%r13),%rax

# qhasm:     (int128) rdx rax = rax * b102
# asm 1: imul <b102=int64#13
# asm 2: imul <b102=%r15
imul %r15

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b51
# asm 1: mov  <b51=int64#12,>rax=int64#7
# asm 2: mov  <b51=%r14,>rax=%rax
mov  %r14,%rax

# qhasm:     (int128) rdx rax = rax * b51
# asm 1: imul <b51=int64#12
# asm 2: imul <b51=%r14
imul %r14

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     a102 = low
# asm 1: mov  <low=int64#2,>a102=int64#8
# asm 2: mov  <low=%rsi,>a102=%r10
mov  %rsi,%r10

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = b204
# asm 1: mov  <b204=int64#15,>rax=int64#7
# asm 2: mov  <b204=%rbp,>rax=%rax
mov  %rbp,%rax

# qhasm:     (int128) rdx rax = rax * b204M19
# asm 1: imul <b204M19=int64#9
# asm 2: imul <b204M19=%r11
imul %r11

# qhasm:     carry? low += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b0 + b0
# asm 1: lea  (<b0=int64#11,<b0=int64#11),>rax=int64#7
# asm 2: lea  (<b0=%r13,<b0=%r13),>rax=%rax
lea  (%r13,%r13),%rax

# qhasm:     (int128) rdx rax = rax * b153
# asm 1: imul <b153=int64#14
# asm 2: imul <b153=%rbx
imul %rbx

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b51 + b51
# asm 1: lea  (<b51=int64#12,<b51=int64#12),>rax=int64#7
# asm 2: lea  (<b51=%r14,<b51=%r14),>rax=%rax
lea  (%r14,%r14),%rax

# qhasm:     (int128) rdx rax = rax * b102
# asm 1: imul <b102=int64#13
# asm 2: imul <b102=%r15
imul %r15

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     a153 = low
# asm 1: mov  <low=int64#2,>a153=int64#9
# asm 2: mov  <low=%rsi,>a153=%r11
mov  %rsi,%r11

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = b0 + b0
# asm 1: lea  (<b0=int64#11,<b0=int64#11),>rax=int64#7
# asm 2: lea  (<b0=%r13,<b0=%r13),>rax=%rax
lea  (%r13,%r13),%rax

# qhasm:     (int128) rdx rax = rax * b204
# asm 1: imul <b204=int64#15
# asm 2: imul <b204=%rbp
imul %rbp

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b51 + b51
# asm 1: lea  (<b51=int64#12,<b51=int64#12),>rax=int64#7
# asm 2: lea  (<b51=%r14,<b51=%r14),>rax=%rax
lea  (%r14,%r14),%rax

# qhasm:     (int128) rdx rax = rax * b153
# asm 1: imul <b153=int64#14
# asm 2: imul <b153=%rbx
imul %rbx

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = b102
# asm 1: mov  <b102=int64#13,>rax=int64#7
# asm 2: mov  <b102=%r15,>rax=%rax
mov  %r15,%rax

# qhasm:     (int128) rdx rax = rax * b102
# asm 1: imul <b102=int64#13
# asm 2: imul <b102=%r15
imul %r15

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     a204 = low
# asm 1: mov  <low=int64#2,>a204=int64#10
# asm 2: mov  <low=%rsi,>a204=%r12
mov  %rsi,%r12

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:   high *= 19
# asm 1: imul  $19,<high=int64#5
# asm 2: imul  $19,<high=%r8
imul  $19,%r8

# qhasm:   rax = 19
# asm 1: mov  $19,>rax=int64#7
# asm 2: mov  $19,>rax=%rax
mov  $19,%rax

# qhasm:   (uint128) rdx rax = rax * low
# asm 1: mul  <low=int64#2
# asm 2: mul  <low=%rsi
mul  %rsi

# qhasm:   rdx += high
# asm 1: add  <high=int64#5,<rdx=int64#3
# asm 2: add  <high=%r8,<rdx=%rdx
add  %r8,%rdx

# qhasm:   mask = 0x7ffffffffffff
# asm 1: mov  $0x7ffffffffffff,>mask=int64#2
# asm 2: mov  $0x7ffffffffffff,>mask=%rsi
mov  $0x7ffffffffffff,%rsi

# qhasm:   a0   &= mask
# asm 1: and  <mask=int64#2,<a0=int64#6
# asm 2: and  <mask=%rsi,<a0=%r9
and  %rsi,%r9

# qhasm:   a51  &= mask
# asm 1: and  <mask=int64#2,<a51=int64#1
# asm 2: and  <mask=%rsi,<a51=%rdi
and  %rsi,%rdi

# qhasm:   a102 &= mask
# asm 1: and  <mask=int64#2,<a102=int64#8
# asm 2: and  <mask=%rsi,<a102=%r10
and  %rsi,%r10

# qhasm:   a153 &= mask
# asm 1: and  <mask=int64#2,<a153=int64#9
# asm 2: and  <mask=%rsi,<a153=%r11
and  %rsi,%r11

# qhasm:   a204 &= mask
# asm 1: and  <mask=int64#2,<a204=int64#10
# asm 2: and  <mask=%rsi,<a204=%r12
and  %rsi,%r12

# qhasm:   mask &= rax
# asm 1: and  <rax=int64#7,<mask=int64#2
# asm 2: and  <rax=%rax,<mask=%rsi
and  %rax,%rsi

# qhasm:   rax = (rdx rax) >> 51
# asm 1: shrd $51,<rdx=int64#3,<rax=int64#7
# asm 2: shrd $51,<rdx=%rdx,<rax=%rax
shrd $51,%rdx,%rax

# qhasm:   a0  += mask
# asm 1: add  <mask=int64#2,<a0=int64#6
# asm 2: add  <mask=%rsi,<a0=%r9
add  %rsi,%r9

# qhasm:   a51 += rax
# asm 1: add  <rax=int64#7,<a51=int64#1
# asm 2: add  <rax=%rax,<a51=%rdi
add  %rax,%rdi

# qhasm:   assign 11 to b0

# qhasm:   assign 12 to b51

# qhasm:   assign 13 to b102

# qhasm:   assign 14 to b153

# qhasm:   assign 15 to b204

# qhasm:   assign 6 to a0

# qhasm:   assign 1 to a51

# qhasm:   assign 8 to a102

# qhasm:   assign 9 to a153

# qhasm:   assign 10 to a204

# qhasm:   assign 4 to counter

# qhasm: leave local
ret

# qhasm: enter mulACtoB local
.text
.p2align 5
_mulACtoB:
mulACtoB:

# qhasm:   a0   = register 6

# qhasm:   a51  = register 1

# qhasm:   a102 = register 8

# qhasm:   a153 = register 9

# qhasm:   a204 = register 10

# qhasm:   c0   = register 1

# qhasm:   c51  = register 2

# qhasm:   c102 = register 3

# qhasm:   c153 = register 4

# qhasm:   c204 = register 5

# qhasm:   counter = register 4

# qhasm:   c51M19  = c51
# asm 1: movd   <c51=int6464#2,>c51M19=int64#11
# asm 2: movd   <c51=%xmm1,>c51M19=%r13
movd   %xmm1,%r13

# qhasm:   c102M19 = c102
# asm 1: movd   <c102=int6464#3,>c102M19=int64#12
# asm 2: movd   <c102=%xmm2,>c102M19=%r14
movd   %xmm2,%r14

# qhasm:   c153M19 = c153
# asm 1: movd   <c153=int6464#4,>c153M19=int64#13
# asm 2: movd   <c153=%xmm3,>c153M19=%r15
movd   %xmm3,%r15

# qhasm:   c204M19 = c204
# asm 1: movd   <c204=int6464#5,>c204M19=int64#14
# asm 2: movd   <c204=%xmm4,>c204M19=%rbx
movd   %xmm4,%rbx

# qhasm:   assign 11 to c51M19

# qhasm:   assign 12 to c102M19

# qhasm:   assign 13 to c153M19

# qhasm:   assign 14 to c204M19

# qhasm:   c51M19  *= 19
# asm 1: imul  $19,<c51M19=int64#11
# asm 2: imul  $19,<c51M19=%r13
imul  $19,%r13

# qhasm:   c102M19 *= 19
# asm 1: imul  $19,<c102M19=int64#12
# asm 2: imul  $19,<c102M19=%r14
imul  $19,%r14

# qhasm:   c153M19 *= 19
# asm 1: imul  $19,<c153M19=int64#13
# asm 2: imul  $19,<c153M19=%r15
imul  $19,%r15

# qhasm:   c204M19 *= 19
# asm 1: imul  $19,<c204M19=int64#14
# asm 2: imul  $19,<c204M19=%rbx
imul  $19,%rbx

# qhasm:     rax = c204M19
# asm 1: mov  <c204M19=int64#14,>rax=int64#7
# asm 2: mov  <c204M19=%rbx,>rax=%rax
mov  %rbx,%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     low = rax
# asm 1: mov  <rax=int64#7,>low=int64#2
# asm 2: mov  <rax=%rax,>low=%rsi
mov  %rax,%rsi

# qhasm:     high = rdx
# asm 1: mov  <rdx=int64#3,>high=int64#5
# asm 2: mov  <rdx=%rdx,>high=%r8
mov  %rdx,%r8

# qhasm:     rax = c153M19
# asm 1: mov  <c153M19=int64#13,>rax=int64#7
# asm 2: mov  <c153M19=%r15,>rax=%rax
mov  %r15,%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c102M19
# asm 1: mov  <c102M19=int64#12,>rax=int64#7
# asm 2: mov  <c102M19=%r14,>rax=%rax
mov  %r14,%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c51M19
# asm 1: mov  <c51M19=int64#11,>rax=int64#7
# asm 2: mov  <c51M19=%r13,>rax=%rax
mov  %r13,%rax

# qhasm:     (int128) rdx rax = rax * a204
# asm 1: imul <a204=int64#10
# asm 2: imul <a204=%r12
imul %r12

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c0
# asm 1: movd   <c0=int6464#1,>rax=int64#7
# asm 2: movd   <c0=%xmm0,>rax=%rax
movd   %xmm0,%rax

# qhasm:     (int128) rdx rax = rax * a0
# asm 1: imul <a0=int64#6
# asm 2: imul <a0=%r9
imul %r9

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b0 = low
# asm 1: mov  <low=int64#2,>b0=int64#11
# asm 2: mov  <low=%rsi,>b0=%r13
mov  %rsi,%r13

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = c204M19
# asm 1: mov  <c204M19=int64#14,>rax=int64#7
# asm 2: mov  <c204M19=%rbx,>rax=%rax
mov  %rbx,%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c153M19
# asm 1: mov  <c153M19=int64#13,>rax=int64#7
# asm 2: mov  <c153M19=%r15,>rax=%rax
mov  %r15,%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c102M19
# asm 1: mov  <c102M19=int64#12,>rax=int64#7
# asm 2: mov  <c102M19=%r14,>rax=%rax
mov  %r14,%rax

# qhasm:     (int128) rdx rax = rax * a204
# asm 1: imul <a204=int64#10
# asm 2: imul <a204=%r12
imul %r12

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c51
# asm 1: movd   <c51=int6464#2,>rax=int64#7
# asm 2: movd   <c51=%xmm1,>rax=%rax
movd   %xmm1,%rax

# qhasm:     (int128) rdx rax = rax * a0
# asm 1: imul <a0=int64#6
# asm 2: imul <a0=%r9
imul %r9

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c0
# asm 1: movd   <c0=int6464#1,>rax=int64#7
# asm 2: movd   <c0=%xmm0,>rax=%rax
movd   %xmm0,%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b51 = low
# asm 1: mov  <low=int64#2,>b51=int64#12
# asm 2: mov  <low=%rsi,>b51=%r14
mov  %rsi,%r14

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = c204M19
# asm 1: mov  <c204M19=int64#14,>rax=int64#7
# asm 2: mov  <c204M19=%rbx,>rax=%rax
mov  %rbx,%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c153M19
# asm 1: mov  <c153M19=int64#13,>rax=int64#7
# asm 2: mov  <c153M19=%r15,>rax=%rax
mov  %r15,%rax

# qhasm:     (int128) rdx rax = rax * a204
# asm 1: imul <a204=int64#10
# asm 2: imul <a204=%r12
imul %r12

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c102
# asm 1: movd   <c102=int6464#3,>rax=int64#7
# asm 2: movd   <c102=%xmm2,>rax=%rax
movd   %xmm2,%rax

# qhasm:     (int128) rdx rax = rax * a0
# asm 1: imul <a0=int64#6
# asm 2: imul <a0=%r9
imul %r9

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c51
# asm 1: movd   <c51=int6464#2,>rax=int64#7
# asm 2: movd   <c51=%xmm1,>rax=%rax
movd   %xmm1,%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c0
# asm 1: movd   <c0=int6464#1,>rax=int64#7
# asm 2: movd   <c0=%xmm0,>rax=%rax
movd   %xmm0,%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b102 = low
# asm 1: mov  <low=int64#2,>b102=int64#13
# asm 2: mov  <low=%rsi,>b102=%r15
mov  %rsi,%r15

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = c204M19
# asm 1: mov  <c204M19=int64#14,>rax=int64#7
# asm 2: mov  <c204M19=%rbx,>rax=%rax
mov  %rbx,%rax

# qhasm:     (int128) rdx rax = rax * a204
# asm 1: imul <a204=int64#10
# asm 2: imul <a204=%r12
imul %r12

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c153
# asm 1: movd   <c153=int6464#4,>rax=int64#7
# asm 2: movd   <c153=%xmm3,>rax=%rax
movd   %xmm3,%rax

# qhasm:     (int128) rdx rax = rax * a0
# asm 1: imul <a0=int64#6
# asm 2: imul <a0=%r9
imul %r9

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c102
# asm 1: movd   <c102=int6464#3,>rax=int64#7
# asm 2: movd   <c102=%xmm2,>rax=%rax
movd   %xmm2,%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c51
# asm 1: movd   <c51=int6464#2,>rax=int64#7
# asm 2: movd   <c51=%xmm1,>rax=%rax
movd   %xmm1,%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c0
# asm 1: movd   <c0=int6464#1,>rax=int64#7
# asm 2: movd   <c0=%xmm0,>rax=%rax
movd   %xmm0,%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b153 = low
# asm 1: mov  <low=int64#2,>b153=int64#14
# asm 2: mov  <low=%rsi,>b153=%rbx
mov  %rsi,%rbx

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:     rax = c204
# asm 1: movd   <c204=int6464#5,>rax=int64#7
# asm 2: movd   <c204=%xmm4,>rax=%rax
movd   %xmm4,%rax

# qhasm:     (int128) rdx rax = rax * a0
# asm 1: imul <a0=int64#6
# asm 2: imul <a0=%r9
imul %r9

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c153
# asm 1: movd   <c153=int6464#4,>rax=int64#7
# asm 2: movd   <c153=%xmm3,>rax=%rax
movd   %xmm3,%rax

# qhasm:     (int128) rdx rax = rax * a51
# asm 1: imul <a51=int64#1
# asm 2: imul <a51=%rdi
imul %rdi

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c102
# asm 1: movd   <c102=int6464#3,>rax=int64#7
# asm 2: movd   <c102=%xmm2,>rax=%rax
movd   %xmm2,%rax

# qhasm:     (int128) rdx rax = rax * a102
# asm 1: imul <a102=int64#8
# asm 2: imul <a102=%r10
imul %r10

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c51
# asm 1: movd   <c51=int6464#2,>rax=int64#7
# asm 2: movd   <c51=%xmm1,>rax=%rax
movd   %xmm1,%rax

# qhasm:     (int128) rdx rax = rax * a153
# asm 1: imul <a153=int64#9
# asm 2: imul <a153=%r11
imul %r11

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     rax = c0
# asm 1: movd   <c0=int6464#1,>rax=int64#7
# asm 2: movd   <c0=%xmm0,>rax=%rax
movd   %xmm0,%rax

# qhasm:     (int128) rdx rax = rax * a204
# asm 1: imul <a204=int64#10
# asm 2: imul <a204=%r12
imul %r12

# qhasm:     carry? low  += rax
# asm 1: add  <rax=int64#7,<low=int64#2
# asm 2: add  <rax=%rax,<low=%rsi
add  %rax,%rsi

# qhasm:     carry? high += rdx + carry
# asm 1: adc <rdx=int64#3,<high=int64#5
# asm 2: adc <rdx=%rdx,<high=%r8
adc %rdx,%r8

# qhasm:     b204 = low
# asm 1: mov  <low=int64#2,>b204=int64#15
# asm 2: mov  <low=%rsi,>b204=%rbp
mov  %rsi,%rbp

# qhasm:     low = (high low) >> 51
# asm 1: shrd $51,<high=int64#5,<low=int64#2
# asm 2: shrd $51,<high=%r8,<low=%rsi
shrd $51,%r8,%rsi

# qhasm:     (int64) high >>= 51
# asm 1: sar  $51,<high=int64#5
# asm 2: sar  $51,<high=%r8
sar  $51,%r8

# qhasm:   high *= 19
# asm 1: imul  $19,<high=int64#5
# asm 2: imul  $19,<high=%r8
imul  $19,%r8

# qhasm:   rax = 19
# asm 1: mov  $19,>rax=int64#7
# asm 2: mov  $19,>rax=%rax
mov  $19,%rax

# qhasm:   (uint128) rdx rax = rax * low
# asm 1: mul  <low=int64#2
# asm 2: mul  <low=%rsi
mul  %rsi

# qhasm:   rdx += high
# asm 1: add  <high=int64#5,<rdx=int64#3
# asm 2: add  <high=%r8,<rdx=%rdx
add  %r8,%rdx

# qhasm:   mask = 0x7ffffffffffff
# asm 1: mov  $0x7ffffffffffff,>mask=int64#2
# asm 2: mov  $0x7ffffffffffff,>mask=%rsi
mov  $0x7ffffffffffff,%rsi

# qhasm:   b0   &= mask
# asm 1: and  <mask=int64#2,<b0=int64#11
# asm 2: and  <mask=%rsi,<b0=%r13
and  %rsi,%r13

# qhasm:   b51  &= mask
# asm 1: and  <mask=int64#2,<b51=int64#12
# asm 2: and  <mask=%rsi,<b51=%r14
and  %rsi,%r14

# qhasm:   b102 &= mask
# asm 1: and  <mask=int64#2,<b102=int64#13
# asm 2: and  <mask=%rsi,<b102=%r15
and  %rsi,%r15

# qhasm:   b153 &= mask
# asm 1: and  <mask=int64#2,<b153=int64#14
# asm 2: and  <mask=%rsi,<b153=%rbx
and  %rsi,%rbx

# qhasm:   b204 &= mask
# asm 1: and  <mask=int64#2,<b204=int64#15
# asm 2: and  <mask=%rsi,<b204=%rbp
and  %rsi,%rbp

# qhasm:   mask &= rax
# asm 1: and  <rax=int64#7,<mask=int64#2
# asm 2: and  <rax=%rax,<mask=%rsi
and  %rax,%rsi

# qhasm:   rax = (rdx rax) >> 51
# asm 1: shrd $51,<rdx=int64#3,<rax=int64#7
# asm 2: shrd $51,<rdx=%rdx,<rax=%rax
shrd $51,%rdx,%rax

# qhasm:   b0  += mask
# asm 1: add  <mask=int64#2,<b0=int64#11
# asm 2: add  <mask=%rsi,<b0=%r13
add  %rsi,%r13

# qhasm:   b51 += rax
# asm 1: add  <rax=int64#7,<b51=int64#12
# asm 2: add  <rax=%rax,<b51=%r14
add  %rax,%r14

# qhasm:   assign 11 to b0

# qhasm:   assign 12 to b51

# qhasm:   assign 13 to b102

# qhasm:   assign 14 to b153

# qhasm:   assign 15 to b204

# qhasm:   assign 6 to a0

# qhasm:   assign 1 to a51

# qhasm:   assign 8 to a102

# qhasm:   assign 9 to a153

# qhasm:   assign 10 to a204

# qhasm:   assign 4 to counter

# qhasm: leave local
ret

# qhasm: enter powtrick local
.text
.p2align 5
_powtrick:
powtrick:

# qhasm:    b0   = register 11

# qhasm:    b51  = register 12

# qhasm:    b102 = register 13

# qhasm:    b153 = register 14

# qhasm:    b204 = register 15       

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local       
call sqrBtoA

# qhasm:    a0   = register 6

# qhasm:    a51  = register 1

# qhasm:    a102 = register 8

# qhasm:    a153 = register 9

# qhasm:    a204 = register 10

# qhasm:    d0   = a0
# asm 1: movd   <a0=int64#6,>d0=int6464#6
# asm 2: movd   <a0=%r9,>d0=%xmm5
movd   %r9,%xmm5

# qhasm:    d51  = a51
# asm 1: movd   <a51=int64#1,>d51=int6464#7
# asm 2: movd   <a51=%rdi,>d51=%xmm6
movd   %rdi,%xmm6

# qhasm:    d102 = a102
# asm 1: movd   <a102=int64#8,>d102=int6464#8
# asm 2: movd   <a102=%r10,>d102=%xmm7
movd   %r10,%xmm7

# qhasm:    d153 = a153
# asm 1: movd   <a153=int64#9,>d153=int6464#9
# asm 2: movd   <a153=%r11,>d153=%xmm8
movd   %r11,%xmm8

# qhasm:    d204 = a204
# asm 1: movd   <a204=int64#10,>d204=int6464#10
# asm 2: movd   <a204=%r12,>d204=%xmm9
movd   %r12,%xmm9

# qhasm:    assign  6 to d0

# qhasm:    assign  7 to d51

# qhasm:    assign  8 to d102

# qhasm:    assign  9 to d153

# qhasm:    assign 10 to d204        

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    call sqrBtoA local       
call sqrBtoA

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    a0   = d0
# asm 1: movd   <d0=int6464#6,>a0=int64#6
# asm 2: movd   <d0=%xmm5,>a0=%r9
movd   %xmm5,%r9

# qhasm:    a51  = d51
# asm 1: movd   <d51=int6464#7,>a51=int64#1
# asm 2: movd   <d51=%xmm6,>a51=%rdi
movd   %xmm6,%rdi

# qhasm:    a102 = d102
# asm 1: movd   <d102=int6464#8,>a102=int64#8
# asm 2: movd   <d102=%xmm7,>a102=%r10
movd   %xmm7,%r10

# qhasm:    a153 = d153
# asm 1: movd   <d153=int6464#9,>a153=int64#9
# asm 2: movd   <d153=%xmm8,>a153=%r11
movd   %xmm8,%r11

# qhasm:    a204 = d204
# asm 1: movd   <d204=int6464#10,>a204=int64#10
# asm 2: movd   <d204=%xmm9,>a204=%r12
movd   %xmm9,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    e0   = b0
# asm 1: movd   <b0=int64#11,>e0=int6464#11
# asm 2: movd   <b0=%r13,>e0=%xmm10
movd   %r13,%xmm10

# qhasm:    e51  = b51
# asm 1: movd   <b51=int64#12,>e51=int6464#12
# asm 2: movd   <b51=%r14,>e51=%xmm11
movd   %r14,%xmm11

# qhasm:    e102 = b102
# asm 1: movd   <b102=int64#13,>e102=int6464#13
# asm 2: movd   <b102=%r15,>e102=%xmm12
movd   %r15,%xmm12

# qhasm:    e153 = b153
# asm 1: movd   <b153=int64#14,>e153=int6464#14
# asm 2: movd   <b153=%rbx,>e153=%xmm13
movd   %rbx,%xmm13

# qhasm:    e204 = b204
# asm 1: movd   <b204=int64#15,>e204=int6464#15
# asm 2: movd   <b204=%rbp,>e204=%xmm14
movd   %rbp,%xmm14

# qhasm:    assign 11 to e0

# qhasm:    assign 12 to e51

# qhasm:    assign 13 to e102

# qhasm:    assign 14 to e153

# qhasm:    assign 15 to e204        

# qhasm:    call sqrBtoA local       
call sqrBtoA

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local       
call sqrBtoA

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    a0   = b0
# asm 1: mov  <b0=int64#11,>a0=int64#6
# asm 2: mov  <b0=%r13,>a0=%r9
mov  %r13,%r9

# qhasm:    a51  = b51
# asm 1: mov  <b51=int64#12,>a51=int64#1
# asm 2: mov  <b51=%r14,>a51=%rdi
mov  %r14,%rdi

# qhasm:    a102 = b102
# asm 1: mov  <b102=int64#13,>a102=int64#8
# asm 2: mov  <b102=%r15,>a102=%r10
mov  %r15,%r10

# qhasm:    a153 = b153
# asm 1: mov  <b153=int64#14,>a153=int64#9
# asm 2: mov  <b153=%rbx,>a153=%r11
mov  %rbx,%r11

# qhasm:    a204 = b204
# asm 1: mov  <b204=int64#15,>a204=int64#10
# asm 2: mov  <b204=%rbp,>a204=%r12
mov  %rbp,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    d0   = c0
# asm 1: movdqa <c0=int6464#1,>d0=int6464#6
# asm 2: movdqa <c0=%xmm0,>d0=%xmm5
movdqa %xmm0,%xmm5

# qhasm:    d51  = c51
# asm 1: movdqa <c51=int6464#2,>d51=int6464#7
# asm 2: movdqa <c51=%xmm1,>d51=%xmm6
movdqa %xmm1,%xmm6

# qhasm:    d102 = c102
# asm 1: movdqa <c102=int6464#3,>d102=int6464#8
# asm 2: movdqa <c102=%xmm2,>d102=%xmm7
movdqa %xmm2,%xmm7

# qhasm:    d153 = c153
# asm 1: movdqa <c153=int6464#4,>d153=int6464#9
# asm 2: movdqa <c153=%xmm3,>d153=%xmm8
movdqa %xmm3,%xmm8

# qhasm:    d204 = c204
# asm 1: movdqa <c204=int6464#5,>d204=int6464#10
# asm 2: movdqa <c204=%xmm4,>d204=%xmm9
movdqa %xmm4,%xmm9

# qhasm:    assign  6 to d0

# qhasm:    assign  7 to d51

# qhasm:    assign  8 to d102

# qhasm:    assign  9 to d153

# qhasm:    assign 10 to d204        

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    a0   = b0
# asm 1: mov  <b0=int64#11,>a0=int64#6
# asm 2: mov  <b0=%r13,>a0=%r9
mov  %r13,%r9

# qhasm:    a51  = b51
# asm 1: mov  <b51=int64#12,>a51=int64#1
# asm 2: mov  <b51=%r14,>a51=%rdi
mov  %r14,%rdi

# qhasm:    a102 = b102
# asm 1: mov  <b102=int64#13,>a102=int64#8
# asm 2: mov  <b102=%r15,>a102=%r10
mov  %r15,%r10

# qhasm:    a153 = b153
# asm 1: mov  <b153=int64#14,>a153=int64#9
# asm 2: mov  <b153=%rbx,>a153=%r11
mov  %rbx,%r11

# qhasm:    a204 = b204
# asm 1: mov  <b204=int64#15,>a204=int64#10
# asm 2: mov  <b204=%rbp,>a204=%r12
mov  %rbp,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    c0   = d0
# asm 1: movdqa <d0=int6464#6,>c0=int6464#1
# asm 2: movdqa <d0=%xmm5,>c0=%xmm0
movdqa %xmm5,%xmm0

# qhasm:    c51  = d51
# asm 1: movdqa <d51=int6464#7,>c51=int6464#2
# asm 2: movdqa <d51=%xmm6,>c51=%xmm1
movdqa %xmm6,%xmm1

# qhasm:    c102 = d102
# asm 1: movdqa <d102=int6464#8,>c102=int6464#3
# asm 2: movdqa <d102=%xmm7,>c102=%xmm2
movdqa %xmm7,%xmm2

# qhasm:    c153 = d153
# asm 1: movdqa <d153=int6464#9,>c153=int6464#4
# asm 2: movdqa <d153=%xmm8,>c153=%xmm3
movdqa %xmm8,%xmm3

# qhasm:    c204 = d204
# asm 1: movdqa <d204=int6464#10,>c204=int6464#5
# asm 2: movdqa <d204=%xmm9,>c204=%xmm4
movdqa %xmm9,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    a0   = b0
# asm 1: mov  <b0=int64#11,>a0=int64#6
# asm 2: mov  <b0=%r13,>a0=%r9
mov  %r13,%r9

# qhasm:    a51  = b51
# asm 1: mov  <b51=int64#12,>a51=int64#1
# asm 2: mov  <b51=%r14,>a51=%rdi
mov  %r14,%rdi

# qhasm:    a102 = b102
# asm 1: mov  <b102=int64#13,>a102=int64#8
# asm 2: mov  <b102=%r15,>a102=%r10
mov  %r15,%r10

# qhasm:    a153 = b153
# asm 1: mov  <b153=int64#14,>a153=int64#9
# asm 2: mov  <b153=%rbx,>a153=%r11
mov  %rbx,%r11

# qhasm:    a204 = b204
# asm 1: mov  <b204=int64#15,>a204=int64#10
# asm 2: mov  <b204=%rbp,>a204=%r12
mov  %rbp,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    a0   = b0
# asm 1: mov  <b0=int64#11,>a0=int64#6
# asm 2: mov  <b0=%r13,>a0=%r9
mov  %r13,%r9

# qhasm:    a51  = b51
# asm 1: mov  <b51=int64#12,>a51=int64#1
# asm 2: mov  <b51=%r14,>a51=%rdi
mov  %r14,%rdi

# qhasm:    a102 = b102
# asm 1: mov  <b102=int64#13,>a102=int64#8
# asm 2: mov  <b102=%r15,>a102=%r10
mov  %r15,%r10

# qhasm:    a153 = b153
# asm 1: mov  <b153=int64#14,>a153=int64#9
# asm 2: mov  <b153=%rbx,>a153=%r11
mov  %rbx,%r11

# qhasm:    a204 = b204
# asm 1: mov  <b204=int64#15,>a204=int64#10
# asm 2: mov  <b204=%rbp,>a204=%r12
mov  %rbp,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    d0   = c0
# asm 1: movdqa <c0=int6464#1,>d0=int6464#6
# asm 2: movdqa <c0=%xmm0,>d0=%xmm5
movdqa %xmm0,%xmm5

# qhasm:    d51  = c51
# asm 1: movdqa <c51=int6464#2,>d51=int6464#7
# asm 2: movdqa <c51=%xmm1,>d51=%xmm6
movdqa %xmm1,%xmm6

# qhasm:    d102 = c102
# asm 1: movdqa <c102=int6464#3,>d102=int6464#8
# asm 2: movdqa <c102=%xmm2,>d102=%xmm7
movdqa %xmm2,%xmm7

# qhasm:    d153 = c153
# asm 1: movdqa <c153=int6464#4,>d153=int6464#9
# asm 2: movdqa <c153=%xmm3,>d153=%xmm8
movdqa %xmm3,%xmm8

# qhasm:    d204 = c204
# asm 1: movdqa <c204=int6464#5,>d204=int6464#10
# asm 2: movdqa <c204=%xmm4,>d204=%xmm9
movdqa %xmm4,%xmm9

# qhasm:    assign  6 to d0

# qhasm:    assign  7 to d51

# qhasm:    assign  8 to d102

# qhasm:    assign  9 to d153

# qhasm:    assign 10 to d204        

# qhasm:    c0   = b0
# asm 1: movd   <b0=int64#11,>c0=int6464#1
# asm 2: movd   <b0=%r13,>c0=%xmm0
movd   %r13,%xmm0

# qhasm:    c51  = b51
# asm 1: movd   <b51=int64#12,>c51=int6464#2
# asm 2: movd   <b51=%r14,>c51=%xmm1
movd   %r14,%xmm1

# qhasm:    c102 = b102
# asm 1: movd   <b102=int64#13,>c102=int6464#3
# asm 2: movd   <b102=%r15,>c102=%xmm2
movd   %r15,%xmm2

# qhasm:    c153 = b153
# asm 1: movd   <b153=int64#14,>c153=int6464#4
# asm 2: movd   <b153=%rbx,>c153=%xmm3
movd   %rbx,%xmm3

# qhasm:    c204 = b204
# asm 1: movd   <b204=int64#15,>c204=int6464#5
# asm 2: movd   <b204=%rbp,>c204=%xmm4
movd   %rbp,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    a0   = b0
# asm 1: mov  <b0=int64#11,>a0=int64#6
# asm 2: mov  <b0=%r13,>a0=%r9
mov  %r13,%r9

# qhasm:    a51  = b51
# asm 1: mov  <b51=int64#12,>a51=int64#1
# asm 2: mov  <b51=%r14,>a51=%rdi
mov  %r14,%rdi

# qhasm:    a102 = b102
# asm 1: mov  <b102=int64#13,>a102=int64#8
# asm 2: mov  <b102=%r15,>a102=%r10
mov  %r15,%r10

# qhasm:    a153 = b153
# asm 1: mov  <b153=int64#14,>a153=int64#9
# asm 2: mov  <b153=%rbx,>a153=%r11
mov  %rbx,%r11

# qhasm:    a204 = b204
# asm 1: mov  <b204=int64#15,>a204=int64#10
# asm 2: mov  <b204=%rbp,>a204=%r12
mov  %rbp,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local
call sqrAtoB

# qhasm:    call sqrBtoA local
call sqrBtoA

# qhasm:    call sqrAtoB local       
call sqrAtoB

# qhasm:    a0   = b0
# asm 1: mov  <b0=int64#11,>a0=int64#6
# asm 2: mov  <b0=%r13,>a0=%r9
mov  %r13,%r9

# qhasm:    a51  = b51
# asm 1: mov  <b51=int64#12,>a51=int64#1
# asm 2: mov  <b51=%r14,>a51=%rdi
mov  %r14,%rdi

# qhasm:    a102 = b102
# asm 1: mov  <b102=int64#13,>a102=int64#8
# asm 2: mov  <b102=%r15,>a102=%r10
mov  %r15,%r10

# qhasm:    a153 = b153
# asm 1: mov  <b153=int64#14,>a153=int64#9
# asm 2: mov  <b153=%rbx,>a153=%r11
mov  %rbx,%r11

# qhasm:    a204 = b204
# asm 1: mov  <b204=int64#15,>a204=int64#10
# asm 2: mov  <b204=%rbp,>a204=%r12
mov  %rbp,%r12

# qhasm:    assign  6 to a0

# qhasm:    assign  1 to a51

# qhasm:    assign  8 to a102

# qhasm:    assign  9 to a153

# qhasm:    assign 10 to a204        

# qhasm:    c0   = d0
# asm 1: movdqa <d0=int6464#6,>c0=int6464#1
# asm 2: movdqa <d0=%xmm5,>c0=%xmm0
movdqa %xmm5,%xmm0

# qhasm:    c51  = d51
# asm 1: movdqa <d51=int6464#7,>c51=int6464#2
# asm 2: movdqa <d51=%xmm6,>c51=%xmm1
movdqa %xmm6,%xmm1

# qhasm:    c102 = d102
# asm 1: movdqa <d102=int6464#8,>c102=int6464#3
# asm 2: movdqa <d102=%xmm7,>c102=%xmm2
movdqa %xmm7,%xmm2

# qhasm:    c153 = d153
# asm 1: movdqa <d153=int6464#9,>c153=int6464#4
# asm 2: movdqa <d153=%xmm8,>c153=%xmm3
movdqa %xmm8,%xmm3

# qhasm:    c204 = d204
# asm 1: movdqa <d204=int6464#10,>c204=int6464#5
# asm 2: movdqa <d204=%xmm9,>c204=%xmm4
movdqa %xmm9,%xmm4

# qhasm:    assign 1 to c0

# qhasm:    assign 2 to c51

# qhasm:    assign 3 to c102

# qhasm:    assign 4 to c153

# qhasm:    assign 5 to c204         

# qhasm:    call mulACtoB local      
call mulACtoB

# qhasm: leave local
ret
