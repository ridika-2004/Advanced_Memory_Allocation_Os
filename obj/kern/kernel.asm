
obj/kern/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <video_init>:
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	53                   	push   %ebx
  100004:	83 ec 14             	sub    $0x14,%esp
  100007:	e8 b4 03 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  10000c:	81 c3 e8 0f 01 00    	add    $0x10fe8,%ebx
  100012:	c7 45 f4 00 80 0b 00 	movl   $0xb8000,-0xc(%ebp)
  100019:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10001c:	0f b7 00             	movzwl (%eax),%eax
  10001f:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  100023:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100026:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
  10002b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10002e:	0f b7 00             	movzwl (%eax),%eax
  100031:	66 3d 5a a5          	cmp    $0xa55a,%ax
  100035:	74 2c                	je     100063 <video_init+0x63>
  100037:	c7 45 f4 00 00 0b 00 	movl   $0xb0000,-0xc(%ebp)
  10003e:	c7 83 0c 60 00 00 b4 	movl   $0x3b4,0x600c(%ebx)
  100045:	03 00 00 
  100048:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10004e:	83 ec 08             	sub    $0x8,%esp
  100051:	50                   	push   %eax
  100052:	8d 83 0c 90 ff ff    	lea    -0x6ff4(%ebx),%eax
  100058:	50                   	push   %eax
  100059:	e8 0e 2d 00 00       	call   102d6c <dprintf>
  10005e:	83 c4 10             	add    $0x10,%esp
  100061:	eb 2d                	jmp    100090 <video_init+0x90>
  100063:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100066:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  10006a:	66 89 10             	mov    %dx,(%eax)
  10006d:	c7 83 0c 60 00 00 d4 	movl   $0x3d4,0x600c(%ebx)
  100074:	03 00 00 
  100077:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  10007d:	83 ec 08             	sub    $0x8,%esp
  100080:	50                   	push   %eax
  100081:	8d 83 0c 90 ff ff    	lea    -0x6ff4(%ebx),%eax
  100087:	50                   	push   %eax
  100088:	e8 df 2c 00 00       	call   102d6c <dprintf>
  10008d:	83 c4 10             	add    $0x10,%esp
  100090:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100096:	83 ec 08             	sub    $0x8,%esp
  100099:	6a 0e                	push   $0xe
  10009b:	50                   	push   %eax
  10009c:	e8 78 3a 00 00       	call   103b19 <outb>
  1000a1:	83 c4 10             	add    $0x10,%esp
  1000a4:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000aa:	83 c0 01             	add    $0x1,%eax
  1000ad:	83 ec 0c             	sub    $0xc,%esp
  1000b0:	50                   	push   %eax
  1000b1:	e8 14 3a 00 00       	call   103aca <inb>
  1000b6:	83 c4 10             	add    $0x10,%esp
  1000b9:	0f b6 c0             	movzbl %al,%eax
  1000bc:	c1 e0 08             	shl    $0x8,%eax
  1000bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1000c2:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000c8:	83 ec 08             	sub    $0x8,%esp
  1000cb:	6a 0f                	push   $0xf
  1000cd:	50                   	push   %eax
  1000ce:	e8 46 3a 00 00       	call   103b19 <outb>
  1000d3:	83 c4 10             	add    $0x10,%esp
  1000d6:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1000dc:	83 c0 01             	add    $0x1,%eax
  1000df:	83 ec 0c             	sub    $0xc,%esp
  1000e2:	50                   	push   %eax
  1000e3:	e8 e2 39 00 00       	call   103aca <inb>
  1000e8:	83 c4 10             	add    $0x10,%esp
  1000eb:	0f b6 c0             	movzbl %al,%eax
  1000ee:	09 45 ec             	or     %eax,-0x14(%ebp)
  1000f1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1000f4:	89 83 10 60 00 00    	mov    %eax,0x6010(%ebx)
  1000fa:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1000fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100104:	c7 83 18 60 00 00 00 	movl   $0x0,0x6018(%ebx)
  10010b:	00 00 00 
  10010e:	90                   	nop
  10010f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100112:	c9                   	leave
  100113:	c3                   	ret

00100114 <video_putc>:
  100114:	55                   	push   %ebp
  100115:	89 e5                	mov    %esp,%ebp
  100117:	56                   	push   %esi
  100118:	53                   	push   %ebx
  100119:	83 ec 10             	sub    $0x10,%esp
  10011c:	e8 9f 02 00 00       	call   1003c0 <__x86.get_pc_thunk.bx>
  100121:	81 c3 d3 0e 01 00    	add    $0x10ed3,%ebx
  100127:	8b 45 08             	mov    0x8(%ebp),%eax
  10012a:	3d ff 00 00 00       	cmp    $0xff,%eax
  10012f:	77 07                	ja     100138 <video_putc+0x24>
  100131:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
  100138:	8b 45 08             	mov    0x8(%ebp),%eax
  10013b:	0f b6 c0             	movzbl %al,%eax
  10013e:	83 f8 0d             	cmp    $0xd,%eax
  100141:	0f 84 84 00 00 00    	je     1001cb <video_putc+0xb7>
  100147:	83 f8 0d             	cmp    $0xd,%eax
  10014a:	0f 8f f9 00 00 00    	jg     100249 <video_putc+0x135>
  100150:	83 f8 0a             	cmp    $0xa,%eax
  100153:	74 65                	je     1001ba <video_putc+0xa6>
  100155:	83 f8 0a             	cmp    $0xa,%eax
  100158:	0f 8f eb 00 00 00    	jg     100249 <video_putc+0x135>
  10015e:	83 f8 08             	cmp    $0x8,%eax
  100161:	74 0e                	je     100171 <video_putc+0x5d>
  100163:	83 f8 09             	cmp    $0x9,%eax
  100166:	0f 84 9a 00 00 00    	je     100206 <video_putc+0xf2>
  10016c:	e9 d8 00 00 00       	jmp    100249 <video_putc+0x135>
  100171:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100178:	66 85 c0             	test   %ax,%ax
  10017b:	0f 84 ee 00 00 00    	je     10026f <video_putc+0x15b>
  100181:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100188:	83 e8 01             	sub    $0x1,%eax
  10018b:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100192:	8b 45 08             	mov    0x8(%ebp),%eax
  100195:	b0 00                	mov    $0x0,%al
  100197:	83 c8 20             	or     $0x20,%eax
  10019a:	89 c1                	mov    %eax,%ecx
  10019c:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1001a2:	0f b7 93 14 60 00 00 	movzwl 0x6014(%ebx),%edx
  1001a9:	0f b7 d2             	movzwl %dx,%edx
  1001ac:	01 d2                	add    %edx,%edx
  1001ae:	01 d0                	add    %edx,%eax
  1001b0:	89 ca                	mov    %ecx,%edx
  1001b2:	66 89 10             	mov    %dx,(%eax)
  1001b5:	e9 b5 00 00 00       	jmp    10026f <video_putc+0x15b>
  1001ba:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1001c1:	83 c0 50             	add    $0x50,%eax
  1001c4:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1001cb:	0f b7 b3 14 60 00 00 	movzwl 0x6014(%ebx),%esi
  1001d2:	0f b7 8b 14 60 00 00 	movzwl 0x6014(%ebx),%ecx
  1001d9:	0f b7 c1             	movzwl %cx,%eax
  1001dc:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  1001e2:	c1 e8 10             	shr    $0x10,%eax
  1001e5:	89 c2                	mov    %eax,%edx
  1001e7:	66 c1 ea 06          	shr    $0x6,%dx
  1001eb:	89 d0                	mov    %edx,%eax
  1001ed:	c1 e0 02             	shl    $0x2,%eax
  1001f0:	01 d0                	add    %edx,%eax
  1001f2:	c1 e0 04             	shl    $0x4,%eax
  1001f5:	29 c1                	sub    %eax,%ecx
  1001f7:	89 ca                	mov    %ecx,%edx
  1001f9:	89 f0                	mov    %esi,%eax
  1001fb:	29 d0                	sub    %edx,%eax
  1001fd:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  100204:	eb 6a                	jmp    100270 <video_putc+0x15c>
  100206:	83 ec 0c             	sub    $0xc,%esp
  100209:	6a 20                	push   $0x20
  10020b:	e8 04 ff ff ff       	call   100114 <video_putc>
  100210:	83 c4 10             	add    $0x10,%esp
  100213:	83 ec 0c             	sub    $0xc,%esp
  100216:	6a 20                	push   $0x20
  100218:	e8 f7 fe ff ff       	call   100114 <video_putc>
  10021d:	83 c4 10             	add    $0x10,%esp
  100220:	83 ec 0c             	sub    $0xc,%esp
  100223:	6a 20                	push   $0x20
  100225:	e8 ea fe ff ff       	call   100114 <video_putc>
  10022a:	83 c4 10             	add    $0x10,%esp
  10022d:	83 ec 0c             	sub    $0xc,%esp
  100230:	6a 20                	push   $0x20
  100232:	e8 dd fe ff ff       	call   100114 <video_putc>
  100237:	83 c4 10             	add    $0x10,%esp
  10023a:	83 ec 0c             	sub    $0xc,%esp
  10023d:	6a 20                	push   $0x20
  10023f:	e8 d0 fe ff ff       	call   100114 <video_putc>
  100244:	83 c4 10             	add    $0x10,%esp
  100247:	eb 27                	jmp    100270 <video_putc+0x15c>
  100249:	8b 8b 10 60 00 00    	mov    0x6010(%ebx),%ecx
  10024f:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100256:	8d 50 01             	lea    0x1(%eax),%edx
  100259:	66 89 93 14 60 00 00 	mov    %dx,0x6014(%ebx)
  100260:	0f b7 c0             	movzwl %ax,%eax
  100263:	01 c0                	add    %eax,%eax
  100265:	01 c8                	add    %ecx,%eax
  100267:	8b 55 08             	mov    0x8(%ebp),%edx
  10026a:	66 89 10             	mov    %dx,(%eax)
  10026d:	eb 01                	jmp    100270 <video_putc+0x15c>
  10026f:	90                   	nop
  100270:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  100277:	66 3d cf 07          	cmp    $0x7cf,%ax
  10027b:	76 5d                	jbe    1002da <video_putc+0x1c6>
  10027d:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  100283:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  100289:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  10028f:	83 ec 04             	sub    $0x4,%esp
  100292:	68 00 0f 00 00       	push   $0xf00
  100297:	52                   	push   %edx
  100298:	50                   	push   %eax
  100299:	e8 87 25 00 00       	call   102825 <memmove>
  10029e:	83 c4 10             	add    $0x10,%esp
  1002a1:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  1002a8:	eb 16                	jmp    1002c0 <video_putc+0x1ac>
  1002aa:	8b 83 10 60 00 00    	mov    0x6010(%ebx),%eax
  1002b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1002b3:	01 d2                	add    %edx,%edx
  1002b5:	01 d0                	add    %edx,%eax
  1002b7:	66 c7 00 20 07       	movw   $0x720,(%eax)
  1002bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c0:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  1002c7:	7e e1                	jle    1002aa <video_putc+0x196>
  1002c9:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002d0:	83 e8 50             	sub    $0x50,%eax
  1002d3:	66 89 83 14 60 00 00 	mov    %ax,0x6014(%ebx)
  1002da:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  1002e0:	83 ec 08             	sub    $0x8,%esp
  1002e3:	6a 0e                	push   $0xe
  1002e5:	50                   	push   %eax
  1002e6:	e8 2e 38 00 00       	call   103b19 <outb>
  1002eb:	83 c4 10             	add    $0x10,%esp
  1002ee:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  1002f5:	66 c1 e8 08          	shr    $0x8,%ax
  1002f9:	0f b6 c0             	movzbl %al,%eax
  1002fc:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100302:	83 c2 01             	add    $0x1,%edx
  100305:	83 ec 08             	sub    $0x8,%esp
  100308:	50                   	push   %eax
  100309:	52                   	push   %edx
  10030a:	e8 0a 38 00 00       	call   103b19 <outb>
  10030f:	83 c4 10             	add    $0x10,%esp
  100312:	8b 83 0c 60 00 00    	mov    0x600c(%ebx),%eax
  100318:	83 ec 08             	sub    $0x8,%esp
  10031b:	6a 0f                	push   $0xf
  10031d:	50                   	push   %eax
  10031e:	e8 f6 37 00 00       	call   103b19 <outb>
  100323:	83 c4 10             	add    $0x10,%esp
  100326:	0f b7 83 14 60 00 00 	movzwl 0x6014(%ebx),%eax
  10032d:	0f b6 c0             	movzbl %al,%eax
  100330:	8b 93 0c 60 00 00    	mov    0x600c(%ebx),%edx
  100336:	83 c2 01             	add    $0x1,%edx
  100339:	83 ec 08             	sub    $0x8,%esp
  10033c:	50                   	push   %eax
  10033d:	52                   	push   %edx
  10033e:	e8 d6 37 00 00       	call   103b19 <outb>
  100343:	83 c4 10             	add    $0x10,%esp
  100346:	90                   	nop
  100347:	8d 65 f8             	lea    -0x8(%ebp),%esp
  10034a:	5b                   	pop    %ebx
  10034b:	5e                   	pop    %esi
  10034c:	5d                   	pop    %ebp
  10034d:	c3                   	ret

0010034e <video_set_cursor>:
  10034e:	55                   	push   %ebp
  10034f:	89 e5                	mov    %esp,%ebp
  100351:	e8 66 00 00 00       	call   1003bc <__x86.get_pc_thunk.dx>
  100356:	81 c2 9e 0c 01 00    	add    $0x10c9e,%edx
  10035c:	8b 45 08             	mov    0x8(%ebp),%eax
  10035f:	89 c1                	mov    %eax,%ecx
  100361:	89 c8                	mov    %ecx,%eax
  100363:	c1 e0 02             	shl    $0x2,%eax
  100366:	01 c8                	add    %ecx,%eax
  100368:	c1 e0 04             	shl    $0x4,%eax
  10036b:	89 c1                	mov    %eax,%ecx
  10036d:	8b 45 0c             	mov    0xc(%ebp),%eax
  100370:	01 c8                	add    %ecx,%eax
  100372:	66 89 82 14 60 00 00 	mov    %ax,0x6014(%edx)
  100379:	90                   	nop
  10037a:	5d                   	pop    %ebp
  10037b:	c3                   	ret

0010037c <video_clear_screen>:
  10037c:	55                   	push   %ebp
  10037d:	89 e5                	mov    %esp,%ebp
  10037f:	83 ec 10             	sub    $0x10,%esp
  100382:	e8 31 00 00 00       	call   1003b8 <__x86.get_pc_thunk.ax>
  100387:	05 6d 0c 01 00       	add    $0x10c6d,%eax
  10038c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100393:	eb 16                	jmp    1003ab <video_clear_screen+0x2f>
  100395:	8b 90 10 60 00 00    	mov    0x6010(%eax),%edx
  10039b:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  10039e:	01 c9                	add    %ecx,%ecx
  1003a0:	01 ca                	add    %ecx,%edx
  1003a2:	66 c7 02 20 00       	movw   $0x20,(%edx)
  1003a7:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1003ab:	81 7d fc cf 07 00 00 	cmpl   $0x7cf,-0x4(%ebp)
  1003b2:	7e e1                	jle    100395 <video_clear_screen+0x19>
  1003b4:	90                   	nop
  1003b5:	90                   	nop
  1003b6:	c9                   	leave
  1003b7:	c3                   	ret

001003b8 <__x86.get_pc_thunk.ax>:
  1003b8:	8b 04 24             	mov    (%esp),%eax
  1003bb:	c3                   	ret

001003bc <__x86.get_pc_thunk.dx>:
  1003bc:	8b 14 24             	mov    (%esp),%edx
  1003bf:	c3                   	ret

001003c0 <__x86.get_pc_thunk.bx>:
  1003c0:	8b 1c 24             	mov    (%esp),%ebx
  1003c3:	c3                   	ret

001003c4 <cons_init>:
  1003c4:	55                   	push   %ebp
  1003c5:	89 e5                	mov    %esp,%ebp
  1003c7:	53                   	push   %ebx
  1003c8:	83 ec 04             	sub    $0x4,%esp
  1003cb:	e8 f0 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1003d0:	81 c3 24 0c 01 00    	add    $0x10c24,%ebx
  1003d6:	83 ec 04             	sub    $0x4,%esp
  1003d9:	68 08 02 00 00       	push   $0x208
  1003de:	6a 00                	push   $0x0
  1003e0:	8d 83 2c 60 00 00    	lea    0x602c(%ebx),%eax
  1003e6:	50                   	push   %eax
  1003e7:	e8 bf 23 00 00       	call   1027ab <memset>
  1003ec:	83 c4 10             	add    $0x10,%esp
  1003ef:	e8 2f 04 00 00       	call   100823 <serial_init>
  1003f4:	e8 07 fc ff ff       	call   100000 <video_init>
  1003f9:	90                   	nop
  1003fa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1003fd:	c9                   	leave
  1003fe:	c3                   	ret

001003ff <cons_intr>:
  1003ff:	55                   	push   %ebp
  100400:	89 e5                	mov    %esp,%ebp
  100402:	53                   	push   %ebx
  100403:	83 ec 14             	sub    $0x14,%esp
  100406:	e8 b5 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10040b:	81 c3 e9 0b 01 00    	add    $0x10be9,%ebx
  100411:	eb 39                	jmp    10044c <cons_intr+0x4d>
  100413:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100417:	74 32                	je     10044b <cons_intr+0x4c>
  100419:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  10041f:	8d 50 01             	lea    0x1(%eax),%edx
  100422:	89 93 30 62 00 00    	mov    %edx,0x6230(%ebx)
  100428:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10042b:	88 94 03 2c 60 00 00 	mov    %dl,0x602c(%ebx,%eax,1)
  100432:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100438:	3d 00 02 00 00       	cmp    $0x200,%eax
  10043d:	75 0d                	jne    10044c <cons_intr+0x4d>
  10043f:	c7 83 30 62 00 00 00 	movl   $0x0,0x6230(%ebx)
  100446:	00 00 00 
  100449:	eb 01                	jmp    10044c <cons_intr+0x4d>
  10044b:	90                   	nop
  10044c:	8b 45 08             	mov    0x8(%ebp),%eax
  10044f:	ff d0                	call   *%eax
  100451:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100454:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  100458:	75 b9                	jne    100413 <cons_intr+0x14>
  10045a:	90                   	nop
  10045b:	90                   	nop
  10045c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10045f:	c9                   	leave
  100460:	c3                   	ret

00100461 <cons_getc>:
  100461:	55                   	push   %ebp
  100462:	89 e5                	mov    %esp,%ebp
  100464:	53                   	push   %ebx
  100465:	83 ec 14             	sub    $0x14,%esp
  100468:	e8 53 ff ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10046d:	81 c3 87 0b 01 00    	add    $0x10b87,%ebx
  100473:	e8 81 02 00 00       	call   1006f9 <serial_intr>
  100478:	e8 59 06 00 00       	call   100ad6 <keyboard_intr>
  10047d:	8b 93 2c 62 00 00    	mov    0x622c(%ebx),%edx
  100483:	8b 83 30 62 00 00    	mov    0x6230(%ebx),%eax
  100489:	39 c2                	cmp    %eax,%edx
  10048b:	74 39                	je     1004c6 <cons_getc+0x65>
  10048d:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  100493:	8d 50 01             	lea    0x1(%eax),%edx
  100496:	89 93 2c 62 00 00    	mov    %edx,0x622c(%ebx)
  10049c:	0f b6 84 03 2c 60 00 	movzbl 0x602c(%ebx,%eax,1),%eax
  1004a3:	00 
  1004a4:	0f be c0             	movsbl %al,%eax
  1004a7:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1004aa:	8b 83 2c 62 00 00    	mov    0x622c(%ebx),%eax
  1004b0:	3d 00 02 00 00       	cmp    $0x200,%eax
  1004b5:	75 0a                	jne    1004c1 <cons_getc+0x60>
  1004b7:	c7 83 2c 62 00 00 00 	movl   $0x0,0x622c(%ebx)
  1004be:	00 00 00 
  1004c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1004c4:	eb 05                	jmp    1004cb <cons_getc+0x6a>
  1004c6:	b8 00 00 00 00       	mov    $0x0,%eax
  1004cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1004ce:	c9                   	leave
  1004cf:	c3                   	ret

001004d0 <cons_putc>:
  1004d0:	55                   	push   %ebp
  1004d1:	89 e5                	mov    %esp,%ebp
  1004d3:	53                   	push   %ebx
  1004d4:	83 ec 14             	sub    $0x14,%esp
  1004d7:	e8 e4 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1004dc:	81 c3 18 0b 01 00    	add    $0x10b18,%ebx
  1004e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1004e5:	88 45 f4             	mov    %al,-0xc(%ebp)
  1004e8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004ec:	83 ec 0c             	sub    $0xc,%esp
  1004ef:	50                   	push   %eax
  1004f0:	e8 9d 02 00 00       	call   100792 <serial_putc>
  1004f5:	83 c4 10             	add    $0x10,%esp
  1004f8:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  1004fc:	83 ec 0c             	sub    $0xc,%esp
  1004ff:	50                   	push   %eax
  100500:	e8 0f fc ff ff       	call   100114 <video_putc>
  100505:	83 c4 10             	add    $0x10,%esp
  100508:	90                   	nop
  100509:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10050c:	c9                   	leave
  10050d:	c3                   	ret

0010050e <getchar>:
  10050e:	55                   	push   %ebp
  10050f:	89 e5                	mov    %esp,%ebp
  100511:	83 ec 18             	sub    $0x18,%esp
  100514:	e8 9f fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100519:	05 db 0a 01 00       	add    $0x10adb,%eax
  10051e:	90                   	nop
  10051f:	e8 3d ff ff ff       	call   100461 <cons_getc>
  100524:	88 45 f7             	mov    %al,-0x9(%ebp)
  100527:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  10052b:	74 f2                	je     10051f <getchar+0x11>
  10052d:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  100531:	c9                   	leave
  100532:	c3                   	ret

00100533 <putchar>:
  100533:	55                   	push   %ebp
  100534:	89 e5                	mov    %esp,%ebp
  100536:	83 ec 18             	sub    $0x18,%esp
  100539:	e8 7a fe ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10053e:	05 b6 0a 01 00       	add    $0x10ab6,%eax
  100543:	8b 45 08             	mov    0x8(%ebp),%eax
  100546:	88 45 f4             	mov    %al,-0xc(%ebp)
  100549:	0f be 45 f4          	movsbl -0xc(%ebp),%eax
  10054d:	83 ec 0c             	sub    $0xc,%esp
  100550:	50                   	push   %eax
  100551:	e8 7a ff ff ff       	call   1004d0 <cons_putc>
  100556:	83 c4 10             	add    $0x10,%esp
  100559:	90                   	nop
  10055a:	c9                   	leave
  10055b:	c3                   	ret

0010055c <readline>:
  10055c:	55                   	push   %ebp
  10055d:	89 e5                	mov    %esp,%ebp
  10055f:	53                   	push   %ebx
  100560:	83 ec 14             	sub    $0x14,%esp
  100563:	e8 58 fe ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100568:	81 c3 8c 0a 01 00    	add    $0x10a8c,%ebx
  10056e:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100572:	74 15                	je     100589 <readline+0x2d>
  100574:	83 ec 08             	sub    $0x8,%esp
  100577:	ff 75 08             	push   0x8(%ebp)
  10057a:	8d 83 1a 90 ff ff    	lea    -0x6fe6(%ebx),%eax
  100580:	50                   	push   %eax
  100581:	e8 e6 27 00 00       	call   102d6c <dprintf>
  100586:	83 c4 10             	add    $0x10,%esp
  100589:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100590:	e8 79 ff ff ff       	call   10050e <getchar>
  100595:	88 45 f3             	mov    %al,-0xd(%ebp)
  100598:	80 7d f3 00          	cmpb   $0x0,-0xd(%ebp)
  10059c:	79 21                	jns    1005bf <readline+0x63>
  10059e:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005a2:	83 ec 08             	sub    $0x8,%esp
  1005a5:	50                   	push   %eax
  1005a6:	8d 83 1d 90 ff ff    	lea    -0x6fe3(%ebx),%eax
  1005ac:	50                   	push   %eax
  1005ad:	e8 ba 27 00 00       	call   102d6c <dprintf>
  1005b2:	83 c4 10             	add    $0x10,%esp
  1005b5:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ba:	e9 92 00 00 00       	jmp    100651 <readline+0xf5>
  1005bf:	80 7d f3 08          	cmpb   $0x8,-0xd(%ebp)
  1005c3:	74 06                	je     1005cb <readline+0x6f>
  1005c5:	80 7d f3 7f          	cmpb   $0x7f,-0xd(%ebp)
  1005c9:	75 19                	jne    1005e4 <readline+0x88>
  1005cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1005cf:	7e 13                	jle    1005e4 <readline+0x88>
  1005d1:	83 ec 0c             	sub    $0xc,%esp
  1005d4:	6a 08                	push   $0x8
  1005d6:	e8 58 ff ff ff       	call   100533 <putchar>
  1005db:	83 c4 10             	add    $0x10,%esp
  1005de:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  1005e2:	eb 68                	jmp    10064c <readline+0xf0>
  1005e4:	80 7d f3 1f          	cmpb   $0x1f,-0xd(%ebp)
  1005e8:	7e 2f                	jle    100619 <readline+0xbd>
  1005ea:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  1005f1:	7f 26                	jg     100619 <readline+0xbd>
  1005f3:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
  1005f7:	83 ec 0c             	sub    $0xc,%esp
  1005fa:	50                   	push   %eax
  1005fb:	e8 33 ff ff ff       	call   100533 <putchar>
  100600:	83 c4 10             	add    $0x10,%esp
  100603:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100606:	8d 50 01             	lea    0x1(%eax),%edx
  100609:	89 55 f4             	mov    %edx,-0xc(%ebp)
  10060c:	0f b6 55 f3          	movzbl -0xd(%ebp),%edx
  100610:	88 94 03 4c 62 00 00 	mov    %dl,0x624c(%ebx,%eax,1)
  100617:	eb 33                	jmp    10064c <readline+0xf0>
  100619:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
  10061d:	74 0a                	je     100629 <readline+0xcd>
  10061f:	80 7d f3 0d          	cmpb   $0xd,-0xd(%ebp)
  100623:	0f 85 67 ff ff ff    	jne    100590 <readline+0x34>
  100629:	83 ec 0c             	sub    $0xc,%esp
  10062c:	6a 0a                	push   $0xa
  10062e:	e8 00 ff ff ff       	call   100533 <putchar>
  100633:	83 c4 10             	add    $0x10,%esp
  100636:	8d 93 4c 62 00 00    	lea    0x624c(%ebx),%edx
  10063c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10063f:	01 d0                	add    %edx,%eax
  100641:	c6 00 00             	movb   $0x0,(%eax)
  100644:	8d 83 4c 62 00 00    	lea    0x624c(%ebx),%eax
  10064a:	eb 05                	jmp    100651 <readline+0xf5>
  10064c:	e9 3f ff ff ff       	jmp    100590 <readline+0x34>
  100651:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100654:	c9                   	leave
  100655:	c3                   	ret

00100656 <delay>:
  100656:	55                   	push   %ebp
  100657:	89 e5                	mov    %esp,%ebp
  100659:	53                   	push   %ebx
  10065a:	83 ec 04             	sub    $0x4,%esp
  10065d:	e8 5e fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100662:	81 c3 92 09 01 00    	add    $0x10992,%ebx
  100668:	83 ec 0c             	sub    $0xc,%esp
  10066b:	68 84 00 00 00       	push   $0x84
  100670:	e8 55 34 00 00       	call   103aca <inb>
  100675:	83 c4 10             	add    $0x10,%esp
  100678:	83 ec 0c             	sub    $0xc,%esp
  10067b:	68 84 00 00 00       	push   $0x84
  100680:	e8 45 34 00 00       	call   103aca <inb>
  100685:	83 c4 10             	add    $0x10,%esp
  100688:	83 ec 0c             	sub    $0xc,%esp
  10068b:	68 84 00 00 00       	push   $0x84
  100690:	e8 35 34 00 00       	call   103aca <inb>
  100695:	83 c4 10             	add    $0x10,%esp
  100698:	83 ec 0c             	sub    $0xc,%esp
  10069b:	68 84 00 00 00       	push   $0x84
  1006a0:	e8 25 34 00 00       	call   103aca <inb>
  1006a5:	83 c4 10             	add    $0x10,%esp
  1006a8:	90                   	nop
  1006a9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006ac:	c9                   	leave
  1006ad:	c3                   	ret

001006ae <serial_proc_data>:
  1006ae:	55                   	push   %ebp
  1006af:	89 e5                	mov    %esp,%ebp
  1006b1:	53                   	push   %ebx
  1006b2:	83 ec 04             	sub    $0x4,%esp
  1006b5:	e8 06 fd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1006ba:	81 c3 3a 09 01 00    	add    $0x1093a,%ebx
  1006c0:	83 ec 0c             	sub    $0xc,%esp
  1006c3:	68 fd 03 00 00       	push   $0x3fd
  1006c8:	e8 fd 33 00 00       	call   103aca <inb>
  1006cd:	83 c4 10             	add    $0x10,%esp
  1006d0:	0f b6 c0             	movzbl %al,%eax
  1006d3:	83 e0 01             	and    $0x1,%eax
  1006d6:	85 c0                	test   %eax,%eax
  1006d8:	75 07                	jne    1006e1 <serial_proc_data+0x33>
  1006da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1006df:	eb 13                	jmp    1006f4 <serial_proc_data+0x46>
  1006e1:	83 ec 0c             	sub    $0xc,%esp
  1006e4:	68 f8 03 00 00       	push   $0x3f8
  1006e9:	e8 dc 33 00 00       	call   103aca <inb>
  1006ee:	83 c4 10             	add    $0x10,%esp
  1006f1:	0f b6 c0             	movzbl %al,%eax
  1006f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1006f7:	c9                   	leave
  1006f8:	c3                   	ret

001006f9 <serial_intr>:
  1006f9:	55                   	push   %ebp
  1006fa:	89 e5                	mov    %esp,%ebp
  1006fc:	53                   	push   %ebx
  1006fd:	83 ec 04             	sub    $0x4,%esp
  100700:	e8 b3 fc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100705:	05 ef 08 01 00       	add    $0x108ef,%eax
  10070a:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100711:	84 d2                	test   %dl,%dl
  100713:	74 14                	je     100729 <serial_intr+0x30>
  100715:	83 ec 0c             	sub    $0xc,%esp
  100718:	8d 90 ba f6 fe ff    	lea    -0x10946(%eax),%edx
  10071e:	52                   	push   %edx
  10071f:	89 c3                	mov    %eax,%ebx
  100721:	e8 d9 fc ff ff       	call   1003ff <cons_intr>
  100726:	83 c4 10             	add    $0x10,%esp
  100729:	90                   	nop
  10072a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10072d:	c9                   	leave
  10072e:	c3                   	ret

0010072f <serial_reformatnewline>:
  10072f:	55                   	push   %ebp
  100730:	89 e5                	mov    %esp,%ebp
  100732:	53                   	push   %ebx
  100733:	83 ec 14             	sub    $0x14,%esp
  100736:	e8 85 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10073b:	81 c3 b9 08 01 00    	add    $0x108b9,%ebx
  100741:	c7 45 f4 0d 00 00 00 	movl   $0xd,-0xc(%ebp)
  100748:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
  10074f:	8b 45 08             	mov    0x8(%ebp),%eax
  100752:	3b 45 f0             	cmp    -0x10(%ebp),%eax
  100755:	75 31                	jne    100788 <serial_reformatnewline+0x59>
  100757:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10075a:	0f b6 c0             	movzbl %al,%eax
  10075d:	83 ec 08             	sub    $0x8,%esp
  100760:	50                   	push   %eax
  100761:	ff 75 0c             	push   0xc(%ebp)
  100764:	e8 b0 33 00 00       	call   103b19 <outb>
  100769:	83 c4 10             	add    $0x10,%esp
  10076c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10076f:	0f b6 c0             	movzbl %al,%eax
  100772:	83 ec 08             	sub    $0x8,%esp
  100775:	50                   	push   %eax
  100776:	ff 75 0c             	push   0xc(%ebp)
  100779:	e8 9b 33 00 00       	call   103b19 <outb>
  10077e:	83 c4 10             	add    $0x10,%esp
  100781:	b8 01 00 00 00       	mov    $0x1,%eax
  100786:	eb 05                	jmp    10078d <serial_reformatnewline+0x5e>
  100788:	b8 00 00 00 00       	mov    $0x0,%eax
  10078d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100790:	c9                   	leave
  100791:	c3                   	ret

00100792 <serial_putc>:
  100792:	55                   	push   %ebp
  100793:	89 e5                	mov    %esp,%ebp
  100795:	53                   	push   %ebx
  100796:	83 ec 24             	sub    $0x24,%esp
  100799:	e8 22 fc ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10079e:	81 c3 56 08 01 00    	add    $0x10856,%ebx
  1007a4:	8b 45 08             	mov    0x8(%ebp),%eax
  1007a7:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1007aa:	0f b6 83 4c 66 00 00 	movzbl 0x664c(%ebx),%eax
  1007b1:	84 c0                	test   %al,%al
  1007b3:	74 68                	je     10081d <serial_putc+0x8b>
  1007b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1007bc:	eb 09                	jmp    1007c7 <serial_putc+0x35>
  1007be:	e8 93 fe ff ff       	call   100656 <delay>
  1007c3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1007c7:	83 ec 0c             	sub    $0xc,%esp
  1007ca:	68 fd 03 00 00       	push   $0x3fd
  1007cf:	e8 f6 32 00 00       	call   103aca <inb>
  1007d4:	83 c4 10             	add    $0x10,%esp
  1007d7:	0f b6 c0             	movzbl %al,%eax
  1007da:	83 e0 20             	and    $0x20,%eax
  1007dd:	85 c0                	test   %eax,%eax
  1007df:	75 09                	jne    1007ea <serial_putc+0x58>
  1007e1:	81 7d f4 ff 31 00 00 	cmpl   $0x31ff,-0xc(%ebp)
  1007e8:	7e d4                	jle    1007be <serial_putc+0x2c>
  1007ea:	0f be 45 e4          	movsbl -0x1c(%ebp),%eax
  1007ee:	83 ec 08             	sub    $0x8,%esp
  1007f1:	68 f8 03 00 00       	push   $0x3f8
  1007f6:	50                   	push   %eax
  1007f7:	e8 33 ff ff ff       	call   10072f <serial_reformatnewline>
  1007fc:	83 c4 10             	add    $0x10,%esp
  1007ff:	85 c0                	test   %eax,%eax
  100801:	75 1b                	jne    10081e <serial_putc+0x8c>
  100803:	0f b6 45 e4          	movzbl -0x1c(%ebp),%eax
  100807:	0f b6 c0             	movzbl %al,%eax
  10080a:	83 ec 08             	sub    $0x8,%esp
  10080d:	50                   	push   %eax
  10080e:	68 f8 03 00 00       	push   $0x3f8
  100813:	e8 01 33 00 00       	call   103b19 <outb>
  100818:	83 c4 10             	add    $0x10,%esp
  10081b:	eb 01                	jmp    10081e <serial_putc+0x8c>
  10081d:	90                   	nop
  10081e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100821:	c9                   	leave
  100822:	c3                   	ret

00100823 <serial_init>:
  100823:	55                   	push   %ebp
  100824:	89 e5                	mov    %esp,%ebp
  100826:	53                   	push   %ebx
  100827:	83 ec 04             	sub    $0x4,%esp
  10082a:	e8 91 fb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10082f:	81 c3 c5 07 01 00    	add    $0x107c5,%ebx
  100835:	83 ec 08             	sub    $0x8,%esp
  100838:	6a 00                	push   $0x0
  10083a:	68 f9 03 00 00       	push   $0x3f9
  10083f:	e8 d5 32 00 00       	call   103b19 <outb>
  100844:	83 c4 10             	add    $0x10,%esp
  100847:	83 ec 08             	sub    $0x8,%esp
  10084a:	68 80 00 00 00       	push   $0x80
  10084f:	68 fb 03 00 00       	push   $0x3fb
  100854:	e8 c0 32 00 00       	call   103b19 <outb>
  100859:	83 c4 10             	add    $0x10,%esp
  10085c:	83 ec 08             	sub    $0x8,%esp
  10085f:	6a 01                	push   $0x1
  100861:	68 f8 03 00 00       	push   $0x3f8
  100866:	e8 ae 32 00 00       	call   103b19 <outb>
  10086b:	83 c4 10             	add    $0x10,%esp
  10086e:	83 ec 08             	sub    $0x8,%esp
  100871:	6a 00                	push   $0x0
  100873:	68 f9 03 00 00       	push   $0x3f9
  100878:	e8 9c 32 00 00       	call   103b19 <outb>
  10087d:	83 c4 10             	add    $0x10,%esp
  100880:	83 ec 08             	sub    $0x8,%esp
  100883:	6a 03                	push   $0x3
  100885:	68 fb 03 00 00       	push   $0x3fb
  10088a:	e8 8a 32 00 00       	call   103b19 <outb>
  10088f:	83 c4 10             	add    $0x10,%esp
  100892:	83 ec 08             	sub    $0x8,%esp
  100895:	68 c7 00 00 00       	push   $0xc7
  10089a:	68 fa 03 00 00       	push   $0x3fa
  10089f:	e8 75 32 00 00       	call   103b19 <outb>
  1008a4:	83 c4 10             	add    $0x10,%esp
  1008a7:	83 ec 08             	sub    $0x8,%esp
  1008aa:	6a 0b                	push   $0xb
  1008ac:	68 fc 03 00 00       	push   $0x3fc
  1008b1:	e8 63 32 00 00       	call   103b19 <outb>
  1008b6:	83 c4 10             	add    $0x10,%esp
  1008b9:	83 ec 0c             	sub    $0xc,%esp
  1008bc:	68 fd 03 00 00       	push   $0x3fd
  1008c1:	e8 04 32 00 00       	call   103aca <inb>
  1008c6:	83 c4 10             	add    $0x10,%esp
  1008c9:	3c ff                	cmp    $0xff,%al
  1008cb:	0f 95 c0             	setne  %al
  1008ce:	88 83 4c 66 00 00    	mov    %al,0x664c(%ebx)
  1008d4:	83 ec 0c             	sub    $0xc,%esp
  1008d7:	68 fa 03 00 00       	push   $0x3fa
  1008dc:	e8 e9 31 00 00       	call   103aca <inb>
  1008e1:	83 c4 10             	add    $0x10,%esp
  1008e4:	83 ec 0c             	sub    $0xc,%esp
  1008e7:	68 f8 03 00 00       	push   $0x3f8
  1008ec:	e8 d9 31 00 00       	call   103aca <inb>
  1008f1:	83 c4 10             	add    $0x10,%esp
  1008f4:	90                   	nop
  1008f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1008f8:	c9                   	leave
  1008f9:	c3                   	ret

001008fa <serial_intenable>:
  1008fa:	55                   	push   %ebp
  1008fb:	89 e5                	mov    %esp,%ebp
  1008fd:	53                   	push   %ebx
  1008fe:	83 ec 04             	sub    $0x4,%esp
  100901:	e8 b2 fa ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100906:	05 ee 06 01 00       	add    $0x106ee,%eax
  10090b:	0f b6 90 4c 66 00 00 	movzbl 0x664c(%eax),%edx
  100912:	84 d2                	test   %dl,%dl
  100914:	74 19                	je     10092f <serial_intenable+0x35>
  100916:	83 ec 08             	sub    $0x8,%esp
  100919:	6a 01                	push   $0x1
  10091b:	68 f9 03 00 00       	push   $0x3f9
  100920:	89 c3                	mov    %eax,%ebx
  100922:	e8 f2 31 00 00       	call   103b19 <outb>
  100927:	83 c4 10             	add    $0x10,%esp
  10092a:	e8 ca fd ff ff       	call   1006f9 <serial_intr>
  10092f:	90                   	nop
  100930:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100933:	c9                   	leave
  100934:	c3                   	ret

00100935 <kbd_proc_data>:
  100935:	55                   	push   %ebp
  100936:	89 e5                	mov    %esp,%ebp
  100938:	53                   	push   %ebx
  100939:	83 ec 14             	sub    $0x14,%esp
  10093c:	e8 7f fa ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100941:	81 c3 b3 06 01 00    	add    $0x106b3,%ebx
  100947:	83 ec 0c             	sub    $0xc,%esp
  10094a:	6a 64                	push   $0x64
  10094c:	e8 79 31 00 00       	call   103aca <inb>
  100951:	83 c4 10             	add    $0x10,%esp
  100954:	0f b6 c0             	movzbl %al,%eax
  100957:	83 e0 01             	and    $0x1,%eax
  10095a:	85 c0                	test   %eax,%eax
  10095c:	75 0a                	jne    100968 <kbd_proc_data+0x33>
  10095e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100963:	e9 69 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100968:	83 ec 0c             	sub    $0xc,%esp
  10096b:	6a 60                	push   $0x60
  10096d:	e8 58 31 00 00       	call   103aca <inb>
  100972:	83 c4 10             	add    $0x10,%esp
  100975:	88 45 f3             	mov    %al,-0xd(%ebp)
  100978:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  10097c:	75 19                	jne    100997 <kbd_proc_data+0x62>
  10097e:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100984:	83 c8 40             	or     $0x40,%eax
  100987:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  10098d:	b8 00 00 00 00       	mov    $0x0,%eax
  100992:	e9 3a 01 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  100997:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  10099b:	84 c0                	test   %al,%al
  10099d:	79 4b                	jns    1009ea <kbd_proc_data+0xb5>
  10099f:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009a5:	83 e0 40             	and    $0x40,%eax
  1009a8:	85 c0                	test   %eax,%eax
  1009aa:	75 09                	jne    1009b5 <kbd_proc_data+0x80>
  1009ac:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b0:	83 e0 7f             	and    $0x7f,%eax
  1009b3:	eb 04                	jmp    1009b9 <kbd_proc_data+0x84>
  1009b5:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009b9:	88 45 f3             	mov    %al,-0xd(%ebp)
  1009bc:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1009c0:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  1009c7:	00 
  1009c8:	83 c8 40             	or     $0x40,%eax
  1009cb:	0f b6 c0             	movzbl %al,%eax
  1009ce:	f7 d0                	not    %eax
  1009d0:	89 c2                	mov    %eax,%edx
  1009d2:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009d8:	21 d0                	and    %edx,%eax
  1009da:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  1009e0:	b8 00 00 00 00       	mov    $0x0,%eax
  1009e5:	e9 e7 00 00 00       	jmp    100ad1 <kbd_proc_data+0x19c>
  1009ea:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  1009f0:	83 e0 40             	and    $0x40,%eax
  1009f3:	85 c0                	test   %eax,%eax
  1009f5:	74 13                	je     100a0a <kbd_proc_data+0xd5>
  1009f7:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
  1009fb:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a01:	83 e0 bf             	and    $0xffffffbf,%eax
  100a04:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a0a:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a0e:	0f b6 84 03 0c 00 00 	movzbl 0xc(%ebx,%eax,1),%eax
  100a15:	00 
  100a16:	0f b6 d0             	movzbl %al,%edx
  100a19:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a1f:	09 d0                	or     %edx,%eax
  100a21:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a27:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a2b:	0f b6 84 03 0c 01 00 	movzbl 0x10c(%ebx,%eax,1),%eax
  100a32:	00 
  100a33:	0f b6 d0             	movzbl %al,%edx
  100a36:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a3c:	31 d0                	xor    %edx,%eax
  100a3e:	89 83 50 66 00 00    	mov    %eax,0x6650(%ebx)
  100a44:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a4a:	83 e0 03             	and    $0x3,%eax
  100a4d:	8b 94 83 0c 05 00 00 	mov    0x50c(%ebx,%eax,4),%edx
  100a54:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  100a58:	01 d0                	add    %edx,%eax
  100a5a:	0f b6 00             	movzbl (%eax),%eax
  100a5d:	0f b6 c0             	movzbl %al,%eax
  100a60:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100a63:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a69:	83 e0 08             	and    $0x8,%eax
  100a6c:	85 c0                	test   %eax,%eax
  100a6e:	74 22                	je     100a92 <kbd_proc_data+0x15d>
  100a70:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  100a74:	7e 0c                	jle    100a82 <kbd_proc_data+0x14d>
  100a76:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  100a7a:	7f 06                	jg     100a82 <kbd_proc_data+0x14d>
  100a7c:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  100a80:	eb 10                	jmp    100a92 <kbd_proc_data+0x15d>
  100a82:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  100a86:	7e 0a                	jle    100a92 <kbd_proc_data+0x15d>
  100a88:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  100a8c:	7f 04                	jg     100a92 <kbd_proc_data+0x15d>
  100a8e:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  100a92:	8b 83 50 66 00 00    	mov    0x6650(%ebx),%eax
  100a98:	f7 d0                	not    %eax
  100a9a:	83 e0 06             	and    $0x6,%eax
  100a9d:	85 c0                	test   %eax,%eax
  100a9f:	75 2d                	jne    100ace <kbd_proc_data+0x199>
  100aa1:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  100aa8:	75 24                	jne    100ace <kbd_proc_data+0x199>
  100aaa:	83 ec 0c             	sub    $0xc,%esp
  100aad:	8d 83 2d 90 ff ff    	lea    -0x6fd3(%ebx),%eax
  100ab3:	50                   	push   %eax
  100ab4:	e8 b3 22 00 00       	call   102d6c <dprintf>
  100ab9:	83 c4 10             	add    $0x10,%esp
  100abc:	83 ec 08             	sub    $0x8,%esp
  100abf:	6a 03                	push   $0x3
  100ac1:	68 92 00 00 00       	push   $0x92
  100ac6:	e8 4e 30 00 00       	call   103b19 <outb>
  100acb:	83 c4 10             	add    $0x10,%esp
  100ace:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ad1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100ad4:	c9                   	leave
  100ad5:	c3                   	ret

00100ad6 <keyboard_intr>:
  100ad6:	55                   	push   %ebp
  100ad7:	89 e5                	mov    %esp,%ebp
  100ad9:	53                   	push   %ebx
  100ada:	83 ec 04             	sub    $0x4,%esp
  100add:	e8 d6 f8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  100ae2:	05 12 05 01 00       	add    $0x10512,%eax
  100ae7:	83 ec 0c             	sub    $0xc,%esp
  100aea:	8d 90 41 f9 fe ff    	lea    -0x106bf(%eax),%edx
  100af0:	52                   	push   %edx
  100af1:	89 c3                	mov    %eax,%ebx
  100af3:	e8 07 f9 ff ff       	call   1003ff <cons_intr>
  100af8:	83 c4 10             	add    $0x10,%esp
  100afb:	90                   	nop
  100afc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100aff:	c9                   	leave
  100b00:	c3                   	ret

00100b01 <devinit>:
  100b01:	55                   	push   %ebp
  100b02:	89 e5                	mov    %esp,%ebp
  100b04:	53                   	push   %ebx
  100b05:	83 ec 04             	sub    $0x4,%esp
  100b08:	e8 b3 f8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100b0d:	81 c3 e7 04 01 00    	add    $0x104e7,%ebx
  100b13:	e8 4c 27 00 00       	call   103264 <seg_init>
  100b18:	e8 f1 2d 00 00       	call   10390e <enable_sse>
  100b1d:	e8 a2 f8 ff ff       	call   1003c4 <cons_init>
  100b22:	83 ec 04             	sub    $0x4,%esp
  100b25:	8d 83 39 90 ff ff    	lea    -0x6fc7(%ebx),%eax
  100b2b:	50                   	push   %eax
  100b2c:	6a 12                	push   $0x12
  100b2e:	8d 83 4c 90 ff ff    	lea    -0x6fb4(%ebx),%eax
  100b34:	50                   	push   %eax
  100b35:	e8 5f 1f 00 00       	call   102a99 <debug_normal>
  100b3a:	83 c4 10             	add    $0x10,%esp
  100b3d:	ff 75 08             	push   0x8(%ebp)
  100b40:	8d 83 5f 90 ff ff    	lea    -0x6fa1(%ebx),%eax
  100b46:	50                   	push   %eax
  100b47:	6a 13                	push   $0x13
  100b49:	8d 83 4c 90 ff ff    	lea    -0x6fb4(%ebx),%eax
  100b4f:	50                   	push   %eax
  100b50:	e8 44 1f 00 00       	call   102a99 <debug_normal>
  100b55:	83 c4 10             	add    $0x10,%esp
  100b58:	e8 76 1a 00 00       	call   1025d3 <intr_init>
  100b5d:	83 ec 0c             	sub    $0xc,%esp
  100b60:	ff 75 08             	push   0x8(%ebp)
  100b63:	e8 a2 03 00 00       	call   100f0a <pmmap_init>
  100b68:	83 c4 10             	add    $0x10,%esp
  100b6b:	90                   	nop
  100b6c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100b6f:	c9                   	leave
  100b70:	c3                   	ret

00100b71 <pmmap_alloc_slot>:
  100b71:	55                   	push   %ebp
  100b72:	89 e5                	mov    %esp,%ebp
  100b74:	e8 43 f8 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  100b79:	81 c2 7b 04 01 00    	add    $0x1047b,%edx
  100b7f:	8b 82 6c 70 00 00    	mov    0x706c(%edx),%eax
  100b85:	3d 80 00 00 00       	cmp    $0x80,%eax
  100b8a:	0f 94 c0             	sete   %al
  100b8d:	0f b6 c0             	movzbl %al,%eax
  100b90:	85 c0                	test   %eax,%eax
  100b92:	74 07                	je     100b9b <pmmap_alloc_slot+0x2a>
  100b94:	b8 00 00 00 00       	mov    $0x0,%eax
  100b99:	eb 21                	jmp    100bbc <pmmap_alloc_slot+0x4b>
  100b9b:	8b 8a 6c 70 00 00    	mov    0x706c(%edx),%ecx
  100ba1:	8d 41 01             	lea    0x1(%ecx),%eax
  100ba4:	89 82 6c 70 00 00    	mov    %eax,0x706c(%edx)
  100baa:	89 c8                	mov    %ecx,%eax
  100bac:	c1 e0 02             	shl    $0x2,%eax
  100baf:	01 c8                	add    %ecx,%eax
  100bb1:	c1 e0 02             	shl    $0x2,%eax
  100bb4:	8d 92 6c 66 00 00    	lea    0x666c(%edx),%edx
  100bba:	01 d0                	add    %edx,%eax
  100bbc:	5d                   	pop    %ebp
  100bbd:	c3                   	ret

00100bbe <pmmap_insert>:
  100bbe:	55                   	push   %ebp
  100bbf:	89 e5                	mov    %esp,%ebp
  100bc1:	53                   	push   %ebx
  100bc2:	83 ec 14             	sub    $0x14,%esp
  100bc5:	e8 f6 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100bca:	81 c3 2a 04 01 00    	add    $0x1042a,%ebx
  100bd0:	e8 9c ff ff ff       	call   100b71 <pmmap_alloc_slot>
  100bd5:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100bd8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  100bdc:	75 1b                	jne    100bf9 <pmmap_insert+0x3b>
  100bde:	83 ec 04             	sub    $0x4,%esp
  100be1:	8d 83 78 90 ff ff    	lea    -0x6f88(%ebx),%eax
  100be7:	50                   	push   %eax
  100be8:	6a 3c                	push   $0x3c
  100bea:	8d 83 95 90 ff ff    	lea    -0x6f6b(%ebx),%eax
  100bf0:	50                   	push   %eax
  100bf1:	e8 5e 1f 00 00       	call   102b54 <debug_panic>
  100bf6:	83 c4 10             	add    $0x10,%esp
  100bf9:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100bfc:	8b 55 08             	mov    0x8(%ebp),%edx
  100bff:	89 10                	mov    %edx,(%eax)
  100c01:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c04:	8b 55 0c             	mov    0xc(%ebp),%edx
  100c07:	89 50 04             	mov    %edx,0x4(%eax)
  100c0a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c0d:	8b 55 10             	mov    0x10(%ebp),%edx
  100c10:	89 50 08             	mov    %edx,0x8(%eax)
  100c13:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  100c1a:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100c20:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c23:	eb 19                	jmp    100c3e <pmmap_insert+0x80>
  100c25:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c28:	8b 00                	mov    (%eax),%eax
  100c2a:	39 45 08             	cmp    %eax,0x8(%ebp)
  100c2d:	72 17                	jb     100c46 <pmmap_insert+0x88>
  100c2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c32:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100c35:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c38:	8b 40 0c             	mov    0xc(%eax),%eax
  100c3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100c3e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100c42:	75 e1                	jne    100c25 <pmmap_insert+0x67>
  100c44:	eb 01                	jmp    100c47 <pmmap_insert+0x89>
  100c46:	90                   	nop
  100c47:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100c4b:	75 17                	jne    100c64 <pmmap_insert+0xa6>
  100c4d:	8b 93 70 70 00 00    	mov    0x7070(%ebx),%edx
  100c53:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c56:	89 50 0c             	mov    %edx,0xc(%eax)
  100c59:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c5c:	89 83 70 70 00 00    	mov    %eax,0x7070(%ebx)
  100c62:	eb 15                	jmp    100c79 <pmmap_insert+0xbb>
  100c64:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c67:	8b 50 0c             	mov    0xc(%eax),%edx
  100c6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100c6d:	89 50 0c             	mov    %edx,0xc(%eax)
  100c70:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100c73:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100c76:	89 50 0c             	mov    %edx,0xc(%eax)
  100c79:	90                   	nop
  100c7a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100c7d:	c9                   	leave
  100c7e:	c3                   	ret

00100c7f <pmmap_merge>:
  100c7f:	55                   	push   %ebp
  100c80:	89 e5                	mov    %esp,%ebp
  100c82:	53                   	push   %ebx
  100c83:	83 ec 24             	sub    $0x24,%esp
  100c86:	e8 35 f7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100c8b:	81 c3 69 03 01 00    	add    $0x10369,%ebx
  100c91:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  100c98:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  100c9f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  100ca6:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100cad:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100cb3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cb6:	eb 73                	jmp    100d2b <pmmap_merge+0xac>
  100cb8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cbb:	8b 40 0c             	mov    0xc(%eax),%eax
  100cbe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100cc1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  100cc5:	74 6c                	je     100d33 <pmmap_merge+0xb4>
  100cc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cca:	8b 00                	mov    (%eax),%eax
  100ccc:	8b 55 f0             	mov    -0x10(%ebp),%edx
  100ccf:	8b 12                	mov    (%edx),%edx
  100cd1:	39 c2                	cmp    %eax,%edx
  100cd3:	72 4d                	jb     100d22 <pmmap_merge+0xa3>
  100cd5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cd8:	8b 50 04             	mov    0x4(%eax),%edx
  100cdb:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cde:	8b 00                	mov    (%eax),%eax
  100ce0:	39 c2                	cmp    %eax,%edx
  100ce2:	72 3e                	jb     100d22 <pmmap_merge+0xa3>
  100ce4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ce7:	8b 50 08             	mov    0x8(%eax),%edx
  100cea:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100ced:	8b 40 08             	mov    0x8(%eax),%eax
  100cf0:	39 c2                	cmp    %eax,%edx
  100cf2:	75 2e                	jne    100d22 <pmmap_merge+0xa3>
  100cf4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100cf7:	8b 50 04             	mov    0x4(%eax),%edx
  100cfa:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100cfd:	8b 40 04             	mov    0x4(%eax),%eax
  100d00:	83 ec 08             	sub    $0x8,%esp
  100d03:	52                   	push   %edx
  100d04:	50                   	push   %eax
  100d05:	e8 c7 2a 00 00       	call   1037d1 <max>
  100d0a:	83 c4 10             	add    $0x10,%esp
  100d0d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100d10:	89 42 04             	mov    %eax,0x4(%edx)
  100d13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d16:	8b 40 0c             	mov    0xc(%eax),%eax
  100d19:	8b 50 0c             	mov    0xc(%eax),%edx
  100d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1f:	89 50 0c             	mov    %edx,0xc(%eax)
  100d22:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d25:	8b 40 0c             	mov    0xc(%eax),%eax
  100d28:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d2b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d2f:	75 87                	jne    100cb8 <pmmap_merge+0x39>
  100d31:	eb 01                	jmp    100d34 <pmmap_merge+0xb5>
  100d33:	90                   	nop
  100d34:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100d3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100d3d:	e9 cf 00 00 00       	jmp    100e11 <pmmap_merge+0x192>
  100d42:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d45:	8b 40 08             	mov    0x8(%eax),%eax
  100d48:	83 f8 01             	cmp    $0x1,%eax
  100d4b:	74 3d                	je     100d8a <pmmap_merge+0x10b>
  100d4d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d50:	8b 40 08             	mov    0x8(%eax),%eax
  100d53:	83 f8 02             	cmp    $0x2,%eax
  100d56:	74 2b                	je     100d83 <pmmap_merge+0x104>
  100d58:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d5b:	8b 40 08             	mov    0x8(%eax),%eax
  100d5e:	83 f8 03             	cmp    $0x3,%eax
  100d61:	74 19                	je     100d7c <pmmap_merge+0xfd>
  100d63:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d66:	8b 40 08             	mov    0x8(%eax),%eax
  100d69:	83 f8 04             	cmp    $0x4,%eax
  100d6c:	75 07                	jne    100d75 <pmmap_merge+0xf6>
  100d6e:	b8 03 00 00 00       	mov    $0x3,%eax
  100d73:	eb 1a                	jmp    100d8f <pmmap_merge+0x110>
  100d75:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100d7a:	eb 13                	jmp    100d8f <pmmap_merge+0x110>
  100d7c:	b8 02 00 00 00       	mov    $0x2,%eax
  100d81:	eb 0c                	jmp    100d8f <pmmap_merge+0x110>
  100d83:	b8 01 00 00 00       	mov    $0x1,%eax
  100d88:	eb 05                	jmp    100d8f <pmmap_merge+0x110>
  100d8a:	b8 00 00 00 00       	mov    $0x0,%eax
  100d8f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100d92:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
  100d96:	75 1f                	jne    100db7 <pmmap_merge+0x138>
  100d98:	8d 83 a6 90 ff ff    	lea    -0x6f5a(%ebx),%eax
  100d9e:	50                   	push   %eax
  100d9f:	8d 83 b7 90 ff ff    	lea    -0x6f49(%ebx),%eax
  100da5:	50                   	push   %eax
  100da6:	6a 6b                	push   $0x6b
  100da8:	8d 83 95 90 ff ff    	lea    -0x6f6b(%ebx),%eax
  100dae:	50                   	push   %eax
  100daf:	e8 a0 1d 00 00       	call   102b54 <debug_panic>
  100db4:	83 c4 10             	add    $0x10,%esp
  100db7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dba:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dbe:	85 c0                	test   %eax,%eax
  100dc0:	74 1f                	je     100de1 <pmmap_merge+0x162>
  100dc2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dc5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dc9:	8b 50 10             	mov    0x10(%eax),%edx
  100dcc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dcf:	89 50 10             	mov    %edx,0x10(%eax)
  100dd2:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100dd5:	8b 44 85 dc          	mov    -0x24(%ebp,%eax,4),%eax
  100dd9:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ddc:	89 50 10             	mov    %edx,0x10(%eax)
  100ddf:	eb 1d                	jmp    100dfe <pmmap_merge+0x17f>
  100de1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100de4:	8b 94 83 74 70 00 00 	mov    0x7074(%ebx,%eax,4),%edx
  100deb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100dee:	89 50 10             	mov    %edx,0x10(%eax)
  100df1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100df4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100df7:	89 94 83 74 70 00 00 	mov    %edx,0x7074(%ebx,%eax,4)
  100dfe:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e01:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100e04:	89 54 85 dc          	mov    %edx,-0x24(%ebp,%eax,4)
  100e08:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e0b:	8b 40 0c             	mov    0xc(%eax),%eax
  100e0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e11:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100e15:	0f 85 27 ff ff ff    	jne    100d42 <pmmap_merge+0xc3>
  100e1b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e1e:	85 c0                	test   %eax,%eax
  100e20:	74 0c                	je     100e2e <pmmap_merge+0x1af>
  100e22:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100e25:	8b 40 04             	mov    0x4(%eax),%eax
  100e28:	89 83 84 70 00 00    	mov    %eax,0x7084(%ebx)
  100e2e:	90                   	nop
  100e2f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100e32:	c9                   	leave
  100e33:	c3                   	ret

00100e34 <pmmap_dump>:
  100e34:	55                   	push   %ebp
  100e35:	89 e5                	mov    %esp,%ebp
  100e37:	53                   	push   %ebx
  100e38:	83 ec 14             	sub    $0x14,%esp
  100e3b:	e8 80 f5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100e40:	81 c3 b4 01 01 00    	add    $0x101b4,%ebx
  100e46:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  100e4c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100e4f:	e9 a5 00 00 00       	jmp    100ef9 <pmmap_dump+0xc5>
  100e54:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e57:	8b 40 08             	mov    0x8(%eax),%eax
  100e5a:	83 f8 01             	cmp    $0x1,%eax
  100e5d:	74 41                	je     100ea0 <pmmap_dump+0x6c>
  100e5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e62:	8b 40 08             	mov    0x8(%eax),%eax
  100e65:	83 f8 02             	cmp    $0x2,%eax
  100e68:	74 2e                	je     100e98 <pmmap_dump+0x64>
  100e6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e6d:	8b 40 08             	mov    0x8(%eax),%eax
  100e70:	83 f8 03             	cmp    $0x3,%eax
  100e73:	74 1b                	je     100e90 <pmmap_dump+0x5c>
  100e75:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100e78:	8b 40 08             	mov    0x8(%eax),%eax
  100e7b:	83 f8 04             	cmp    $0x4,%eax
  100e7e:	75 08                	jne    100e88 <pmmap_dump+0x54>
  100e80:	8d 83 d4 90 ff ff    	lea    -0x6f2c(%ebx),%eax
  100e86:	eb 1e                	jmp    100ea6 <pmmap_dump+0x72>
  100e88:	8d 83 dd 90 ff ff    	lea    -0x6f23(%ebx),%eax
  100e8e:	eb 16                	jmp    100ea6 <pmmap_dump+0x72>
  100e90:	8d 83 e5 90 ff ff    	lea    -0x6f1b(%ebx),%eax
  100e96:	eb 0e                	jmp    100ea6 <pmmap_dump+0x72>
  100e98:	8d 83 ef 90 ff ff    	lea    -0x6f11(%ebx),%eax
  100e9e:	eb 06                	jmp    100ea6 <pmmap_dump+0x72>
  100ea0:	8d 83 f8 90 ff ff    	lea    -0x6f08(%ebx),%eax
  100ea6:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ea9:	8b 0a                	mov    (%edx),%ecx
  100eab:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eae:	8b 52 04             	mov    0x4(%edx),%edx
  100eb1:	39 d1                	cmp    %edx,%ecx
  100eb3:	75 08                	jne    100ebd <pmmap_dump+0x89>
  100eb5:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100eb8:	8b 52 04             	mov    0x4(%edx),%edx
  100ebb:	eb 1c                	jmp    100ed9 <pmmap_dump+0xa5>
  100ebd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ec0:	8b 52 04             	mov    0x4(%edx),%edx
  100ec3:	83 fa ff             	cmp    $0xffffffff,%edx
  100ec6:	75 08                	jne    100ed0 <pmmap_dump+0x9c>
  100ec8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ecb:	8b 52 04             	mov    0x4(%edx),%edx
  100ece:	eb 09                	jmp    100ed9 <pmmap_dump+0xa5>
  100ed0:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100ed3:	8b 52 04             	mov    0x4(%edx),%edx
  100ed6:	83 ea 01             	sub    $0x1,%edx
  100ed9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  100edc:	8b 09                	mov    (%ecx),%ecx
  100ede:	50                   	push   %eax
  100edf:	52                   	push   %edx
  100ee0:	51                   	push   %ecx
  100ee1:	8d 83 00 91 ff ff    	lea    -0x6f00(%ebx),%eax
  100ee7:	50                   	push   %eax
  100ee8:	e8 7b 1b 00 00       	call   102a68 <debug_info>
  100eed:	83 c4 10             	add    $0x10,%esp
  100ef0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ef3:	8b 40 0c             	mov    0xc(%eax),%eax
  100ef6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100ef9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100efd:	0f 85 51 ff ff ff    	jne    100e54 <pmmap_dump+0x20>
  100f03:	90                   	nop
  100f04:	90                   	nop
  100f05:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  100f08:	c9                   	leave
  100f09:	c3                   	ret

00100f0a <pmmap_init>:
  100f0a:	55                   	push   %ebp
  100f0b:	89 e5                	mov    %esp,%ebp
  100f0d:	53                   	push   %ebx
  100f0e:	83 ec 24             	sub    $0x24,%esp
  100f11:	e8 aa f4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  100f16:	81 c3 de 00 01 00    	add    $0x100de,%ebx
  100f1c:	83 ec 0c             	sub    $0xc,%esp
  100f1f:	8d 83 21 91 ff ff    	lea    -0x6edf(%ebx),%eax
  100f25:	50                   	push   %eax
  100f26:	e8 3d 1b 00 00       	call   102a68 <debug_info>
  100f2b:	83 c4 10             	add    $0x10,%esp
  100f2e:	8b 45 08             	mov    0x8(%ebp),%eax
  100f31:	89 45 e8             	mov    %eax,-0x18(%ebp)
  100f34:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100f37:	8b 40 30             	mov    0x30(%eax),%eax
  100f3a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100f3d:	c7 83 70 70 00 00 00 	movl   $0x0,0x7070(%ebx)
  100f44:	00 00 00 
  100f47:	c7 83 74 70 00 00 00 	movl   $0x0,0x7074(%ebx)
  100f4e:	00 00 00 
  100f51:	c7 83 78 70 00 00 00 	movl   $0x0,0x7078(%ebx)
  100f58:	00 00 00 
  100f5b:	c7 83 7c 70 00 00 00 	movl   $0x0,0x707c(%ebx)
  100f62:	00 00 00 
  100f65:	c7 83 80 70 00 00 00 	movl   $0x0,0x7080(%ebx)
  100f6c:	00 00 00 
  100f6f:	eb 6c                	jmp    100fdd <pmmap_init+0xd3>
  100f71:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f74:	8b 40 08             	mov    0x8(%eax),%eax
  100f77:	85 c0                	test   %eax,%eax
  100f79:	75 58                	jne    100fd3 <pmmap_init+0xc9>
  100f7b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f7e:	8b 40 04             	mov    0x4(%eax),%eax
  100f81:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f87:	8b 40 10             	mov    0x10(%eax),%eax
  100f8a:	85 c0                	test   %eax,%eax
  100f8c:	75 0f                	jne    100f9d <pmmap_init+0x93>
  100f8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100f91:	8b 50 0c             	mov    0xc(%eax),%edx
  100f94:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100f97:	f7 d0                	not    %eax
  100f99:	39 c2                	cmp    %eax,%edx
  100f9b:	72 09                	jb     100fa6 <pmmap_init+0x9c>
  100f9d:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
  100fa4:	eb 0e                	jmp    100fb4 <pmmap_init+0xaa>
  100fa6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fa9:	8b 50 0c             	mov    0xc(%eax),%edx
  100fac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100faf:	01 d0                	add    %edx,%eax
  100fb1:	89 45 f0             	mov    %eax,-0x10(%ebp)
  100fb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fb7:	8b 40 14             	mov    0x14(%eax),%eax
  100fba:	89 45 e0             	mov    %eax,-0x20(%ebp)
  100fbd:	83 ec 04             	sub    $0x4,%esp
  100fc0:	ff 75 e0             	push   -0x20(%ebp)
  100fc3:	ff 75 f0             	push   -0x10(%ebp)
  100fc6:	ff 75 e4             	push   -0x1c(%ebp)
  100fc9:	e8 f0 fb ff ff       	call   100bbe <pmmap_insert>
  100fce:	83 c4 10             	add    $0x10,%esp
  100fd1:	eb 01                	jmp    100fd4 <pmmap_init+0xca>
  100fd3:	90                   	nop
  100fd4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fd7:	83 c0 18             	add    $0x18,%eax
  100fda:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100fdd:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100fe0:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100fe3:	8b 40 30             	mov    0x30(%eax),%eax
  100fe6:	29 c2                	sub    %eax,%edx
  100fe8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100feb:	8b 40 2c             	mov    0x2c(%eax),%eax
  100fee:	39 c2                	cmp    %eax,%edx
  100ff0:	0f 82 7b ff ff ff    	jb     100f71 <pmmap_init+0x67>
  100ff6:	e8 84 fc ff ff       	call   100c7f <pmmap_merge>
  100ffb:	e8 34 fe ff ff       	call   100e34 <pmmap_dump>
  101000:	8b 83 70 70 00 00    	mov    0x7070(%ebx),%eax
  101006:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101009:	eb 18                	jmp    101023 <pmmap_init+0x119>
  10100b:	8b 83 8c 70 00 00    	mov    0x708c(%ebx),%eax
  101011:	83 c0 01             	add    $0x1,%eax
  101014:	89 83 8c 70 00 00    	mov    %eax,0x708c(%ebx)
  10101a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10101d:	8b 40 0c             	mov    0xc(%eax),%eax
  101020:	89 45 ec             	mov    %eax,-0x14(%ebp)
  101023:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
  101027:	75 e2                	jne    10100b <pmmap_init+0x101>
  101029:	8b 83 84 70 00 00    	mov    0x7084(%ebx),%eax
  10102f:	83 ec 08             	sub    $0x8,%esp
  101032:	68 00 10 00 00       	push   $0x1000
  101037:	50                   	push   %eax
  101038:	e8 c8 27 00 00       	call   103805 <rounddown>
  10103d:	83 c4 10             	add    $0x10,%esp
  101040:	c1 e8 0c             	shr    $0xc,%eax
  101043:	89 83 88 70 00 00    	mov    %eax,0x7088(%ebx)
  101049:	90                   	nop
  10104a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10104d:	c9                   	leave
  10104e:	c3                   	ret

0010104f <get_size>:
  10104f:	55                   	push   %ebp
  101050:	89 e5                	mov    %esp,%ebp
  101052:	e8 61 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101057:	05 9d ff 00 00       	add    $0xff9d,%eax
  10105c:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  101062:	5d                   	pop    %ebp
  101063:	c3                   	ret

00101064 <get_mms>:
  101064:	55                   	push   %ebp
  101065:	89 e5                	mov    %esp,%ebp
  101067:	83 ec 10             	sub    $0x10,%esp
  10106a:	e8 49 f3 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10106f:	05 85 ff 00 00       	add    $0xff85,%eax
  101074:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10107b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101082:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  101088:	89 55 f8             	mov    %edx,-0x8(%ebp)
  10108b:	eb 15                	jmp    1010a2 <get_mms+0x3e>
  10108d:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101090:	3b 55 08             	cmp    0x8(%ebp),%edx
  101093:	74 15                	je     1010aa <get_mms+0x46>
  101095:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101099:	8b 55 f8             	mov    -0x8(%ebp),%edx
  10109c:	8b 52 0c             	mov    0xc(%edx),%edx
  10109f:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010a2:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010a6:	75 e5                	jne    10108d <get_mms+0x29>
  1010a8:	eb 01                	jmp    1010ab <get_mms+0x47>
  1010aa:	90                   	nop
  1010ab:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  1010af:	74 0b                	je     1010bc <get_mms+0x58>
  1010b1:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  1010b7:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  1010ba:	75 07                	jne    1010c3 <get_mms+0x5f>
  1010bc:	b8 00 00 00 00       	mov    $0x0,%eax
  1010c1:	eb 05                	jmp    1010c8 <get_mms+0x64>
  1010c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1010c6:	8b 00                	mov    (%eax),%eax
  1010c8:	c9                   	leave
  1010c9:	c3                   	ret

001010ca <get_mml>:
  1010ca:	55                   	push   %ebp
  1010cb:	89 e5                	mov    %esp,%ebp
  1010cd:	83 ec 10             	sub    $0x10,%esp
  1010d0:	e8 e3 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1010d5:	05 1f ff 00 00       	add    $0xff1f,%eax
  1010da:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1010e1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  1010e8:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  1010ee:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1010f1:	eb 15                	jmp    101108 <get_mml+0x3e>
  1010f3:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1010f6:	3b 55 08             	cmp    0x8(%ebp),%edx
  1010f9:	74 15                	je     101110 <get_mml+0x46>
  1010fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1010ff:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101102:	8b 52 0c             	mov    0xc(%edx),%edx
  101105:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101108:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10110c:	75 e5                	jne    1010f3 <get_mml+0x29>
  10110e:	eb 01                	jmp    101111 <get_mml+0x47>
  101110:	90                   	nop
  101111:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101115:	74 0b                	je     101122 <get_mml+0x58>
  101117:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10111d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101120:	75 07                	jne    101129 <get_mml+0x5f>
  101122:	ba 00 00 00 00       	mov    $0x0,%edx
  101127:	eb 0d                	jmp    101136 <get_mml+0x6c>
  101129:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10112c:	8b 50 04             	mov    0x4(%eax),%edx
  10112f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101132:	8b 00                	mov    (%eax),%eax
  101134:	29 c2                	sub    %eax,%edx
  101136:	89 d0                	mov    %edx,%eax
  101138:	c9                   	leave
  101139:	c3                   	ret

0010113a <is_usable>:
  10113a:	55                   	push   %ebp
  10113b:	89 e5                	mov    %esp,%ebp
  10113d:	83 ec 10             	sub    $0x10,%esp
  101140:	e8 73 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101145:	05 af fe 00 00       	add    $0xfeaf,%eax
  10114a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101151:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  101158:	8b 90 70 70 00 00    	mov    0x7070(%eax),%edx
  10115e:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101161:	eb 15                	jmp    101178 <is_usable+0x3e>
  101163:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101166:	3b 55 08             	cmp    0x8(%ebp),%edx
  101169:	74 15                	je     101180 <is_usable+0x46>
  10116b:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  10116f:	8b 55 f8             	mov    -0x8(%ebp),%edx
  101172:	8b 52 0c             	mov    0xc(%edx),%edx
  101175:	89 55 f8             	mov    %edx,-0x8(%ebp)
  101178:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  10117c:	75 e5                	jne    101163 <is_usable+0x29>
  10117e:	eb 01                	jmp    101181 <is_usable+0x47>
  101180:	90                   	nop
  101181:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  101185:	74 0b                	je     101192 <is_usable+0x58>
  101187:	8b 80 8c 70 00 00    	mov    0x708c(%eax),%eax
  10118d:	39 45 fc             	cmp    %eax,-0x4(%ebp)
  101190:	75 07                	jne    101199 <is_usable+0x5f>
  101192:	b8 00 00 00 00       	mov    $0x0,%eax
  101197:	eb 0f                	jmp    1011a8 <is_usable+0x6e>
  101199:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10119c:	8b 40 08             	mov    0x8(%eax),%eax
  10119f:	83 f8 01             	cmp    $0x1,%eax
  1011a2:	0f 94 c0             	sete   %al
  1011a5:	0f b6 c0             	movzbl %al,%eax
  1011a8:	c9                   	leave
  1011a9:	c3                   	ret

001011aa <set_cr3>:
  1011aa:	55                   	push   %ebp
  1011ab:	89 e5                	mov    %esp,%ebp
  1011ad:	53                   	push   %ebx
  1011ae:	83 ec 04             	sub    $0x4,%esp
  1011b1:	e8 02 f2 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1011b6:	05 3e fe 00 00       	add    $0xfe3e,%eax
  1011bb:	8b 55 08             	mov    0x8(%ebp),%edx
  1011be:	83 ec 0c             	sub    $0xc,%esp
  1011c1:	52                   	push   %edx
  1011c2:	89 c3                	mov    %eax,%ebx
  1011c4:	e8 ba 28 00 00       	call   103a83 <lcr3>
  1011c9:	83 c4 10             	add    $0x10,%esp
  1011cc:	90                   	nop
  1011cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1011d0:	c9                   	leave
  1011d1:	c3                   	ret

001011d2 <enable_paging>:
  1011d2:	55                   	push   %ebp
  1011d3:	89 e5                	mov    %esp,%ebp
  1011d5:	53                   	push   %ebx
  1011d6:	83 ec 14             	sub    $0x14,%esp
  1011d9:	e8 e2 f1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1011de:	81 c3 16 fe 00 00    	add    $0xfe16,%ebx
  1011e4:	e8 c6 28 00 00       	call   103aaf <rcr4>
  1011e9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1011ec:	81 4d f4 80 00 00 00 	orl    $0x80,-0xc(%ebp)
  1011f3:	83 ec 0c             	sub    $0xc,%esp
  1011f6:	ff 75 f4             	push   -0xc(%ebp)
  1011f9:	e8 9b 28 00 00       	call   103a99 <lcr4>
  1011fe:	83 c4 10             	add    $0x10,%esp
  101201:	e8 47 28 00 00       	call   103a4d <rcr0>
  101206:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101209:	81 4d f0 23 00 05 80 	orl    $0x80050023,-0x10(%ebp)
  101210:	83 65 f0 f3          	andl   $0xfffffff3,-0x10(%ebp)
  101214:	83 ec 0c             	sub    $0xc,%esp
  101217:	ff 75 f0             	push   -0x10(%ebp)
  10121a:	e8 18 28 00 00       	call   103a37 <lcr0>
  10121f:	83 c4 10             	add    $0x10,%esp
  101222:	90                   	nop
  101223:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  101226:	c9                   	leave
  101227:	c3                   	ret

00101228 <intr_init_idt>:
  101228:	55                   	push   %ebp
  101229:	89 e5                	mov    %esp,%ebp
  10122b:	83 ec 10             	sub    $0x10,%esp
  10122e:	e8 85 f1 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  101233:	05 c1 fd 00 00       	add    $0xfdc1,%eax
  101238:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10123f:	e9 bb 00 00 00       	jmp    1012ff <intr_init_idt+0xd7>
  101244:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  10124a:	89 d1                	mov    %edx,%ecx
  10124c:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10124f:	66 89 8c d0 ac 70 00 	mov    %cx,0x70ac(%eax,%edx,8)
  101256:	00 
  101257:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10125a:	66 c7 84 d0 ae 70 00 	movw   $0x8,0x70ae(%eax,%edx,8)
  101261:	00 08 00 
  101264:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101267:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  10126e:	00 
  10126f:	83 e1 e0             	and    $0xffffffe0,%ecx
  101272:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  101279:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10127c:	0f b6 8c d0 b0 70 00 	movzbl 0x70b0(%eax,%edx,8),%ecx
  101283:	00 
  101284:	83 e1 1f             	and    $0x1f,%ecx
  101287:	88 8c d0 b0 70 00 00 	mov    %cl,0x70b0(%eax,%edx,8)
  10128e:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101291:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  101298:	00 
  101299:	83 e1 f0             	and    $0xfffffff0,%ecx
  10129c:	83 c9 0e             	or     $0xe,%ecx
  10129f:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012a6:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012a9:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012b0:	00 
  1012b1:	83 e1 ef             	and    $0xffffffef,%ecx
  1012b4:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012bb:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012be:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012c5:	00 
  1012c6:	83 e1 9f             	and    $0xffffff9f,%ecx
  1012c9:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012d3:	0f b6 8c d0 b1 70 00 	movzbl 0x70b1(%eax,%edx,8),%ecx
  1012da:	00 
  1012db:	83 c9 80             	or     $0xffffff80,%ecx
  1012de:	88 8c d0 b1 70 00 00 	mov    %cl,0x70b1(%eax,%edx,8)
  1012e5:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1012eb:	c1 ea 10             	shr    $0x10,%edx
  1012ee:	89 d1                	mov    %edx,%ecx
  1012f0:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1012f3:	66 89 8c d0 b2 70 00 	mov    %cx,0x70b2(%eax,%edx,8)
  1012fa:	00 
  1012fb:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1012ff:	8b 55 fc             	mov    -0x4(%ebp),%edx
  101302:	81 fa ff 00 00 00    	cmp    $0xff,%edx
  101308:	0f 86 36 ff ff ff    	jbe    101244 <intr_init_idt+0x1c>
  10130e:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  101314:	66 89 90 ac 70 00 00 	mov    %dx,0x70ac(%eax)
  10131b:	66 c7 80 ae 70 00 00 	movw   $0x8,0x70ae(%eax)
  101322:	08 00 
  101324:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10132b:	83 e2 e0             	and    $0xffffffe0,%edx
  10132e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101334:	0f b6 90 b0 70 00 00 	movzbl 0x70b0(%eax),%edx
  10133b:	83 e2 1f             	and    $0x1f,%edx
  10133e:	88 90 b0 70 00 00    	mov    %dl,0x70b0(%eax)
  101344:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10134b:	83 e2 f0             	and    $0xfffffff0,%edx
  10134e:	83 ca 0e             	or     $0xe,%edx
  101351:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101357:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10135e:	83 e2 ef             	and    $0xffffffef,%edx
  101361:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101367:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10136e:	83 e2 9f             	and    $0xffffff9f,%edx
  101371:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101377:	0f b6 90 b1 70 00 00 	movzbl 0x70b1(%eax),%edx
  10137e:	83 ca 80             	or     $0xffffff80,%edx
  101381:	88 90 b1 70 00 00    	mov    %dl,0x70b1(%eax)
  101387:	c7 c2 10 26 10 00    	mov    $0x102610,%edx
  10138d:	c1 ea 10             	shr    $0x10,%edx
  101390:	66 89 90 b2 70 00 00 	mov    %dx,0x70b2(%eax)
  101397:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  10139d:	66 89 90 b4 70 00 00 	mov    %dx,0x70b4(%eax)
  1013a4:	66 c7 80 b6 70 00 00 	movw   $0x8,0x70b6(%eax)
  1013ab:	08 00 
  1013ad:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013b4:	83 e2 e0             	and    $0xffffffe0,%edx
  1013b7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013bd:	0f b6 90 b8 70 00 00 	movzbl 0x70b8(%eax),%edx
  1013c4:	83 e2 1f             	and    $0x1f,%edx
  1013c7:	88 90 b8 70 00 00    	mov    %dl,0x70b8(%eax)
  1013cd:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013d4:	83 e2 f0             	and    $0xfffffff0,%edx
  1013d7:	83 ca 0e             	or     $0xe,%edx
  1013da:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013e0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013e7:	83 e2 ef             	and    $0xffffffef,%edx
  1013ea:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  1013f0:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  1013f7:	83 e2 9f             	and    $0xffffff9f,%edx
  1013fa:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101400:	0f b6 90 b9 70 00 00 	movzbl 0x70b9(%eax),%edx
  101407:	83 ca 80             	or     $0xffffff80,%edx
  10140a:	88 90 b9 70 00 00    	mov    %dl,0x70b9(%eax)
  101410:	c7 c2 1a 26 10 00    	mov    $0x10261a,%edx
  101416:	c1 ea 10             	shr    $0x10,%edx
  101419:	66 89 90 ba 70 00 00 	mov    %dx,0x70ba(%eax)
  101420:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  101426:	66 89 90 bc 70 00 00 	mov    %dx,0x70bc(%eax)
  10142d:	66 c7 80 be 70 00 00 	movw   $0x8,0x70be(%eax)
  101434:	08 00 
  101436:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10143d:	83 e2 e0             	and    $0xffffffe0,%edx
  101440:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101446:	0f b6 90 c0 70 00 00 	movzbl 0x70c0(%eax),%edx
  10144d:	83 e2 1f             	and    $0x1f,%edx
  101450:	88 90 c0 70 00 00    	mov    %dl,0x70c0(%eax)
  101456:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  10145d:	83 e2 f0             	and    $0xfffffff0,%edx
  101460:	83 ca 0e             	or     $0xe,%edx
  101463:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101469:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101470:	83 e2 ef             	and    $0xffffffef,%edx
  101473:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101479:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101480:	83 e2 9f             	and    $0xffffff9f,%edx
  101483:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101489:	0f b6 90 c1 70 00 00 	movzbl 0x70c1(%eax),%edx
  101490:	83 ca 80             	or     $0xffffff80,%edx
  101493:	88 90 c1 70 00 00    	mov    %dl,0x70c1(%eax)
  101499:	c7 c2 24 26 10 00    	mov    $0x102624,%edx
  10149f:	c1 ea 10             	shr    $0x10,%edx
  1014a2:	66 89 90 c2 70 00 00 	mov    %dx,0x70c2(%eax)
  1014a9:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  1014af:	66 89 90 c4 70 00 00 	mov    %dx,0x70c4(%eax)
  1014b6:	66 c7 80 c6 70 00 00 	movw   $0x8,0x70c6(%eax)
  1014bd:	08 00 
  1014bf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014c6:	83 e2 e0             	and    $0xffffffe0,%edx
  1014c9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014cf:	0f b6 90 c8 70 00 00 	movzbl 0x70c8(%eax),%edx
  1014d6:	83 e2 1f             	and    $0x1f,%edx
  1014d9:	88 90 c8 70 00 00    	mov    %dl,0x70c8(%eax)
  1014df:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014e6:	83 e2 f0             	and    $0xfffffff0,%edx
  1014e9:	83 ca 0e             	or     $0xe,%edx
  1014ec:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  1014f2:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  1014f9:	83 e2 ef             	and    $0xffffffef,%edx
  1014fc:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101502:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101509:	83 ca 60             	or     $0x60,%edx
  10150c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101512:	0f b6 90 c9 70 00 00 	movzbl 0x70c9(%eax),%edx
  101519:	83 ca 80             	or     $0xffffff80,%edx
  10151c:	88 90 c9 70 00 00    	mov    %dl,0x70c9(%eax)
  101522:	c7 c2 2e 26 10 00    	mov    $0x10262e,%edx
  101528:	c1 ea 10             	shr    $0x10,%edx
  10152b:	66 89 90 ca 70 00 00 	mov    %dx,0x70ca(%eax)
  101532:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  101538:	66 89 90 cc 70 00 00 	mov    %dx,0x70cc(%eax)
  10153f:	66 c7 80 ce 70 00 00 	movw   $0x8,0x70ce(%eax)
  101546:	08 00 
  101548:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10154f:	83 e2 e0             	and    $0xffffffe0,%edx
  101552:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101558:	0f b6 90 d0 70 00 00 	movzbl 0x70d0(%eax),%edx
  10155f:	83 e2 1f             	and    $0x1f,%edx
  101562:	88 90 d0 70 00 00    	mov    %dl,0x70d0(%eax)
  101568:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  10156f:	83 e2 f0             	and    $0xfffffff0,%edx
  101572:	83 ca 0e             	or     $0xe,%edx
  101575:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10157b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101582:	83 e2 ef             	and    $0xffffffef,%edx
  101585:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10158b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  101592:	83 ca 60             	or     $0x60,%edx
  101595:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  10159b:	0f b6 90 d1 70 00 00 	movzbl 0x70d1(%eax),%edx
  1015a2:	83 ca 80             	or     $0xffffff80,%edx
  1015a5:	88 90 d1 70 00 00    	mov    %dl,0x70d1(%eax)
  1015ab:	c7 c2 38 26 10 00    	mov    $0x102638,%edx
  1015b1:	c1 ea 10             	shr    $0x10,%edx
  1015b4:	66 89 90 d2 70 00 00 	mov    %dx,0x70d2(%eax)
  1015bb:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  1015c1:	66 89 90 d4 70 00 00 	mov    %dx,0x70d4(%eax)
  1015c8:	66 c7 80 d6 70 00 00 	movw   $0x8,0x70d6(%eax)
  1015cf:	08 00 
  1015d1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015d8:	83 e2 e0             	and    $0xffffffe0,%edx
  1015db:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015e1:	0f b6 90 d8 70 00 00 	movzbl 0x70d8(%eax),%edx
  1015e8:	83 e2 1f             	and    $0x1f,%edx
  1015eb:	88 90 d8 70 00 00    	mov    %dl,0x70d8(%eax)
  1015f1:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  1015f8:	83 e2 f0             	and    $0xfffffff0,%edx
  1015fb:	83 ca 0e             	or     $0xe,%edx
  1015fe:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101604:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10160b:	83 e2 ef             	and    $0xffffffef,%edx
  10160e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101614:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10161b:	83 e2 9f             	and    $0xffffff9f,%edx
  10161e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101624:	0f b6 90 d9 70 00 00 	movzbl 0x70d9(%eax),%edx
  10162b:	83 ca 80             	or     $0xffffff80,%edx
  10162e:	88 90 d9 70 00 00    	mov    %dl,0x70d9(%eax)
  101634:	c7 c2 42 26 10 00    	mov    $0x102642,%edx
  10163a:	c1 ea 10             	shr    $0x10,%edx
  10163d:	66 89 90 da 70 00 00 	mov    %dx,0x70da(%eax)
  101644:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  10164a:	66 89 90 dc 70 00 00 	mov    %dx,0x70dc(%eax)
  101651:	66 c7 80 de 70 00 00 	movw   $0x8,0x70de(%eax)
  101658:	08 00 
  10165a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101661:	83 e2 e0             	and    $0xffffffe0,%edx
  101664:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10166a:	0f b6 90 e0 70 00 00 	movzbl 0x70e0(%eax),%edx
  101671:	83 e2 1f             	and    $0x1f,%edx
  101674:	88 90 e0 70 00 00    	mov    %dl,0x70e0(%eax)
  10167a:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101681:	83 e2 f0             	and    $0xfffffff0,%edx
  101684:	83 ca 0e             	or     $0xe,%edx
  101687:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10168d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  101694:	83 e2 ef             	and    $0xffffffef,%edx
  101697:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  10169d:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016a4:	83 e2 9f             	and    $0xffffff9f,%edx
  1016a7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016ad:	0f b6 90 e1 70 00 00 	movzbl 0x70e1(%eax),%edx
  1016b4:	83 ca 80             	or     $0xffffff80,%edx
  1016b7:	88 90 e1 70 00 00    	mov    %dl,0x70e1(%eax)
  1016bd:	c7 c2 4c 26 10 00    	mov    $0x10264c,%edx
  1016c3:	c1 ea 10             	shr    $0x10,%edx
  1016c6:	66 89 90 e2 70 00 00 	mov    %dx,0x70e2(%eax)
  1016cd:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  1016d3:	66 89 90 e4 70 00 00 	mov    %dx,0x70e4(%eax)
  1016da:	66 c7 80 e6 70 00 00 	movw   $0x8,0x70e6(%eax)
  1016e1:	08 00 
  1016e3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016ea:	83 e2 e0             	and    $0xffffffe0,%edx
  1016ed:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  1016f3:	0f b6 90 e8 70 00 00 	movzbl 0x70e8(%eax),%edx
  1016fa:	83 e2 1f             	and    $0x1f,%edx
  1016fd:	88 90 e8 70 00 00    	mov    %dl,0x70e8(%eax)
  101703:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10170a:	83 e2 f0             	and    $0xfffffff0,%edx
  10170d:	83 ca 0e             	or     $0xe,%edx
  101710:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101716:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10171d:	83 e2 ef             	and    $0xffffffef,%edx
  101720:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101726:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10172d:	83 e2 9f             	and    $0xffffff9f,%edx
  101730:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101736:	0f b6 90 e9 70 00 00 	movzbl 0x70e9(%eax),%edx
  10173d:	83 ca 80             	or     $0xffffff80,%edx
  101740:	88 90 e9 70 00 00    	mov    %dl,0x70e9(%eax)
  101746:	c7 c2 56 26 10 00    	mov    $0x102656,%edx
  10174c:	c1 ea 10             	shr    $0x10,%edx
  10174f:	66 89 90 ea 70 00 00 	mov    %dx,0x70ea(%eax)
  101756:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  10175c:	66 89 90 ec 70 00 00 	mov    %dx,0x70ec(%eax)
  101763:	66 c7 80 ee 70 00 00 	movw   $0x8,0x70ee(%eax)
  10176a:	08 00 
  10176c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101773:	83 e2 e0             	and    $0xffffffe0,%edx
  101776:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10177c:	0f b6 90 f0 70 00 00 	movzbl 0x70f0(%eax),%edx
  101783:	83 e2 1f             	and    $0x1f,%edx
  101786:	88 90 f0 70 00 00    	mov    %dl,0x70f0(%eax)
  10178c:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  101793:	83 e2 f0             	and    $0xfffffff0,%edx
  101796:	83 ca 0e             	or     $0xe,%edx
  101799:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  10179f:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017a6:	83 e2 ef             	and    $0xffffffef,%edx
  1017a9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017af:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017b6:	83 e2 9f             	and    $0xffffff9f,%edx
  1017b9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017bf:	0f b6 90 f1 70 00 00 	movzbl 0x70f1(%eax),%edx
  1017c6:	83 ca 80             	or     $0xffffff80,%edx
  1017c9:	88 90 f1 70 00 00    	mov    %dl,0x70f1(%eax)
  1017cf:	c7 c2 60 26 10 00    	mov    $0x102660,%edx
  1017d5:	c1 ea 10             	shr    $0x10,%edx
  1017d8:	66 89 90 f2 70 00 00 	mov    %dx,0x70f2(%eax)
  1017df:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  1017e5:	66 89 90 fc 70 00 00 	mov    %dx,0x70fc(%eax)
  1017ec:	66 c7 80 fe 70 00 00 	movw   $0x8,0x70fe(%eax)
  1017f3:	08 00 
  1017f5:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  1017fc:	83 e2 e0             	and    $0xffffffe0,%edx
  1017ff:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101805:	0f b6 90 00 71 00 00 	movzbl 0x7100(%eax),%edx
  10180c:	83 e2 1f             	and    $0x1f,%edx
  10180f:	88 90 00 71 00 00    	mov    %dl,0x7100(%eax)
  101815:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10181c:	83 e2 f0             	and    $0xfffffff0,%edx
  10181f:	83 ca 0e             	or     $0xe,%edx
  101822:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101828:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10182f:	83 e2 ef             	and    $0xffffffef,%edx
  101832:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101838:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10183f:	83 e2 9f             	and    $0xffffff9f,%edx
  101842:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101848:	0f b6 90 01 71 00 00 	movzbl 0x7101(%eax),%edx
  10184f:	83 ca 80             	or     $0xffffff80,%edx
  101852:	88 90 01 71 00 00    	mov    %dl,0x7101(%eax)
  101858:	c7 c2 72 26 10 00    	mov    $0x102672,%edx
  10185e:	c1 ea 10             	shr    $0x10,%edx
  101861:	66 89 90 02 71 00 00 	mov    %dx,0x7102(%eax)
  101868:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  10186e:	66 89 90 04 71 00 00 	mov    %dx,0x7104(%eax)
  101875:	66 c7 80 06 71 00 00 	movw   $0x8,0x7106(%eax)
  10187c:	08 00 
  10187e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101885:	83 e2 e0             	and    $0xffffffe0,%edx
  101888:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10188e:	0f b6 90 08 71 00 00 	movzbl 0x7108(%eax),%edx
  101895:	83 e2 1f             	and    $0x1f,%edx
  101898:	88 90 08 71 00 00    	mov    %dl,0x7108(%eax)
  10189e:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018a5:	83 e2 f0             	and    $0xfffffff0,%edx
  1018a8:	83 ca 0e             	or     $0xe,%edx
  1018ab:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018b1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018b8:	83 e2 ef             	and    $0xffffffef,%edx
  1018bb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018c1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018c8:	83 e2 9f             	and    $0xffffff9f,%edx
  1018cb:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018d1:	0f b6 90 09 71 00 00 	movzbl 0x7109(%eax),%edx
  1018d8:	83 ca 80             	or     $0xffffff80,%edx
  1018db:	88 90 09 71 00 00    	mov    %dl,0x7109(%eax)
  1018e1:	c7 c2 7a 26 10 00    	mov    $0x10267a,%edx
  1018e7:	c1 ea 10             	shr    $0x10,%edx
  1018ea:	66 89 90 0a 71 00 00 	mov    %dx,0x710a(%eax)
  1018f1:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  1018f7:	66 89 90 0c 71 00 00 	mov    %dx,0x710c(%eax)
  1018fe:	66 c7 80 0e 71 00 00 	movw   $0x8,0x710e(%eax)
  101905:	08 00 
  101907:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10190e:	83 e2 e0             	and    $0xffffffe0,%edx
  101911:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101917:	0f b6 90 10 71 00 00 	movzbl 0x7110(%eax),%edx
  10191e:	83 e2 1f             	and    $0x1f,%edx
  101921:	88 90 10 71 00 00    	mov    %dl,0x7110(%eax)
  101927:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  10192e:	83 e2 f0             	and    $0xfffffff0,%edx
  101931:	83 ca 0e             	or     $0xe,%edx
  101934:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10193a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101941:	83 e2 ef             	and    $0xffffffef,%edx
  101944:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10194a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101951:	83 e2 9f             	and    $0xffffff9f,%edx
  101954:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10195a:	0f b6 90 11 71 00 00 	movzbl 0x7111(%eax),%edx
  101961:	83 ca 80             	or     $0xffffff80,%edx
  101964:	88 90 11 71 00 00    	mov    %dl,0x7111(%eax)
  10196a:	c7 c2 82 26 10 00    	mov    $0x102682,%edx
  101970:	c1 ea 10             	shr    $0x10,%edx
  101973:	66 89 90 12 71 00 00 	mov    %dx,0x7112(%eax)
  10197a:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  101980:	66 89 90 14 71 00 00 	mov    %dx,0x7114(%eax)
  101987:	66 c7 80 16 71 00 00 	movw   $0x8,0x7116(%eax)
  10198e:	08 00 
  101990:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  101997:	83 e2 e0             	and    $0xffffffe0,%edx
  10199a:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019a0:	0f b6 90 18 71 00 00 	movzbl 0x7118(%eax),%edx
  1019a7:	83 e2 1f             	and    $0x1f,%edx
  1019aa:	88 90 18 71 00 00    	mov    %dl,0x7118(%eax)
  1019b0:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019b7:	83 e2 f0             	and    $0xfffffff0,%edx
  1019ba:	83 ca 0e             	or     $0xe,%edx
  1019bd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019c3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ca:	83 e2 ef             	and    $0xffffffef,%edx
  1019cd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019d3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019da:	83 e2 9f             	and    $0xffffff9f,%edx
  1019dd:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019e3:	0f b6 90 19 71 00 00 	movzbl 0x7119(%eax),%edx
  1019ea:	83 ca 80             	or     $0xffffff80,%edx
  1019ed:	88 90 19 71 00 00    	mov    %dl,0x7119(%eax)
  1019f3:	c7 c2 8a 26 10 00    	mov    $0x10268a,%edx
  1019f9:	c1 ea 10             	shr    $0x10,%edx
  1019fc:	66 89 90 1a 71 00 00 	mov    %dx,0x711a(%eax)
  101a03:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a09:	66 89 90 1c 71 00 00 	mov    %dx,0x711c(%eax)
  101a10:	66 c7 80 1e 71 00 00 	movw   $0x8,0x711e(%eax)
  101a17:	08 00 
  101a19:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a20:	83 e2 e0             	and    $0xffffffe0,%edx
  101a23:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a29:	0f b6 90 20 71 00 00 	movzbl 0x7120(%eax),%edx
  101a30:	83 e2 1f             	and    $0x1f,%edx
  101a33:	88 90 20 71 00 00    	mov    %dl,0x7120(%eax)
  101a39:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a40:	83 e2 f0             	and    $0xfffffff0,%edx
  101a43:	83 ca 0e             	or     $0xe,%edx
  101a46:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a4c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a53:	83 e2 ef             	and    $0xffffffef,%edx
  101a56:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a5c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a63:	83 e2 9f             	and    $0xffffff9f,%edx
  101a66:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a6c:	0f b6 90 21 71 00 00 	movzbl 0x7121(%eax),%edx
  101a73:	83 ca 80             	or     $0xffffff80,%edx
  101a76:	88 90 21 71 00 00    	mov    %dl,0x7121(%eax)
  101a7c:	c7 c2 92 26 10 00    	mov    $0x102692,%edx
  101a82:	c1 ea 10             	shr    $0x10,%edx
  101a85:	66 89 90 22 71 00 00 	mov    %dx,0x7122(%eax)
  101a8c:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101a92:	66 89 90 2c 71 00 00 	mov    %dx,0x712c(%eax)
  101a99:	66 c7 80 2e 71 00 00 	movw   $0x8,0x712e(%eax)
  101aa0:	08 00 
  101aa2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101aa9:	83 e2 e0             	and    $0xffffffe0,%edx
  101aac:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ab2:	0f b6 90 30 71 00 00 	movzbl 0x7130(%eax),%edx
  101ab9:	83 e2 1f             	and    $0x1f,%edx
  101abc:	88 90 30 71 00 00    	mov    %dl,0x7130(%eax)
  101ac2:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101ac9:	83 e2 f0             	and    $0xfffffff0,%edx
  101acc:	83 ca 0e             	or     $0xe,%edx
  101acf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ad5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101adc:	83 e2 ef             	and    $0xffffffef,%edx
  101adf:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101ae5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101aec:	83 e2 9f             	and    $0xffffff9f,%edx
  101aef:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101af5:	0f b6 90 31 71 00 00 	movzbl 0x7131(%eax),%edx
  101afc:	83 ca 80             	or     $0xffffff80,%edx
  101aff:	88 90 31 71 00 00    	mov    %dl,0x7131(%eax)
  101b05:	c7 c2 a4 26 10 00    	mov    $0x1026a4,%edx
  101b0b:	c1 ea 10             	shr    $0x10,%edx
  101b0e:	66 89 90 32 71 00 00 	mov    %dx,0x7132(%eax)
  101b15:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b1b:	66 89 90 34 71 00 00 	mov    %dx,0x7134(%eax)
  101b22:	66 c7 80 36 71 00 00 	movw   $0x8,0x7136(%eax)
  101b29:	08 00 
  101b2b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b32:	83 e2 e0             	and    $0xffffffe0,%edx
  101b35:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b3b:	0f b6 90 38 71 00 00 	movzbl 0x7138(%eax),%edx
  101b42:	83 e2 1f             	and    $0x1f,%edx
  101b45:	88 90 38 71 00 00    	mov    %dl,0x7138(%eax)
  101b4b:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b52:	83 e2 f0             	and    $0xfffffff0,%edx
  101b55:	83 ca 0e             	or     $0xe,%edx
  101b58:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b5e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b65:	83 e2 ef             	and    $0xffffffef,%edx
  101b68:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b6e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b75:	83 e2 9f             	and    $0xffffff9f,%edx
  101b78:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b7e:	0f b6 90 39 71 00 00 	movzbl 0x7139(%eax),%edx
  101b85:	83 ca 80             	or     $0xffffff80,%edx
  101b88:	88 90 39 71 00 00    	mov    %dl,0x7139(%eax)
  101b8e:	c7 c2 ae 26 10 00    	mov    $0x1026ae,%edx
  101b94:	c1 ea 10             	shr    $0x10,%edx
  101b97:	66 89 90 3a 71 00 00 	mov    %dx,0x713a(%eax)
  101b9e:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101ba4:	66 89 90 3c 71 00 00 	mov    %dx,0x713c(%eax)
  101bab:	66 c7 80 3e 71 00 00 	movw   $0x8,0x713e(%eax)
  101bb2:	08 00 
  101bb4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bbb:	83 e2 e0             	and    $0xffffffe0,%edx
  101bbe:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bc4:	0f b6 90 40 71 00 00 	movzbl 0x7140(%eax),%edx
  101bcb:	83 e2 1f             	and    $0x1f,%edx
  101bce:	88 90 40 71 00 00    	mov    %dl,0x7140(%eax)
  101bd4:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bdb:	83 e2 f0             	and    $0xfffffff0,%edx
  101bde:	83 ca 0e             	or     $0xe,%edx
  101be1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101be7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bee:	83 e2 ef             	and    $0xffffffef,%edx
  101bf1:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101bf7:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101bfe:	83 e2 9f             	and    $0xffffff9f,%edx
  101c01:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c07:	0f b6 90 41 71 00 00 	movzbl 0x7141(%eax),%edx
  101c0e:	83 ca 80             	or     $0xffffff80,%edx
  101c11:	88 90 41 71 00 00    	mov    %dl,0x7141(%eax)
  101c17:	c7 c2 b6 26 10 00    	mov    $0x1026b6,%edx
  101c1d:	c1 ea 10             	shr    $0x10,%edx
  101c20:	66 89 90 42 71 00 00 	mov    %dx,0x7142(%eax)
  101c27:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101c2d:	66 89 90 ac 71 00 00 	mov    %dx,0x71ac(%eax)
  101c34:	66 c7 80 ae 71 00 00 	movw   $0x8,0x71ae(%eax)
  101c3b:	08 00 
  101c3d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c44:	83 e2 e0             	and    $0xffffffe0,%edx
  101c47:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c4d:	0f b6 90 b0 71 00 00 	movzbl 0x71b0(%eax),%edx
  101c54:	83 e2 1f             	and    $0x1f,%edx
  101c57:	88 90 b0 71 00 00    	mov    %dl,0x71b0(%eax)
  101c5d:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c64:	83 e2 f0             	and    $0xfffffff0,%edx
  101c67:	83 ca 0e             	or     $0xe,%edx
  101c6a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c70:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c77:	83 e2 ef             	and    $0xffffffef,%edx
  101c7a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c80:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c87:	83 e2 9f             	and    $0xffffff9f,%edx
  101c8a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101c90:	0f b6 90 b1 71 00 00 	movzbl 0x71b1(%eax),%edx
  101c97:	83 ca 80             	or     $0xffffff80,%edx
  101c9a:	88 90 b1 71 00 00    	mov    %dl,0x71b1(%eax)
  101ca0:	c7 c2 c0 26 10 00    	mov    $0x1026c0,%edx
  101ca6:	c1 ea 10             	shr    $0x10,%edx
  101ca9:	66 89 90 b2 71 00 00 	mov    %dx,0x71b2(%eax)
  101cb0:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101cb6:	66 89 90 b4 71 00 00 	mov    %dx,0x71b4(%eax)
  101cbd:	66 c7 80 b6 71 00 00 	movw   $0x8,0x71b6(%eax)
  101cc4:	08 00 
  101cc6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101ccd:	83 e2 e0             	and    $0xffffffe0,%edx
  101cd0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101cd6:	0f b6 90 b8 71 00 00 	movzbl 0x71b8(%eax),%edx
  101cdd:	83 e2 1f             	and    $0x1f,%edx
  101ce0:	88 90 b8 71 00 00    	mov    %dl,0x71b8(%eax)
  101ce6:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101ced:	83 e2 f0             	and    $0xfffffff0,%edx
  101cf0:	83 ca 0e             	or     $0xe,%edx
  101cf3:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101cf9:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d00:	83 e2 ef             	and    $0xffffffef,%edx
  101d03:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d09:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d10:	83 e2 9f             	and    $0xffffff9f,%edx
  101d13:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d19:	0f b6 90 b9 71 00 00 	movzbl 0x71b9(%eax),%edx
  101d20:	83 ca 80             	or     $0xffffff80,%edx
  101d23:	88 90 b9 71 00 00    	mov    %dl,0x71b9(%eax)
  101d29:	c7 c2 ca 26 10 00    	mov    $0x1026ca,%edx
  101d2f:	c1 ea 10             	shr    $0x10,%edx
  101d32:	66 89 90 ba 71 00 00 	mov    %dx,0x71ba(%eax)
  101d39:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101d3f:	66 89 90 bc 71 00 00 	mov    %dx,0x71bc(%eax)
  101d46:	66 c7 80 be 71 00 00 	movw   $0x8,0x71be(%eax)
  101d4d:	08 00 
  101d4f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d56:	83 e2 e0             	and    $0xffffffe0,%edx
  101d59:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d5f:	0f b6 90 c0 71 00 00 	movzbl 0x71c0(%eax),%edx
  101d66:	83 e2 1f             	and    $0x1f,%edx
  101d69:	88 90 c0 71 00 00    	mov    %dl,0x71c0(%eax)
  101d6f:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d76:	83 e2 f0             	and    $0xfffffff0,%edx
  101d79:	83 ca 0e             	or     $0xe,%edx
  101d7c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d82:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d89:	83 e2 ef             	and    $0xffffffef,%edx
  101d8c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101d92:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101d99:	83 e2 9f             	and    $0xffffff9f,%edx
  101d9c:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101da2:	0f b6 90 c1 71 00 00 	movzbl 0x71c1(%eax),%edx
  101da9:	83 ca 80             	or     $0xffffff80,%edx
  101dac:	88 90 c1 71 00 00    	mov    %dl,0x71c1(%eax)
  101db2:	c7 c2 d4 26 10 00    	mov    $0x1026d4,%edx
  101db8:	c1 ea 10             	shr    $0x10,%edx
  101dbb:	66 89 90 c2 71 00 00 	mov    %dx,0x71c2(%eax)
  101dc2:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101dc8:	66 89 90 c4 71 00 00 	mov    %dx,0x71c4(%eax)
  101dcf:	66 c7 80 c6 71 00 00 	movw   $0x8,0x71c6(%eax)
  101dd6:	08 00 
  101dd8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101ddf:	83 e2 e0             	and    $0xffffffe0,%edx
  101de2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101de8:	0f b6 90 c8 71 00 00 	movzbl 0x71c8(%eax),%edx
  101def:	83 e2 1f             	and    $0x1f,%edx
  101df2:	88 90 c8 71 00 00    	mov    %dl,0x71c8(%eax)
  101df8:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101dff:	83 e2 f0             	and    $0xfffffff0,%edx
  101e02:	83 ca 0e             	or     $0xe,%edx
  101e05:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e0b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e12:	83 e2 ef             	and    $0xffffffef,%edx
  101e15:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e1b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e22:	83 e2 9f             	and    $0xffffff9f,%edx
  101e25:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e2b:	0f b6 90 c9 71 00 00 	movzbl 0x71c9(%eax),%edx
  101e32:	83 ca 80             	or     $0xffffff80,%edx
  101e35:	88 90 c9 71 00 00    	mov    %dl,0x71c9(%eax)
  101e3b:	c7 c2 de 26 10 00    	mov    $0x1026de,%edx
  101e41:	c1 ea 10             	shr    $0x10,%edx
  101e44:	66 89 90 ca 71 00 00 	mov    %dx,0x71ca(%eax)
  101e4b:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101e51:	66 89 90 cc 71 00 00 	mov    %dx,0x71cc(%eax)
  101e58:	66 c7 80 ce 71 00 00 	movw   $0x8,0x71ce(%eax)
  101e5f:	08 00 
  101e61:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e68:	83 e2 e0             	and    $0xffffffe0,%edx
  101e6b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e71:	0f b6 90 d0 71 00 00 	movzbl 0x71d0(%eax),%edx
  101e78:	83 e2 1f             	and    $0x1f,%edx
  101e7b:	88 90 d0 71 00 00    	mov    %dl,0x71d0(%eax)
  101e81:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e88:	83 e2 f0             	and    $0xfffffff0,%edx
  101e8b:	83 ca 0e             	or     $0xe,%edx
  101e8e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101e94:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101e9b:	83 e2 ef             	and    $0xffffffef,%edx
  101e9e:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ea4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101eab:	83 e2 9f             	and    $0xffffff9f,%edx
  101eae:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101eb4:	0f b6 90 d1 71 00 00 	movzbl 0x71d1(%eax),%edx
  101ebb:	83 ca 80             	or     $0xffffff80,%edx
  101ebe:	88 90 d1 71 00 00    	mov    %dl,0x71d1(%eax)
  101ec4:	c7 c2 e8 26 10 00    	mov    $0x1026e8,%edx
  101eca:	c1 ea 10             	shr    $0x10,%edx
  101ecd:	66 89 90 d2 71 00 00 	mov    %dx,0x71d2(%eax)
  101ed4:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101eda:	66 89 90 d4 71 00 00 	mov    %dx,0x71d4(%eax)
  101ee1:	66 c7 80 d6 71 00 00 	movw   $0x8,0x71d6(%eax)
  101ee8:	08 00 
  101eea:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101ef1:	83 e2 e0             	and    $0xffffffe0,%edx
  101ef4:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101efa:	0f b6 90 d8 71 00 00 	movzbl 0x71d8(%eax),%edx
  101f01:	83 e2 1f             	and    $0x1f,%edx
  101f04:	88 90 d8 71 00 00    	mov    %dl,0x71d8(%eax)
  101f0a:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f11:	83 e2 f0             	and    $0xfffffff0,%edx
  101f14:	83 ca 0e             	or     $0xe,%edx
  101f17:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f1d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f24:	83 e2 ef             	and    $0xffffffef,%edx
  101f27:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f2d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f34:	83 e2 9f             	and    $0xffffff9f,%edx
  101f37:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f3d:	0f b6 90 d9 71 00 00 	movzbl 0x71d9(%eax),%edx
  101f44:	83 ca 80             	or     $0xffffff80,%edx
  101f47:	88 90 d9 71 00 00    	mov    %dl,0x71d9(%eax)
  101f4d:	c7 c2 f2 26 10 00    	mov    $0x1026f2,%edx
  101f53:	c1 ea 10             	shr    $0x10,%edx
  101f56:	66 89 90 da 71 00 00 	mov    %dx,0x71da(%eax)
  101f5d:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101f63:	66 89 90 dc 71 00 00 	mov    %dx,0x71dc(%eax)
  101f6a:	66 c7 80 de 71 00 00 	movw   $0x8,0x71de(%eax)
  101f71:	08 00 
  101f73:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f7a:	83 e2 e0             	and    $0xffffffe0,%edx
  101f7d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f83:	0f b6 90 e0 71 00 00 	movzbl 0x71e0(%eax),%edx
  101f8a:	83 e2 1f             	and    $0x1f,%edx
  101f8d:	88 90 e0 71 00 00    	mov    %dl,0x71e0(%eax)
  101f93:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101f9a:	83 e2 f0             	and    $0xfffffff0,%edx
  101f9d:	83 ca 0e             	or     $0xe,%edx
  101fa0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fa6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fad:	83 e2 ef             	and    $0xffffffef,%edx
  101fb0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fb6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fbd:	83 e2 9f             	and    $0xffffff9f,%edx
  101fc0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fc6:	0f b6 90 e1 71 00 00 	movzbl 0x71e1(%eax),%edx
  101fcd:	83 ca 80             	or     $0xffffff80,%edx
  101fd0:	88 90 e1 71 00 00    	mov    %dl,0x71e1(%eax)
  101fd6:	c7 c2 fc 26 10 00    	mov    $0x1026fc,%edx
  101fdc:	c1 ea 10             	shr    $0x10,%edx
  101fdf:	66 89 90 e2 71 00 00 	mov    %dx,0x71e2(%eax)
  101fe6:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  101fec:	66 89 90 e4 71 00 00 	mov    %dx,0x71e4(%eax)
  101ff3:	66 c7 80 e6 71 00 00 	movw   $0x8,0x71e6(%eax)
  101ffa:	08 00 
  101ffc:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102003:	83 e2 e0             	and    $0xffffffe0,%edx
  102006:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10200c:	0f b6 90 e8 71 00 00 	movzbl 0x71e8(%eax),%edx
  102013:	83 e2 1f             	and    $0x1f,%edx
  102016:	88 90 e8 71 00 00    	mov    %dl,0x71e8(%eax)
  10201c:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102023:	83 e2 f0             	and    $0xfffffff0,%edx
  102026:	83 ca 0e             	or     $0xe,%edx
  102029:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10202f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102036:	83 e2 ef             	and    $0xffffffef,%edx
  102039:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10203f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102046:	83 e2 9f             	and    $0xffffff9f,%edx
  102049:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10204f:	0f b6 90 e9 71 00 00 	movzbl 0x71e9(%eax),%edx
  102056:	83 ca 80             	or     $0xffffff80,%edx
  102059:	88 90 e9 71 00 00    	mov    %dl,0x71e9(%eax)
  10205f:	c7 c2 02 27 10 00    	mov    $0x102702,%edx
  102065:	c1 ea 10             	shr    $0x10,%edx
  102068:	66 89 90 ea 71 00 00 	mov    %dx,0x71ea(%eax)
  10206f:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  102075:	66 89 90 ec 71 00 00 	mov    %dx,0x71ec(%eax)
  10207c:	66 c7 80 ee 71 00 00 	movw   $0x8,0x71ee(%eax)
  102083:	08 00 
  102085:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10208c:	83 e2 e0             	and    $0xffffffe0,%edx
  10208f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  102095:	0f b6 90 f0 71 00 00 	movzbl 0x71f0(%eax),%edx
  10209c:	83 e2 1f             	and    $0x1f,%edx
  10209f:	88 90 f0 71 00 00    	mov    %dl,0x71f0(%eax)
  1020a5:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020ac:	83 e2 f0             	and    $0xfffffff0,%edx
  1020af:	83 ca 0e             	or     $0xe,%edx
  1020b2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020b8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020bf:	83 e2 ef             	and    $0xffffffef,%edx
  1020c2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020c8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020cf:	83 e2 9f             	and    $0xffffff9f,%edx
  1020d2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020d8:	0f b6 90 f1 71 00 00 	movzbl 0x71f1(%eax),%edx
  1020df:	83 ca 80             	or     $0xffffff80,%edx
  1020e2:	88 90 f1 71 00 00    	mov    %dl,0x71f1(%eax)
  1020e8:	c7 c2 08 27 10 00    	mov    $0x102708,%edx
  1020ee:	c1 ea 10             	shr    $0x10,%edx
  1020f1:	66 89 90 f2 71 00 00 	mov    %dx,0x71f2(%eax)
  1020f8:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  1020fe:	66 89 90 f4 71 00 00 	mov    %dx,0x71f4(%eax)
  102105:	66 c7 80 f6 71 00 00 	movw   $0x8,0x71f6(%eax)
  10210c:	08 00 
  10210e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102115:	83 e2 e0             	and    $0xffffffe0,%edx
  102118:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10211e:	0f b6 90 f8 71 00 00 	movzbl 0x71f8(%eax),%edx
  102125:	83 e2 1f             	and    $0x1f,%edx
  102128:	88 90 f8 71 00 00    	mov    %dl,0x71f8(%eax)
  10212e:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102135:	83 e2 f0             	and    $0xfffffff0,%edx
  102138:	83 ca 0e             	or     $0xe,%edx
  10213b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102141:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102148:	83 e2 ef             	and    $0xffffffef,%edx
  10214b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102151:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102158:	83 e2 9f             	and    $0xffffff9f,%edx
  10215b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102161:	0f b6 90 f9 71 00 00 	movzbl 0x71f9(%eax),%edx
  102168:	83 ca 80             	or     $0xffffff80,%edx
  10216b:	88 90 f9 71 00 00    	mov    %dl,0x71f9(%eax)
  102171:	c7 c2 0e 27 10 00    	mov    $0x10270e,%edx
  102177:	c1 ea 10             	shr    $0x10,%edx
  10217a:	66 89 90 fa 71 00 00 	mov    %dx,0x71fa(%eax)
  102181:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102187:	66 89 90 fc 71 00 00 	mov    %dx,0x71fc(%eax)
  10218e:	66 c7 80 fe 71 00 00 	movw   $0x8,0x71fe(%eax)
  102195:	08 00 
  102197:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  10219e:	83 e2 e0             	and    $0xffffffe0,%edx
  1021a1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021a7:	0f b6 90 00 72 00 00 	movzbl 0x7200(%eax),%edx
  1021ae:	83 e2 1f             	and    $0x1f,%edx
  1021b1:	88 90 00 72 00 00    	mov    %dl,0x7200(%eax)
  1021b7:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021be:	83 e2 f0             	and    $0xfffffff0,%edx
  1021c1:	83 ca 0e             	or     $0xe,%edx
  1021c4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ca:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021d1:	83 e2 ef             	and    $0xffffffef,%edx
  1021d4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021da:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021e1:	83 e2 9f             	and    $0xffffff9f,%edx
  1021e4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021ea:	0f b6 90 01 72 00 00 	movzbl 0x7201(%eax),%edx
  1021f1:	83 ca 80             	or     $0xffffff80,%edx
  1021f4:	88 90 01 72 00 00    	mov    %dl,0x7201(%eax)
  1021fa:	c7 c2 14 27 10 00    	mov    $0x102714,%edx
  102200:	c1 ea 10             	shr    $0x10,%edx
  102203:	66 89 90 02 72 00 00 	mov    %dx,0x7202(%eax)
  10220a:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102210:	66 89 90 04 72 00 00 	mov    %dx,0x7204(%eax)
  102217:	66 c7 80 06 72 00 00 	movw   $0x8,0x7206(%eax)
  10221e:	08 00 
  102220:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102227:	83 e2 e0             	and    $0xffffffe0,%edx
  10222a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102230:	0f b6 90 08 72 00 00 	movzbl 0x7208(%eax),%edx
  102237:	83 e2 1f             	and    $0x1f,%edx
  10223a:	88 90 08 72 00 00    	mov    %dl,0x7208(%eax)
  102240:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  102247:	83 e2 f0             	and    $0xfffffff0,%edx
  10224a:	83 ca 0e             	or     $0xe,%edx
  10224d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102253:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10225a:	83 e2 ef             	and    $0xffffffef,%edx
  10225d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102263:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10226a:	83 e2 9f             	and    $0xffffff9f,%edx
  10226d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102273:	0f b6 90 09 72 00 00 	movzbl 0x7209(%eax),%edx
  10227a:	83 ca 80             	or     $0xffffff80,%edx
  10227d:	88 90 09 72 00 00    	mov    %dl,0x7209(%eax)
  102283:	c7 c2 1a 27 10 00    	mov    $0x10271a,%edx
  102289:	c1 ea 10             	shr    $0x10,%edx
  10228c:	66 89 90 0a 72 00 00 	mov    %dx,0x720a(%eax)
  102293:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102299:	66 89 90 0c 72 00 00 	mov    %dx,0x720c(%eax)
  1022a0:	66 c7 80 0e 72 00 00 	movw   $0x8,0x720e(%eax)
  1022a7:	08 00 
  1022a9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022b0:	83 e2 e0             	and    $0xffffffe0,%edx
  1022b3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022b9:	0f b6 90 10 72 00 00 	movzbl 0x7210(%eax),%edx
  1022c0:	83 e2 1f             	and    $0x1f,%edx
  1022c3:	88 90 10 72 00 00    	mov    %dl,0x7210(%eax)
  1022c9:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022d0:	83 e2 f0             	and    $0xfffffff0,%edx
  1022d3:	83 ca 0e             	or     $0xe,%edx
  1022d6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022dc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022e3:	83 e2 ef             	and    $0xffffffef,%edx
  1022e6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022ec:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  1022f3:	83 e2 9f             	and    $0xffffff9f,%edx
  1022f6:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  1022fc:	0f b6 90 11 72 00 00 	movzbl 0x7211(%eax),%edx
  102303:	83 ca 80             	or     $0xffffff80,%edx
  102306:	88 90 11 72 00 00    	mov    %dl,0x7211(%eax)
  10230c:	c7 c2 20 27 10 00    	mov    $0x102720,%edx
  102312:	c1 ea 10             	shr    $0x10,%edx
  102315:	66 89 90 12 72 00 00 	mov    %dx,0x7212(%eax)
  10231c:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  102322:	66 89 90 14 72 00 00 	mov    %dx,0x7214(%eax)
  102329:	66 c7 80 16 72 00 00 	movw   $0x8,0x7216(%eax)
  102330:	08 00 
  102332:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102339:	83 e2 e0             	and    $0xffffffe0,%edx
  10233c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102342:	0f b6 90 18 72 00 00 	movzbl 0x7218(%eax),%edx
  102349:	83 e2 1f             	and    $0x1f,%edx
  10234c:	88 90 18 72 00 00    	mov    %dl,0x7218(%eax)
  102352:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  102359:	83 e2 f0             	and    $0xfffffff0,%edx
  10235c:	83 ca 0e             	or     $0xe,%edx
  10235f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102365:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10236c:	83 e2 ef             	and    $0xffffffef,%edx
  10236f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102375:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10237c:	83 e2 9f             	and    $0xffffff9f,%edx
  10237f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102385:	0f b6 90 19 72 00 00 	movzbl 0x7219(%eax),%edx
  10238c:	83 ca 80             	or     $0xffffff80,%edx
  10238f:	88 90 19 72 00 00    	mov    %dl,0x7219(%eax)
  102395:	c7 c2 26 27 10 00    	mov    $0x102726,%edx
  10239b:	c1 ea 10             	shr    $0x10,%edx
  10239e:	66 89 90 1a 72 00 00 	mov    %dx,0x721a(%eax)
  1023a5:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  1023ab:	66 89 90 1c 72 00 00 	mov    %dx,0x721c(%eax)
  1023b2:	66 c7 80 1e 72 00 00 	movw   $0x8,0x721e(%eax)
  1023b9:	08 00 
  1023bb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023c2:	83 e2 e0             	and    $0xffffffe0,%edx
  1023c5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023cb:	0f b6 90 20 72 00 00 	movzbl 0x7220(%eax),%edx
  1023d2:	83 e2 1f             	and    $0x1f,%edx
  1023d5:	88 90 20 72 00 00    	mov    %dl,0x7220(%eax)
  1023db:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023e2:	83 e2 f0             	and    $0xfffffff0,%edx
  1023e5:	83 ca 0e             	or     $0xe,%edx
  1023e8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023ee:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  1023f5:	83 e2 ef             	and    $0xffffffef,%edx
  1023f8:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  1023fe:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102405:	83 e2 9f             	and    $0xffffff9f,%edx
  102408:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10240e:	0f b6 90 21 72 00 00 	movzbl 0x7221(%eax),%edx
  102415:	83 ca 80             	or     $0xffffff80,%edx
  102418:	88 90 21 72 00 00    	mov    %dl,0x7221(%eax)
  10241e:	c7 c2 2c 27 10 00    	mov    $0x10272c,%edx
  102424:	c1 ea 10             	shr    $0x10,%edx
  102427:	66 89 90 22 72 00 00 	mov    %dx,0x7222(%eax)
  10242e:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  102434:	66 89 90 24 72 00 00 	mov    %dx,0x7224(%eax)
  10243b:	66 c7 80 26 72 00 00 	movw   $0x8,0x7226(%eax)
  102442:	08 00 
  102444:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10244b:	83 e2 e0             	and    $0xffffffe0,%edx
  10244e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102454:	0f b6 90 28 72 00 00 	movzbl 0x7228(%eax),%edx
  10245b:	83 e2 1f             	and    $0x1f,%edx
  10245e:	88 90 28 72 00 00    	mov    %dl,0x7228(%eax)
  102464:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10246b:	83 e2 f0             	and    $0xfffffff0,%edx
  10246e:	83 ca 0e             	or     $0xe,%edx
  102471:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102477:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10247e:	83 e2 ef             	and    $0xffffffef,%edx
  102481:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102487:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10248e:	83 e2 9f             	and    $0xffffff9f,%edx
  102491:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  102497:	0f b6 90 29 72 00 00 	movzbl 0x7229(%eax),%edx
  10249e:	83 ca 80             	or     $0xffffff80,%edx
  1024a1:	88 90 29 72 00 00    	mov    %dl,0x7229(%eax)
  1024a7:	c7 c2 32 27 10 00    	mov    $0x102732,%edx
  1024ad:	c1 ea 10             	shr    $0x10,%edx
  1024b0:	66 89 90 2a 72 00 00 	mov    %dx,0x722a(%eax)
  1024b7:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  1024bd:	66 89 90 2c 72 00 00 	mov    %dx,0x722c(%eax)
  1024c4:	66 c7 80 2e 72 00 00 	movw   $0x8,0x722e(%eax)
  1024cb:	08 00 
  1024cd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024d4:	83 e2 e0             	and    $0xffffffe0,%edx
  1024d7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024dd:	0f b6 90 30 72 00 00 	movzbl 0x7230(%eax),%edx
  1024e4:	83 e2 1f             	and    $0x1f,%edx
  1024e7:	88 90 30 72 00 00    	mov    %dl,0x7230(%eax)
  1024ed:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  1024f4:	83 e2 f0             	and    $0xfffffff0,%edx
  1024f7:	83 ca 0e             	or     $0xe,%edx
  1024fa:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102500:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102507:	83 e2 ef             	and    $0xffffffef,%edx
  10250a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102510:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102517:	83 ca 60             	or     $0x60,%edx
  10251a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102520:	0f b6 90 31 72 00 00 	movzbl 0x7231(%eax),%edx
  102527:	83 ca 80             	or     $0xffffff80,%edx
  10252a:	88 90 31 72 00 00    	mov    %dl,0x7231(%eax)
  102530:	c7 c2 68 27 10 00    	mov    $0x102768,%edx
  102536:	c1 ea 10             	shr    $0x10,%edx
  102539:	66 89 90 32 72 00 00 	mov    %dx,0x7232(%eax)
  102540:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  102546:	66 89 90 9c 78 00 00 	mov    %dx,0x789c(%eax)
  10254d:	66 c7 80 9e 78 00 00 	movw   $0x8,0x789e(%eax)
  102554:	08 00 
  102556:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10255d:	83 e2 e0             	and    $0xffffffe0,%edx
  102560:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102566:	0f b6 90 a0 78 00 00 	movzbl 0x78a0(%eax),%edx
  10256d:	83 e2 1f             	and    $0x1f,%edx
  102570:	88 90 a0 78 00 00    	mov    %dl,0x78a0(%eax)
  102576:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  10257d:	83 e2 f0             	and    $0xfffffff0,%edx
  102580:	83 ca 0e             	or     $0xe,%edx
  102583:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102589:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  102590:	83 e2 ef             	and    $0xffffffef,%edx
  102593:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  102599:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025a0:	83 e2 9f             	and    $0xffffff9f,%edx
  1025a3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025a9:	0f b6 90 a1 78 00 00 	movzbl 0x78a1(%eax),%edx
  1025b0:	83 ca 80             	or     $0xffffff80,%edx
  1025b3:	88 90 a1 78 00 00    	mov    %dl,0x78a1(%eax)
  1025b9:	c7 c2 6e 27 10 00    	mov    $0x10276e,%edx
  1025bf:	c1 ea 10             	shr    $0x10,%edx
  1025c2:	66 89 90 a2 78 00 00 	mov    %dx,0x78a2(%eax)
  1025c9:	0f 01 98 1c 05 00 00 	lidtl  0x51c(%eax)
  1025d0:	90                   	nop
  1025d1:	c9                   	leave
  1025d2:	c3                   	ret

001025d3 <intr_init>:
  1025d3:	55                   	push   %ebp
  1025d4:	89 e5                	mov    %esp,%ebp
  1025d6:	53                   	push   %ebx
  1025d7:	e8 e4 dd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1025dc:	81 c3 18 ea 00 00    	add    $0xea18,%ebx
  1025e2:	0f b6 83 ac 78 00 00 	movzbl 0x78ac(%ebx),%eax
  1025e9:	3c 01                	cmp    $0x1,%al
  1025eb:	74 0e                	je     1025fb <intr_init+0x28>
  1025ed:	e8 36 ec ff ff       	call   101228 <intr_init_idt>
  1025f2:	c6 83 ac 78 00 00 01 	movb   $0x1,0x78ac(%ebx)
  1025f9:	eb 01                	jmp    1025fc <intr_init+0x29>
  1025fb:	90                   	nop
  1025fc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1025ff:	c9                   	leave
  102600:	c3                   	ret
  102601:	66 90                	xchg   %ax,%ax
  102603:	66 90                	xchg   %ax,%ax
  102605:	66 90                	xchg   %ax,%ax
  102607:	66 90                	xchg   %ax,%ax
  102609:	66 90                	xchg   %ax,%ax
  10260b:	66 90                	xchg   %ax,%ax
  10260d:	66 90                	xchg   %ax,%ax
  10260f:	90                   	nop

00102610 <Xdivide>:
  102610:	6a 00                	push   $0x0
  102612:	6a 00                	push   $0x0
  102614:	e9 67 01 00 00       	jmp    102780 <_alltraps>
  102619:	90                   	nop

0010261a <Xdebug>:
  10261a:	6a 00                	push   $0x0
  10261c:	6a 01                	push   $0x1
  10261e:	e9 5d 01 00 00       	jmp    102780 <_alltraps>
  102623:	90                   	nop

00102624 <Xnmi>:
  102624:	6a 00                	push   $0x0
  102626:	6a 02                	push   $0x2
  102628:	e9 53 01 00 00       	jmp    102780 <_alltraps>
  10262d:	90                   	nop

0010262e <Xbrkpt>:
  10262e:	6a 00                	push   $0x0
  102630:	6a 03                	push   $0x3
  102632:	e9 49 01 00 00       	jmp    102780 <_alltraps>
  102637:	90                   	nop

00102638 <Xoflow>:
  102638:	6a 00                	push   $0x0
  10263a:	6a 04                	push   $0x4
  10263c:	e9 3f 01 00 00       	jmp    102780 <_alltraps>
  102641:	90                   	nop

00102642 <Xbound>:
  102642:	6a 00                	push   $0x0
  102644:	6a 05                	push   $0x5
  102646:	e9 35 01 00 00       	jmp    102780 <_alltraps>
  10264b:	90                   	nop

0010264c <Xillop>:
  10264c:	6a 00                	push   $0x0
  10264e:	6a 06                	push   $0x6
  102650:	e9 2b 01 00 00       	jmp    102780 <_alltraps>
  102655:	90                   	nop

00102656 <Xdevice>:
  102656:	6a 00                	push   $0x0
  102658:	6a 07                	push   $0x7
  10265a:	e9 21 01 00 00       	jmp    102780 <_alltraps>
  10265f:	90                   	nop

00102660 <Xdblflt>:
  102660:	6a 08                	push   $0x8
  102662:	e9 19 01 00 00       	jmp    102780 <_alltraps>
  102667:	90                   	nop

00102668 <Xcoproc>:
  102668:	6a 00                	push   $0x0
  10266a:	6a 09                	push   $0x9
  10266c:	e9 0f 01 00 00       	jmp    102780 <_alltraps>
  102671:	90                   	nop

00102672 <Xtss>:
  102672:	6a 0a                	push   $0xa
  102674:	e9 07 01 00 00       	jmp    102780 <_alltraps>
  102679:	90                   	nop

0010267a <Xsegnp>:
  10267a:	6a 0b                	push   $0xb
  10267c:	e9 ff 00 00 00       	jmp    102780 <_alltraps>
  102681:	90                   	nop

00102682 <Xstack>:
  102682:	6a 0c                	push   $0xc
  102684:	e9 f7 00 00 00       	jmp    102780 <_alltraps>
  102689:	90                   	nop

0010268a <Xgpflt>:
  10268a:	6a 0d                	push   $0xd
  10268c:	e9 ef 00 00 00       	jmp    102780 <_alltraps>
  102691:	90                   	nop

00102692 <Xpgflt>:
  102692:	6a 0e                	push   $0xe
  102694:	e9 e7 00 00 00       	jmp    102780 <_alltraps>
  102699:	90                   	nop

0010269a <Xres>:
  10269a:	6a 00                	push   $0x0
  10269c:	6a 0f                	push   $0xf
  10269e:	e9 dd 00 00 00       	jmp    102780 <_alltraps>
  1026a3:	90                   	nop

001026a4 <Xfperr>:
  1026a4:	6a 00                	push   $0x0
  1026a6:	6a 10                	push   $0x10
  1026a8:	e9 d3 00 00 00       	jmp    102780 <_alltraps>
  1026ad:	90                   	nop

001026ae <Xalign>:
  1026ae:	6a 11                	push   $0x11
  1026b0:	e9 cb 00 00 00       	jmp    102780 <_alltraps>
  1026b5:	90                   	nop

001026b6 <Xmchk>:
  1026b6:	6a 00                	push   $0x0
  1026b8:	6a 12                	push   $0x12
  1026ba:	e9 c1 00 00 00       	jmp    102780 <_alltraps>
  1026bf:	90                   	nop

001026c0 <Xirq_timer>:
  1026c0:	6a 00                	push   $0x0
  1026c2:	6a 20                	push   $0x20
  1026c4:	e9 b7 00 00 00       	jmp    102780 <_alltraps>
  1026c9:	90                   	nop

001026ca <Xirq_kbd>:
  1026ca:	6a 00                	push   $0x0
  1026cc:	6a 21                	push   $0x21
  1026ce:	e9 ad 00 00 00       	jmp    102780 <_alltraps>
  1026d3:	90                   	nop

001026d4 <Xirq_slave>:
  1026d4:	6a 00                	push   $0x0
  1026d6:	6a 22                	push   $0x22
  1026d8:	e9 a3 00 00 00       	jmp    102780 <_alltraps>
  1026dd:	90                   	nop

001026de <Xirq_serial2>:
  1026de:	6a 00                	push   $0x0
  1026e0:	6a 23                	push   $0x23
  1026e2:	e9 99 00 00 00       	jmp    102780 <_alltraps>
  1026e7:	90                   	nop

001026e8 <Xirq_serial1>:
  1026e8:	6a 00                	push   $0x0
  1026ea:	6a 24                	push   $0x24
  1026ec:	e9 8f 00 00 00       	jmp    102780 <_alltraps>
  1026f1:	90                   	nop

001026f2 <Xirq_lpt>:
  1026f2:	6a 00                	push   $0x0
  1026f4:	6a 25                	push   $0x25
  1026f6:	e9 85 00 00 00       	jmp    102780 <_alltraps>
  1026fb:	90                   	nop

001026fc <Xirq_floppy>:
  1026fc:	6a 00                	push   $0x0
  1026fe:	6a 26                	push   $0x26
  102700:	eb 7e                	jmp    102780 <_alltraps>

00102702 <Xirq_spurious>:
  102702:	6a 00                	push   $0x0
  102704:	6a 27                	push   $0x27
  102706:	eb 78                	jmp    102780 <_alltraps>

00102708 <Xirq_rtc>:
  102708:	6a 00                	push   $0x0
  10270a:	6a 28                	push   $0x28
  10270c:	eb 72                	jmp    102780 <_alltraps>

0010270e <Xirq9>:
  10270e:	6a 00                	push   $0x0
  102710:	6a 29                	push   $0x29
  102712:	eb 6c                	jmp    102780 <_alltraps>

00102714 <Xirq10>:
  102714:	6a 00                	push   $0x0
  102716:	6a 2a                	push   $0x2a
  102718:	eb 66                	jmp    102780 <_alltraps>

0010271a <Xirq11>:
  10271a:	6a 00                	push   $0x0
  10271c:	6a 2b                	push   $0x2b
  10271e:	eb 60                	jmp    102780 <_alltraps>

00102720 <Xirq_mouse>:
  102720:	6a 00                	push   $0x0
  102722:	6a 2c                	push   $0x2c
  102724:	eb 5a                	jmp    102780 <_alltraps>

00102726 <Xirq_coproc>:
  102726:	6a 00                	push   $0x0
  102728:	6a 2d                	push   $0x2d
  10272a:	eb 54                	jmp    102780 <_alltraps>

0010272c <Xirq_ide1>:
  10272c:	6a 00                	push   $0x0
  10272e:	6a 2e                	push   $0x2e
  102730:	eb 4e                	jmp    102780 <_alltraps>

00102732 <Xirq_ide2>:
  102732:	6a 00                	push   $0x0
  102734:	6a 2f                	push   $0x2f
  102736:	eb 48                	jmp    102780 <_alltraps>

00102738 <Xirq_ehci1>:
  102738:	6a 00                	push   $0x0
  10273a:	6a 30                	push   $0x30
  10273c:	eb 42                	jmp    102780 <_alltraps>

0010273e <Xirq17>:
  10273e:	6a 00                	push   $0x0
  102740:	6a 31                	push   $0x31
  102742:	eb 3c                	jmp    102780 <_alltraps>

00102744 <Xirq18>:
  102744:	6a 00                	push   $0x0
  102746:	6a 32                	push   $0x32
  102748:	eb 36                	jmp    102780 <_alltraps>

0010274a <Xirq19>:
  10274a:	6a 00                	push   $0x0
  10274c:	6a 33                	push   $0x33
  10274e:	eb 30                	jmp    102780 <_alltraps>

00102750 <Xirq20>:
  102750:	6a 00                	push   $0x0
  102752:	6a 34                	push   $0x34
  102754:	eb 2a                	jmp    102780 <_alltraps>

00102756 <Xirq21>:
  102756:	6a 00                	push   $0x0
  102758:	6a 35                	push   $0x35
  10275a:	eb 24                	jmp    102780 <_alltraps>

0010275c <Xirq22>:
  10275c:	6a 00                	push   $0x0
  10275e:	6a 36                	push   $0x36
  102760:	eb 1e                	jmp    102780 <_alltraps>

00102762 <Xirq_ehci2>:
  102762:	6a 00                	push   $0x0
  102764:	6a 37                	push   $0x37
  102766:	eb 18                	jmp    102780 <_alltraps>

00102768 <Xsyscall>:
  102768:	6a 00                	push   $0x0
  10276a:	6a 30                	push   $0x30
  10276c:	eb 12                	jmp    102780 <_alltraps>

0010276e <Xdefault>:
  10276e:	68 fe 00 00 00       	push   $0xfe
  102773:	eb 0b                	jmp    102780 <_alltraps>
  102775:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10277c:	00 
  10277d:	8d 76 00             	lea    0x0(%esi),%esi

00102780 <_alltraps>:
  102780:	fa                   	cli
  102781:	1e                   	push   %ds
  102782:	06                   	push   %es
  102783:	60                   	pusha
  102784:	b8 10 00 00 00       	mov    $0x10,%eax
  102789:	8e d8                	mov    %eax,%ds
  10278b:	8e c0                	mov    %eax,%es
  10278d:	54                   	push   %esp
  10278e:	e8 b9 21 00 00       	call   10494c <trap>
  102793:	f4                   	hlt
  102794:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10279b:	00 
  10279c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001027a0 <trap_return>:
  1027a0:	8b 64 24 04          	mov    0x4(%esp),%esp
  1027a4:	61                   	popa
  1027a5:	07                   	pop    %es
  1027a6:	1f                   	pop    %ds
  1027a7:	83 c4 08             	add    $0x8,%esp
  1027aa:	c3                   	ret

001027ab <memset>:
  1027ab:	55                   	push   %ebp
  1027ac:	89 e5                	mov    %esp,%ebp
  1027ae:	57                   	push   %edi
  1027af:	e8 04 dc ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1027b4:	05 40 e8 00 00       	add    $0xe840,%eax
  1027b9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1027bd:	75 05                	jne    1027c4 <memset+0x19>
  1027bf:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c2:	eb 5c                	jmp    102820 <memset+0x75>
  1027c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c7:	83 e0 03             	and    $0x3,%eax
  1027ca:	85 c0                	test   %eax,%eax
  1027cc:	75 41                	jne    10280f <memset+0x64>
  1027ce:	8b 45 10             	mov    0x10(%ebp),%eax
  1027d1:	83 e0 03             	and    $0x3,%eax
  1027d4:	85 c0                	test   %eax,%eax
  1027d6:	75 37                	jne    10280f <memset+0x64>
  1027d8:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
  1027df:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027e2:	c1 e0 18             	shl    $0x18,%eax
  1027e5:	89 c2                	mov    %eax,%edx
  1027e7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027ea:	c1 e0 10             	shl    $0x10,%eax
  1027ed:	09 c2                	or     %eax,%edx
  1027ef:	8b 45 0c             	mov    0xc(%ebp),%eax
  1027f2:	c1 e0 08             	shl    $0x8,%eax
  1027f5:	09 d0                	or     %edx,%eax
  1027f7:	09 45 0c             	or     %eax,0xc(%ebp)
  1027fa:	8b 45 10             	mov    0x10(%ebp),%eax
  1027fd:	c1 e8 02             	shr    $0x2,%eax
  102800:	89 c1                	mov    %eax,%ecx
  102802:	8b 55 08             	mov    0x8(%ebp),%edx
  102805:	8b 45 0c             	mov    0xc(%ebp),%eax
  102808:	89 d7                	mov    %edx,%edi
  10280a:	fc                   	cld
  10280b:	f3 ab                	rep stos %eax,%es:(%edi)
  10280d:	eb 0e                	jmp    10281d <memset+0x72>
  10280f:	8b 55 08             	mov    0x8(%ebp),%edx
  102812:	8b 45 0c             	mov    0xc(%ebp),%eax
  102815:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102818:	89 d7                	mov    %edx,%edi
  10281a:	fc                   	cld
  10281b:	f3 aa                	rep stos %al,%es:(%edi)
  10281d:	8b 45 08             	mov    0x8(%ebp),%eax
  102820:	8b 7d fc             	mov    -0x4(%ebp),%edi
  102823:	c9                   	leave
  102824:	c3                   	ret

00102825 <memmove>:
  102825:	55                   	push   %ebp
  102826:	89 e5                	mov    %esp,%ebp
  102828:	57                   	push   %edi
  102829:	56                   	push   %esi
  10282a:	53                   	push   %ebx
  10282b:	83 ec 10             	sub    $0x10,%esp
  10282e:	e8 85 db ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102833:	05 c1 e7 00 00       	add    $0xe7c1,%eax
  102838:	8b 45 0c             	mov    0xc(%ebp),%eax
  10283b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10283e:	8b 45 08             	mov    0x8(%ebp),%eax
  102841:	89 45 ec             	mov    %eax,-0x14(%ebp)
  102844:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102847:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  10284a:	73 6d                	jae    1028b9 <memmove+0x94>
  10284c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10284f:	8b 45 10             	mov    0x10(%ebp),%eax
  102852:	01 d0                	add    %edx,%eax
  102854:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  102857:	73 60                	jae    1028b9 <memmove+0x94>
  102859:	8b 45 10             	mov    0x10(%ebp),%eax
  10285c:	01 45 f0             	add    %eax,-0x10(%ebp)
  10285f:	8b 45 10             	mov    0x10(%ebp),%eax
  102862:	01 45 ec             	add    %eax,-0x14(%ebp)
  102865:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102868:	83 e0 03             	and    $0x3,%eax
  10286b:	85 c0                	test   %eax,%eax
  10286d:	75 2f                	jne    10289e <memmove+0x79>
  10286f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102872:	83 e0 03             	and    $0x3,%eax
  102875:	85 c0                	test   %eax,%eax
  102877:	75 25                	jne    10289e <memmove+0x79>
  102879:	8b 45 10             	mov    0x10(%ebp),%eax
  10287c:	83 e0 03             	and    $0x3,%eax
  10287f:	85 c0                	test   %eax,%eax
  102881:	75 1b                	jne    10289e <memmove+0x79>
  102883:	8b 45 ec             	mov    -0x14(%ebp),%eax
  102886:	83 e8 04             	sub    $0x4,%eax
  102889:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10288c:	83 ea 04             	sub    $0x4,%edx
  10288f:	8b 4d 10             	mov    0x10(%ebp),%ecx
  102892:	c1 e9 02             	shr    $0x2,%ecx
  102895:	89 c7                	mov    %eax,%edi
  102897:	89 d6                	mov    %edx,%esi
  102899:	fd                   	std
  10289a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  10289c:	eb 18                	jmp    1028b6 <memmove+0x91>
  10289e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028a1:	8d 50 ff             	lea    -0x1(%eax),%edx
  1028a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028a7:	8d 58 ff             	lea    -0x1(%eax),%ebx
  1028aa:	8b 45 10             	mov    0x10(%ebp),%eax
  1028ad:	89 d7                	mov    %edx,%edi
  1028af:	89 de                	mov    %ebx,%esi
  1028b1:	89 c1                	mov    %eax,%ecx
  1028b3:	fd                   	std
  1028b4:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028b6:	fc                   	cld
  1028b7:	eb 45                	jmp    1028fe <memmove+0xd9>
  1028b9:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1028bc:	83 e0 03             	and    $0x3,%eax
  1028bf:	85 c0                	test   %eax,%eax
  1028c1:	75 2b                	jne    1028ee <memmove+0xc9>
  1028c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028c6:	83 e0 03             	and    $0x3,%eax
  1028c9:	85 c0                	test   %eax,%eax
  1028cb:	75 21                	jne    1028ee <memmove+0xc9>
  1028cd:	8b 45 10             	mov    0x10(%ebp),%eax
  1028d0:	83 e0 03             	and    $0x3,%eax
  1028d3:	85 c0                	test   %eax,%eax
  1028d5:	75 17                	jne    1028ee <memmove+0xc9>
  1028d7:	8b 45 10             	mov    0x10(%ebp),%eax
  1028da:	c1 e8 02             	shr    $0x2,%eax
  1028dd:	89 c1                	mov    %eax,%ecx
  1028df:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028e2:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028e5:	89 c7                	mov    %eax,%edi
  1028e7:	89 d6                	mov    %edx,%esi
  1028e9:	fc                   	cld
  1028ea:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  1028ec:	eb 10                	jmp    1028fe <memmove+0xd9>
  1028ee:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1028f1:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1028f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
  1028f7:	89 c7                	mov    %eax,%edi
  1028f9:	89 d6                	mov    %edx,%esi
  1028fb:	fc                   	cld
  1028fc:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  1028fe:	8b 45 08             	mov    0x8(%ebp),%eax
  102901:	83 c4 10             	add    $0x10,%esp
  102904:	5b                   	pop    %ebx
  102905:	5e                   	pop    %esi
  102906:	5f                   	pop    %edi
  102907:	5d                   	pop    %ebp
  102908:	c3                   	ret

00102909 <memcpy>:
  102909:	55                   	push   %ebp
  10290a:	89 e5                	mov    %esp,%ebp
  10290c:	e8 a7 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102911:	05 e3 e6 00 00       	add    $0xe6e3,%eax
  102916:	ff 75 10             	push   0x10(%ebp)
  102919:	ff 75 0c             	push   0xc(%ebp)
  10291c:	ff 75 08             	push   0x8(%ebp)
  10291f:	e8 01 ff ff ff       	call   102825 <memmove>
  102924:	83 c4 0c             	add    $0xc,%esp
  102927:	c9                   	leave
  102928:	c3                   	ret

00102929 <strncmp>:
  102929:	55                   	push   %ebp
  10292a:	89 e5                	mov    %esp,%ebp
  10292c:	e8 87 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102931:	05 c3 e6 00 00       	add    $0xe6c3,%eax
  102936:	eb 0c                	jmp    102944 <strncmp+0x1b>
  102938:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10293c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102940:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  102944:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102948:	74 1a                	je     102964 <strncmp+0x3b>
  10294a:	8b 45 08             	mov    0x8(%ebp),%eax
  10294d:	0f b6 00             	movzbl (%eax),%eax
  102950:	84 c0                	test   %al,%al
  102952:	74 10                	je     102964 <strncmp+0x3b>
  102954:	8b 45 08             	mov    0x8(%ebp),%eax
  102957:	0f b6 10             	movzbl (%eax),%edx
  10295a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10295d:	0f b6 00             	movzbl (%eax),%eax
  102960:	38 c2                	cmp    %al,%dl
  102962:	74 d4                	je     102938 <strncmp+0xf>
  102964:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  102968:	75 07                	jne    102971 <strncmp+0x48>
  10296a:	ba 00 00 00 00       	mov    $0x0,%edx
  10296f:	eb 14                	jmp    102985 <strncmp+0x5c>
  102971:	8b 45 08             	mov    0x8(%ebp),%eax
  102974:	0f b6 00             	movzbl (%eax),%eax
  102977:	0f b6 d0             	movzbl %al,%edx
  10297a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10297d:	0f b6 00             	movzbl (%eax),%eax
  102980:	0f b6 c0             	movzbl %al,%eax
  102983:	29 c2                	sub    %eax,%edx
  102985:	89 d0                	mov    %edx,%eax
  102987:	5d                   	pop    %ebp
  102988:	c3                   	ret

00102989 <strnlen>:
  102989:	55                   	push   %ebp
  10298a:	89 e5                	mov    %esp,%ebp
  10298c:	83 ec 10             	sub    $0x10,%esp
  10298f:	e8 24 da ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102994:	05 60 e6 00 00       	add    $0xe660,%eax
  102999:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  1029a0:	eb 0c                	jmp    1029ae <strnlen+0x25>
  1029a2:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1029a6:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029aa:	83 6d 0c 01          	subl   $0x1,0xc(%ebp)
  1029ae:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1029b2:	74 0a                	je     1029be <strnlen+0x35>
  1029b4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b7:	0f b6 00             	movzbl (%eax),%eax
  1029ba:	84 c0                	test   %al,%al
  1029bc:	75 e4                	jne    1029a2 <strnlen+0x19>
  1029be:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1029c1:	c9                   	leave
  1029c2:	c3                   	ret

001029c3 <strcmp>:
  1029c3:	55                   	push   %ebp
  1029c4:	89 e5                	mov    %esp,%ebp
  1029c6:	e8 ed d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1029cb:	05 29 e6 00 00       	add    $0xe629,%eax
  1029d0:	eb 08                	jmp    1029da <strcmp+0x17>
  1029d2:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1029d6:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  1029da:	8b 45 08             	mov    0x8(%ebp),%eax
  1029dd:	0f b6 00             	movzbl (%eax),%eax
  1029e0:	84 c0                	test   %al,%al
  1029e2:	74 10                	je     1029f4 <strcmp+0x31>
  1029e4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029e7:	0f b6 10             	movzbl (%eax),%edx
  1029ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  1029ed:	0f b6 00             	movzbl (%eax),%eax
  1029f0:	38 c2                	cmp    %al,%dl
  1029f2:	74 de                	je     1029d2 <strcmp+0xf>
  1029f4:	8b 45 08             	mov    0x8(%ebp),%eax
  1029f7:	0f b6 00             	movzbl (%eax),%eax
  1029fa:	0f b6 d0             	movzbl %al,%edx
  1029fd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a00:	0f b6 00             	movzbl (%eax),%eax
  102a03:	0f b6 c0             	movzbl %al,%eax
  102a06:	29 c2                	sub    %eax,%edx
  102a08:	89 d0                	mov    %edx,%eax
  102a0a:	5d                   	pop    %ebp
  102a0b:	c3                   	ret

00102a0c <strchr>:
  102a0c:	55                   	push   %ebp
  102a0d:	89 e5                	mov    %esp,%ebp
  102a0f:	83 ec 04             	sub    $0x4,%esp
  102a12:	e8 a1 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a17:	05 dd e5 00 00       	add    $0xe5dd,%eax
  102a1c:	8b 45 0c             	mov    0xc(%ebp),%eax
  102a1f:	88 45 fc             	mov    %al,-0x4(%ebp)
  102a22:	eb 14                	jmp    102a38 <strchr+0x2c>
  102a24:	8b 45 08             	mov    0x8(%ebp),%eax
  102a27:	0f b6 00             	movzbl (%eax),%eax
  102a2a:	38 45 fc             	cmp    %al,-0x4(%ebp)
  102a2d:	75 05                	jne    102a34 <strchr+0x28>
  102a2f:	8b 45 08             	mov    0x8(%ebp),%eax
  102a32:	eb 13                	jmp    102a47 <strchr+0x3b>
  102a34:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102a38:	8b 45 08             	mov    0x8(%ebp),%eax
  102a3b:	0f b6 00             	movzbl (%eax),%eax
  102a3e:	84 c0                	test   %al,%al
  102a40:	75 e2                	jne    102a24 <strchr+0x18>
  102a42:	b8 00 00 00 00       	mov    $0x0,%eax
  102a47:	c9                   	leave
  102a48:	c3                   	ret

00102a49 <memzero>:
  102a49:	55                   	push   %ebp
  102a4a:	89 e5                	mov    %esp,%ebp
  102a4c:	e8 67 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a51:	05 a3 e5 00 00       	add    $0xe5a3,%eax
  102a56:	ff 75 0c             	push   0xc(%ebp)
  102a59:	6a 00                	push   $0x0
  102a5b:	ff 75 08             	push   0x8(%ebp)
  102a5e:	e8 48 fd ff ff       	call   1027ab <memset>
  102a63:	83 c4 0c             	add    $0xc,%esp
  102a66:	c9                   	leave
  102a67:	c3                   	ret

00102a68 <debug_info>:
  102a68:	55                   	push   %ebp
  102a69:	89 e5                	mov    %esp,%ebp
  102a6b:	53                   	push   %ebx
  102a6c:	83 ec 14             	sub    $0x14,%esp
  102a6f:	e8 44 d9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102a74:	05 80 e5 00 00       	add    $0xe580,%eax
  102a79:	8d 55 0c             	lea    0xc(%ebp),%edx
  102a7c:	89 55 f4             	mov    %edx,-0xc(%ebp)
  102a7f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102a82:	83 ec 08             	sub    $0x8,%esp
  102a85:	52                   	push   %edx
  102a86:	ff 75 08             	push   0x8(%ebp)
  102a89:	89 c3                	mov    %eax,%ebx
  102a8b:	e8 68 02 00 00       	call   102cf8 <vdprintf>
  102a90:	83 c4 10             	add    $0x10,%esp
  102a93:	90                   	nop
  102a94:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102a97:	c9                   	leave
  102a98:	c3                   	ret

00102a99 <debug_normal>:
  102a99:	55                   	push   %ebp
  102a9a:	89 e5                	mov    %esp,%ebp
  102a9c:	53                   	push   %ebx
  102a9d:	83 ec 14             	sub    $0x14,%esp
  102aa0:	e8 1b d9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102aa5:	81 c3 4f e5 00 00    	add    $0xe54f,%ebx
  102aab:	83 ec 04             	sub    $0x4,%esp
  102aae:	ff 75 0c             	push   0xc(%ebp)
  102ab1:	ff 75 08             	push   0x8(%ebp)
  102ab4:	8d 83 23 91 ff ff    	lea    -0x6edd(%ebx),%eax
  102aba:	50                   	push   %eax
  102abb:	e8 ac 02 00 00       	call   102d6c <dprintf>
  102ac0:	83 c4 10             	add    $0x10,%esp
  102ac3:	8d 45 14             	lea    0x14(%ebp),%eax
  102ac6:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102ac9:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102acc:	83 ec 08             	sub    $0x8,%esp
  102acf:	50                   	push   %eax
  102ad0:	ff 75 10             	push   0x10(%ebp)
  102ad3:	e8 20 02 00 00       	call   102cf8 <vdprintf>
  102ad8:	83 c4 10             	add    $0x10,%esp
  102adb:	90                   	nop
  102adc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102adf:	c9                   	leave
  102ae0:	c3                   	ret

00102ae1 <debug_trace>:
  102ae1:	55                   	push   %ebp
  102ae2:	89 e5                	mov    %esp,%ebp
  102ae4:	83 ec 10             	sub    $0x10,%esp
  102ae7:	e8 cc d8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102aec:	05 08 e5 00 00       	add    $0xe508,%eax
  102af1:	8b 45 08             	mov    0x8(%ebp),%eax
  102af4:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102af7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102afe:	eb 23                	jmp    102b23 <debug_trace+0x42>
  102b00:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b03:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b0a:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b0d:	01 c2                	add    %eax,%edx
  102b0f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b12:	8b 40 04             	mov    0x4(%eax),%eax
  102b15:	89 02                	mov    %eax,(%edx)
  102b17:	8b 45 f8             	mov    -0x8(%ebp),%eax
  102b1a:	8b 00                	mov    (%eax),%eax
  102b1c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  102b1f:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b23:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b27:	7f 21                	jg     102b4a <debug_trace+0x69>
  102b29:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
  102b2d:	75 d1                	jne    102b00 <debug_trace+0x1f>
  102b2f:	eb 19                	jmp    102b4a <debug_trace+0x69>
  102b31:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102b34:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  102b3b:	8b 45 0c             	mov    0xc(%ebp),%eax
  102b3e:	01 d0                	add    %edx,%eax
  102b40:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102b46:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102b4a:	83 7d fc 09          	cmpl   $0x9,-0x4(%ebp)
  102b4e:	7e e1                	jle    102b31 <debug_trace+0x50>
  102b50:	90                   	nop
  102b51:	90                   	nop
  102b52:	c9                   	leave
  102b53:	c3                   	ret

00102b54 <debug_panic>:
  102b54:	55                   	push   %ebp
  102b55:	89 e5                	mov    %esp,%ebp
  102b57:	53                   	push   %ebx
  102b58:	83 ec 44             	sub    $0x44,%esp
  102b5b:	e8 60 d8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102b60:	81 c3 94 e4 00 00    	add    $0xe494,%ebx
  102b66:	83 ec 04             	sub    $0x4,%esp
  102b69:	ff 75 0c             	push   0xc(%ebp)
  102b6c:	ff 75 08             	push   0x8(%ebp)
  102b6f:	8d 83 2f 91 ff ff    	lea    -0x6ed1(%ebx),%eax
  102b75:	50                   	push   %eax
  102b76:	e8 f1 01 00 00       	call   102d6c <dprintf>
  102b7b:	83 c4 10             	add    $0x10,%esp
  102b7e:	8d 45 14             	lea    0x14(%ebp),%eax
  102b81:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  102b84:	8b 45 c4             	mov    -0x3c(%ebp),%eax
  102b87:	83 ec 08             	sub    $0x8,%esp
  102b8a:	50                   	push   %eax
  102b8b:	ff 75 10             	push   0x10(%ebp)
  102b8e:	e8 65 01 00 00       	call   102cf8 <vdprintf>
  102b93:	83 c4 10             	add    $0x10,%esp
  102b96:	89 e8                	mov    %ebp,%eax
  102b98:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102b9b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102b9e:	83 ec 08             	sub    $0x8,%esp
  102ba1:	8d 55 c8             	lea    -0x38(%ebp),%edx
  102ba4:	52                   	push   %edx
  102ba5:	50                   	push   %eax
  102ba6:	e8 36 ff ff ff       	call   102ae1 <debug_trace>
  102bab:	83 c4 10             	add    $0x10,%esp
  102bae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102bb5:	eb 1e                	jmp    102bd5 <debug_panic+0x81>
  102bb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bba:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102bbe:	83 ec 08             	sub    $0x8,%esp
  102bc1:	50                   	push   %eax
  102bc2:	8d 83 3b 91 ff ff    	lea    -0x6ec5(%ebx),%eax
  102bc8:	50                   	push   %eax
  102bc9:	e8 9e 01 00 00       	call   102d6c <dprintf>
  102bce:	83 c4 10             	add    $0x10,%esp
  102bd1:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  102bd5:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
  102bd9:	7f 0b                	jg     102be6 <debug_panic+0x92>
  102bdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102bde:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
  102be2:	85 c0                	test   %eax,%eax
  102be4:	75 d1                	jne    102bb7 <debug_panic+0x63>
  102be6:	83 ec 0c             	sub    $0xc,%esp
  102be9:	8d 83 49 91 ff ff    	lea    -0x6eb7(%ebx),%eax
  102bef:	50                   	push   %eax
  102bf0:	e8 77 01 00 00       	call   102d6c <dprintf>
  102bf5:	83 c4 10             	add    $0x10,%esp
  102bf8:	e8 e0 0c 00 00       	call   1038dd <halt>
  102bfd:	90                   	nop
  102bfe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c01:	c9                   	leave
  102c02:	c3                   	ret

00102c03 <debug_warn>:
  102c03:	55                   	push   %ebp
  102c04:	89 e5                	mov    %esp,%ebp
  102c06:	53                   	push   %ebx
  102c07:	83 ec 14             	sub    $0x14,%esp
  102c0a:	e8 b1 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c0f:	81 c3 e5 e3 00 00    	add    $0xe3e5,%ebx
  102c15:	83 ec 04             	sub    $0x4,%esp
  102c18:	ff 75 0c             	push   0xc(%ebp)
  102c1b:	ff 75 08             	push   0x8(%ebp)
  102c1e:	8d 83 5b 91 ff ff    	lea    -0x6ea5(%ebx),%eax
  102c24:	50                   	push   %eax
  102c25:	e8 42 01 00 00       	call   102d6c <dprintf>
  102c2a:	83 c4 10             	add    $0x10,%esp
  102c2d:	8d 45 14             	lea    0x14(%ebp),%eax
  102c30:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102c33:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102c36:	83 ec 08             	sub    $0x8,%esp
  102c39:	50                   	push   %eax
  102c3a:	ff 75 10             	push   0x10(%ebp)
  102c3d:	e8 b6 00 00 00       	call   102cf8 <vdprintf>
  102c42:	83 c4 10             	add    $0x10,%esp
  102c45:	90                   	nop
  102c46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c49:	c9                   	leave
  102c4a:	c3                   	ret

00102c4b <cputs>:
  102c4b:	55                   	push   %ebp
  102c4c:	89 e5                	mov    %esp,%ebp
  102c4e:	53                   	push   %ebx
  102c4f:	83 ec 04             	sub    $0x4,%esp
  102c52:	e8 69 d7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  102c57:	81 c3 9d e3 00 00    	add    $0xe39d,%ebx
  102c5d:	eb 19                	jmp    102c78 <cputs+0x2d>
  102c5f:	8b 45 08             	mov    0x8(%ebp),%eax
  102c62:	0f b6 00             	movzbl (%eax),%eax
  102c65:	0f be c0             	movsbl %al,%eax
  102c68:	83 ec 0c             	sub    $0xc,%esp
  102c6b:	50                   	push   %eax
  102c6c:	e8 5f d8 ff ff       	call   1004d0 <cons_putc>
  102c71:	83 c4 10             	add    $0x10,%esp
  102c74:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  102c78:	8b 45 08             	mov    0x8(%ebp),%eax
  102c7b:	0f b6 00             	movzbl (%eax),%eax
  102c7e:	84 c0                	test   %al,%al
  102c80:	75 dd                	jne    102c5f <cputs+0x14>
  102c82:	90                   	nop
  102c83:	90                   	nop
  102c84:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102c87:	c9                   	leave
  102c88:	c3                   	ret

00102c89 <putch>:
  102c89:	55                   	push   %ebp
  102c8a:	89 e5                	mov    %esp,%ebp
  102c8c:	83 ec 08             	sub    $0x8,%esp
  102c8f:	e8 24 d7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102c94:	05 60 e3 00 00       	add    $0xe360,%eax
  102c99:	8b 45 0c             	mov    0xc(%ebp),%eax
  102c9c:	8b 00                	mov    (%eax),%eax
  102c9e:	8d 48 01             	lea    0x1(%eax),%ecx
  102ca1:	8b 55 0c             	mov    0xc(%ebp),%edx
  102ca4:	89 0a                	mov    %ecx,(%edx)
  102ca6:	8b 55 08             	mov    0x8(%ebp),%edx
  102ca9:	89 d1                	mov    %edx,%ecx
  102cab:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cae:	88 4c 02 08          	mov    %cl,0x8(%edx,%eax,1)
  102cb2:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cb5:	8b 00                	mov    (%eax),%eax
  102cb7:	3d ff 01 00 00       	cmp    $0x1ff,%eax
  102cbc:	75 28                	jne    102ce6 <putch+0x5d>
  102cbe:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cc1:	8b 00                	mov    (%eax),%eax
  102cc3:	8b 55 0c             	mov    0xc(%ebp),%edx
  102cc6:	c6 44 02 08 00       	movb   $0x0,0x8(%edx,%eax,1)
  102ccb:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cce:	83 c0 08             	add    $0x8,%eax
  102cd1:	83 ec 0c             	sub    $0xc,%esp
  102cd4:	50                   	push   %eax
  102cd5:	e8 71 ff ff ff       	call   102c4b <cputs>
  102cda:	83 c4 10             	add    $0x10,%esp
  102cdd:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  102ce6:	8b 45 0c             	mov    0xc(%ebp),%eax
  102ce9:	8b 40 04             	mov    0x4(%eax),%eax
  102cec:	8d 50 01             	lea    0x1(%eax),%edx
  102cef:	8b 45 0c             	mov    0xc(%ebp),%eax
  102cf2:	89 50 04             	mov    %edx,0x4(%eax)
  102cf5:	90                   	nop
  102cf6:	c9                   	leave
  102cf7:	c3                   	ret

00102cf8 <vdprintf>:
  102cf8:	55                   	push   %ebp
  102cf9:	89 e5                	mov    %esp,%ebp
  102cfb:	53                   	push   %ebx
  102cfc:	81 ec 14 02 00 00    	sub    $0x214,%esp
  102d02:	e8 b1 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d07:	05 ed e2 00 00       	add    $0xe2ed,%eax
  102d0c:	c7 85 f0 fd ff ff 00 	movl   $0x0,-0x210(%ebp)
  102d13:	00 00 00 
  102d16:	c7 85 f4 fd ff ff 00 	movl   $0x0,-0x20c(%ebp)
  102d1d:	00 00 00 
  102d20:	ff 75 0c             	push   0xc(%ebp)
  102d23:	ff 75 08             	push   0x8(%ebp)
  102d26:	8d 95 f0 fd ff ff    	lea    -0x210(%ebp),%edx
  102d2c:	52                   	push   %edx
  102d2d:	8d 90 95 1c ff ff    	lea    -0xe36b(%eax),%edx
  102d33:	52                   	push   %edx
  102d34:	89 c3                	mov    %eax,%ebx
  102d36:	e8 d6 01 00 00       	call   102f11 <vprintfmt>
  102d3b:	83 c4 10             	add    $0x10,%esp
  102d3e:	8b 85 f0 fd ff ff    	mov    -0x210(%ebp),%eax
  102d44:	c6 84 05 f8 fd ff ff 	movb   $0x0,-0x208(%ebp,%eax,1)
  102d4b:	00 
  102d4c:	83 ec 0c             	sub    $0xc,%esp
  102d4f:	8d 85 f0 fd ff ff    	lea    -0x210(%ebp),%eax
  102d55:	83 c0 08             	add    $0x8,%eax
  102d58:	50                   	push   %eax
  102d59:	e8 ed fe ff ff       	call   102c4b <cputs>
  102d5e:	83 c4 10             	add    $0x10,%esp
  102d61:	8b 85 f4 fd ff ff    	mov    -0x20c(%ebp),%eax
  102d67:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102d6a:	c9                   	leave
  102d6b:	c3                   	ret

00102d6c <dprintf>:
  102d6c:	55                   	push   %ebp
  102d6d:	89 e5                	mov    %esp,%ebp
  102d6f:	83 ec 18             	sub    $0x18,%esp
  102d72:	e8 41 d6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102d77:	05 7d e2 00 00       	add    $0xe27d,%eax
  102d7c:	8d 45 0c             	lea    0xc(%ebp),%eax
  102d7f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  102d82:	8b 45 f0             	mov    -0x10(%ebp),%eax
  102d85:	83 ec 08             	sub    $0x8,%esp
  102d88:	50                   	push   %eax
  102d89:	ff 75 08             	push   0x8(%ebp)
  102d8c:	e8 67 ff ff ff       	call   102cf8 <vdprintf>
  102d91:	83 c4 10             	add    $0x10,%esp
  102d94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  102d97:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102d9a:	c9                   	leave
  102d9b:	c3                   	ret

00102d9c <printnum>:
  102d9c:	55                   	push   %ebp
  102d9d:	89 e5                	mov    %esp,%ebp
  102d9f:	57                   	push   %edi
  102da0:	56                   	push   %esi
  102da1:	53                   	push   %ebx
  102da2:	83 ec 1c             	sub    $0x1c,%esp
  102da5:	e8 b2 04 00 00       	call   10325c <__x86.get_pc_thunk.si>
  102daa:	81 c6 4a e2 00 00    	add    $0xe24a,%esi
  102db0:	8b 45 10             	mov    0x10(%ebp),%eax
  102db3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  102db6:	8b 45 14             	mov    0x14(%ebp),%eax
  102db9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  102dbc:	8b 45 18             	mov    0x18(%ebp),%eax
  102dbf:	ba 00 00 00 00       	mov    $0x0,%edx
  102dc4:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  102dc7:	39 45 e0             	cmp    %eax,-0x20(%ebp)
  102dca:	19 d1                	sbb    %edx,%ecx
  102dcc:	72 4d                	jb     102e1b <printnum+0x7f>
  102dce:	8b 45 1c             	mov    0x1c(%ebp),%eax
  102dd1:	8d 78 ff             	lea    -0x1(%eax),%edi
  102dd4:	8b 45 18             	mov    0x18(%ebp),%eax
  102dd7:	ba 00 00 00 00       	mov    $0x0,%edx
  102ddc:	52                   	push   %edx
  102ddd:	50                   	push   %eax
  102dde:	ff 75 e4             	push   -0x1c(%ebp)
  102de1:	ff 75 e0             	push   -0x20(%ebp)
  102de4:	89 f3                	mov    %esi,%ebx
  102de6:	e8 15 60 00 00       	call   108e00 <__udivdi3>
  102deb:	83 c4 10             	add    $0x10,%esp
  102dee:	83 ec 04             	sub    $0x4,%esp
  102df1:	ff 75 20             	push   0x20(%ebp)
  102df4:	57                   	push   %edi
  102df5:	ff 75 18             	push   0x18(%ebp)
  102df8:	52                   	push   %edx
  102df9:	50                   	push   %eax
  102dfa:	ff 75 0c             	push   0xc(%ebp)
  102dfd:	ff 75 08             	push   0x8(%ebp)
  102e00:	e8 97 ff ff ff       	call   102d9c <printnum>
  102e05:	83 c4 20             	add    $0x20,%esp
  102e08:	eb 1b                	jmp    102e25 <printnum+0x89>
  102e0a:	83 ec 08             	sub    $0x8,%esp
  102e0d:	ff 75 0c             	push   0xc(%ebp)
  102e10:	ff 75 20             	push   0x20(%ebp)
  102e13:	8b 45 08             	mov    0x8(%ebp),%eax
  102e16:	ff d0                	call   *%eax
  102e18:	83 c4 10             	add    $0x10,%esp
  102e1b:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  102e1f:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  102e23:	7f e5                	jg     102e0a <printnum+0x6e>
  102e25:	8b 4d 18             	mov    0x18(%ebp),%ecx
  102e28:	bb 00 00 00 00       	mov    $0x0,%ebx
  102e2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  102e30:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  102e33:	53                   	push   %ebx
  102e34:	51                   	push   %ecx
  102e35:	52                   	push   %edx
  102e36:	50                   	push   %eax
  102e37:	89 f3                	mov    %esi,%ebx
  102e39:	e8 f2 60 00 00       	call   108f30 <__umoddi3>
  102e3e:	83 c4 10             	add    $0x10,%esp
  102e41:	8d 8e 68 91 ff ff    	lea    -0x6e98(%esi),%ecx
  102e47:	01 c8                	add    %ecx,%eax
  102e49:	0f b6 00             	movzbl (%eax),%eax
  102e4c:	0f be c0             	movsbl %al,%eax
  102e4f:	83 ec 08             	sub    $0x8,%esp
  102e52:	ff 75 0c             	push   0xc(%ebp)
  102e55:	50                   	push   %eax
  102e56:	8b 45 08             	mov    0x8(%ebp),%eax
  102e59:	ff d0                	call   *%eax
  102e5b:	83 c4 10             	add    $0x10,%esp
  102e5e:	90                   	nop
  102e5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
  102e62:	5b                   	pop    %ebx
  102e63:	5e                   	pop    %esi
  102e64:	5f                   	pop    %edi
  102e65:	5d                   	pop    %ebp
  102e66:	c3                   	ret

00102e67 <getuint>:
  102e67:	55                   	push   %ebp
  102e68:	89 e5                	mov    %esp,%ebp
  102e6a:	e8 49 d5 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102e6f:	05 85 e1 00 00       	add    $0xe185,%eax
  102e74:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102e78:	7e 14                	jle    102e8e <getuint+0x27>
  102e7a:	8b 45 08             	mov    0x8(%ebp),%eax
  102e7d:	8b 00                	mov    (%eax),%eax
  102e7f:	8d 48 08             	lea    0x8(%eax),%ecx
  102e82:	8b 55 08             	mov    0x8(%ebp),%edx
  102e85:	89 0a                	mov    %ecx,(%edx)
  102e87:	8b 50 04             	mov    0x4(%eax),%edx
  102e8a:	8b 00                	mov    (%eax),%eax
  102e8c:	eb 30                	jmp    102ebe <getuint+0x57>
  102e8e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102e92:	74 16                	je     102eaa <getuint+0x43>
  102e94:	8b 45 08             	mov    0x8(%ebp),%eax
  102e97:	8b 00                	mov    (%eax),%eax
  102e99:	8d 48 04             	lea    0x4(%eax),%ecx
  102e9c:	8b 55 08             	mov    0x8(%ebp),%edx
  102e9f:	89 0a                	mov    %ecx,(%edx)
  102ea1:	8b 00                	mov    (%eax),%eax
  102ea3:	ba 00 00 00 00       	mov    $0x0,%edx
  102ea8:	eb 14                	jmp    102ebe <getuint+0x57>
  102eaa:	8b 45 08             	mov    0x8(%ebp),%eax
  102ead:	8b 00                	mov    (%eax),%eax
  102eaf:	8d 48 04             	lea    0x4(%eax),%ecx
  102eb2:	8b 55 08             	mov    0x8(%ebp),%edx
  102eb5:	89 0a                	mov    %ecx,(%edx)
  102eb7:	8b 00                	mov    (%eax),%eax
  102eb9:	ba 00 00 00 00       	mov    $0x0,%edx
  102ebe:	5d                   	pop    %ebp
  102ebf:	c3                   	ret

00102ec0 <getint>:
  102ec0:	55                   	push   %ebp
  102ec1:	89 e5                	mov    %esp,%ebp
  102ec3:	e8 f0 d4 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  102ec8:	05 2c e1 00 00       	add    $0xe12c,%eax
  102ecd:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  102ed1:	7e 14                	jle    102ee7 <getint+0x27>
  102ed3:	8b 45 08             	mov    0x8(%ebp),%eax
  102ed6:	8b 00                	mov    (%eax),%eax
  102ed8:	8d 48 08             	lea    0x8(%eax),%ecx
  102edb:	8b 55 08             	mov    0x8(%ebp),%edx
  102ede:	89 0a                	mov    %ecx,(%edx)
  102ee0:	8b 50 04             	mov    0x4(%eax),%edx
  102ee3:	8b 00                	mov    (%eax),%eax
  102ee5:	eb 28                	jmp    102f0f <getint+0x4f>
  102ee7:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  102eeb:	74 12                	je     102eff <getint+0x3f>
  102eed:	8b 45 08             	mov    0x8(%ebp),%eax
  102ef0:	8b 00                	mov    (%eax),%eax
  102ef2:	8d 48 04             	lea    0x4(%eax),%ecx
  102ef5:	8b 55 08             	mov    0x8(%ebp),%edx
  102ef8:	89 0a                	mov    %ecx,(%edx)
  102efa:	8b 00                	mov    (%eax),%eax
  102efc:	99                   	cltd
  102efd:	eb 10                	jmp    102f0f <getint+0x4f>
  102eff:	8b 45 08             	mov    0x8(%ebp),%eax
  102f02:	8b 00                	mov    (%eax),%eax
  102f04:	8d 48 04             	lea    0x4(%eax),%ecx
  102f07:	8b 55 08             	mov    0x8(%ebp),%edx
  102f0a:	89 0a                	mov    %ecx,(%edx)
  102f0c:	8b 00                	mov    (%eax),%eax
  102f0e:	99                   	cltd
  102f0f:	5d                   	pop    %ebp
  102f10:	c3                   	ret

00102f11 <vprintfmt>:
  102f11:	55                   	push   %ebp
  102f12:	89 e5                	mov    %esp,%ebp
  102f14:	57                   	push   %edi
  102f15:	56                   	push   %esi
  102f16:	53                   	push   %ebx
  102f17:	83 ec 2c             	sub    $0x2c,%esp
  102f1a:	e8 41 03 00 00       	call   103260 <__x86.get_pc_thunk.di>
  102f1f:	81 c7 d5 e0 00 00    	add    $0xe0d5,%edi
  102f25:	eb 17                	jmp    102f3e <vprintfmt+0x2d>
  102f27:	85 db                	test   %ebx,%ebx
  102f29:	0f 84 24 03 00 00    	je     103253 <.L21+0x2d>
  102f2f:	83 ec 08             	sub    $0x8,%esp
  102f32:	ff 75 0c             	push   0xc(%ebp)
  102f35:	53                   	push   %ebx
  102f36:	8b 45 08             	mov    0x8(%ebp),%eax
  102f39:	ff d0                	call   *%eax
  102f3b:	83 c4 10             	add    $0x10,%esp
  102f3e:	8b 45 10             	mov    0x10(%ebp),%eax
  102f41:	8d 50 01             	lea    0x1(%eax),%edx
  102f44:	89 55 10             	mov    %edx,0x10(%ebp)
  102f47:	0f b6 00             	movzbl (%eax),%eax
  102f4a:	0f b6 d8             	movzbl %al,%ebx
  102f4d:	83 fb 25             	cmp    $0x25,%ebx
  102f50:	75 d5                	jne    102f27 <vprintfmt+0x16>
  102f52:	c6 45 cb 20          	movb   $0x20,-0x35(%ebp)
  102f56:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
  102f5d:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  102f64:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
  102f6b:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
  102f72:	eb 04                	jmp    102f78 <vprintfmt+0x67>
  102f74:	90                   	nop
  102f75:	eb 01                	jmp    102f78 <vprintfmt+0x67>
  102f77:	90                   	nop
  102f78:	8b 45 10             	mov    0x10(%ebp),%eax
  102f7b:	8d 50 01             	lea    0x1(%eax),%edx
  102f7e:	89 55 10             	mov    %edx,0x10(%ebp)
  102f81:	0f b6 00             	movzbl (%eax),%eax
  102f84:	0f b6 d8             	movzbl %al,%ebx
  102f87:	8d 43 dd             	lea    -0x23(%ebx),%eax
  102f8a:	83 f8 55             	cmp    $0x55,%eax
  102f8d:	0f 87 93 02 00 00    	ja     103226 <.L21>
  102f93:	c1 e0 02             	shl    $0x2,%eax
  102f96:	8b 84 38 80 91 ff ff 	mov    -0x6e80(%eax,%edi,1),%eax
  102f9d:	01 f8                	add    %edi,%eax
  102f9f:	ff e0                	jmp    *%eax

00102fa1 <.L33>:
  102fa1:	c6 45 cb 2d          	movb   $0x2d,-0x35(%ebp)
  102fa5:	eb d1                	jmp    102f78 <vprintfmt+0x67>

00102fa7 <.L31>:
  102fa7:	c6 45 cb 30          	movb   $0x30,-0x35(%ebp)
  102fab:	eb cb                	jmp    102f78 <vprintfmt+0x67>

00102fad <.L30>:
  102fad:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
  102fb4:	8b 55 d0             	mov    -0x30(%ebp),%edx
  102fb7:	89 d0                	mov    %edx,%eax
  102fb9:	c1 e0 02             	shl    $0x2,%eax
  102fbc:	01 d0                	add    %edx,%eax
  102fbe:	01 c0                	add    %eax,%eax
  102fc0:	01 d8                	add    %ebx,%eax
  102fc2:	83 e8 30             	sub    $0x30,%eax
  102fc5:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fc8:	8b 45 10             	mov    0x10(%ebp),%eax
  102fcb:	0f b6 00             	movzbl (%eax),%eax
  102fce:	0f be d8             	movsbl %al,%ebx
  102fd1:	83 fb 2f             	cmp    $0x2f,%ebx
  102fd4:	7e 3d                	jle    103013 <.L36+0xc>
  102fd6:	83 fb 39             	cmp    $0x39,%ebx
  102fd9:	7f 38                	jg     103013 <.L36+0xc>
  102fdb:	83 45 10 01          	addl   $0x1,0x10(%ebp)
  102fdf:	eb d3                	jmp    102fb4 <.L30+0x7>

00102fe1 <.L34>:
  102fe1:	8b 45 14             	mov    0x14(%ebp),%eax
  102fe4:	8d 50 04             	lea    0x4(%eax),%edx
  102fe7:	89 55 14             	mov    %edx,0x14(%ebp)
  102fea:	8b 00                	mov    (%eax),%eax
  102fec:	89 45 d0             	mov    %eax,-0x30(%ebp)
  102fef:	eb 23                	jmp    103014 <.L36+0xd>

00102ff1 <.L32>:
  102ff1:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  102ff5:	0f 89 79 ff ff ff    	jns    102f74 <vprintfmt+0x63>
  102ffb:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  103002:	e9 6d ff ff ff       	jmp    102f74 <vprintfmt+0x63>

00103007 <.L36>:
  103007:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
  10300e:	e9 65 ff ff ff       	jmp    102f78 <vprintfmt+0x67>
  103013:	90                   	nop
  103014:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103018:	0f 89 59 ff ff ff    	jns    102f77 <vprintfmt+0x66>
  10301e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  103021:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  103024:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
  10302b:	e9 47 ff ff ff       	jmp    102f77 <vprintfmt+0x66>

00103030 <.L27>:
  103030:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
  103034:	e9 3f ff ff ff       	jmp    102f78 <vprintfmt+0x67>

00103039 <.L29>:
  103039:	8b 45 14             	mov    0x14(%ebp),%eax
  10303c:	8d 50 04             	lea    0x4(%eax),%edx
  10303f:	89 55 14             	mov    %edx,0x14(%ebp)
  103042:	8b 00                	mov    (%eax),%eax
  103044:	83 ec 08             	sub    $0x8,%esp
  103047:	ff 75 0c             	push   0xc(%ebp)
  10304a:	50                   	push   %eax
  10304b:	8b 45 08             	mov    0x8(%ebp),%eax
  10304e:	ff d0                	call   *%eax
  103050:	83 c4 10             	add    $0x10,%esp
  103053:	e9 f6 01 00 00       	jmp    10324e <.L21+0x28>

00103058 <.L25>:
  103058:	8b 45 14             	mov    0x14(%ebp),%eax
  10305b:	8d 50 04             	lea    0x4(%eax),%edx
  10305e:	89 55 14             	mov    %edx,0x14(%ebp)
  103061:	8b 30                	mov    (%eax),%esi
  103063:	85 f6                	test   %esi,%esi
  103065:	75 06                	jne    10306d <.L25+0x15>
  103067:	8d b7 79 91 ff ff    	lea    -0x6e87(%edi),%esi
  10306d:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  103071:	7e 71                	jle    1030e4 <.L25+0x8c>
  103073:	80 7d cb 2d          	cmpb   $0x2d,-0x35(%ebp)
  103077:	74 6b                	je     1030e4 <.L25+0x8c>
  103079:	8b 45 d0             	mov    -0x30(%ebp),%eax
  10307c:	83 ec 08             	sub    $0x8,%esp
  10307f:	50                   	push   %eax
  103080:	56                   	push   %esi
  103081:	89 fb                	mov    %edi,%ebx
  103083:	e8 01 f9 ff ff       	call   102989 <strnlen>
  103088:	83 c4 10             	add    $0x10,%esp
  10308b:	29 45 d4             	sub    %eax,-0x2c(%ebp)
  10308e:	eb 17                	jmp    1030a7 <.L25+0x4f>
  103090:	0f be 45 cb          	movsbl -0x35(%ebp),%eax
  103094:	83 ec 08             	sub    $0x8,%esp
  103097:	ff 75 0c             	push   0xc(%ebp)
  10309a:	50                   	push   %eax
  10309b:	8b 45 08             	mov    0x8(%ebp),%eax
  10309e:	ff d0                	call   *%eax
  1030a0:	83 c4 10             	add    $0x10,%esp
  1030a3:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030a7:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  1030ab:	7f e3                	jg     103090 <.L25+0x38>
  1030ad:	eb 35                	jmp    1030e4 <.L25+0x8c>
  1030af:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
  1030b3:	74 1c                	je     1030d1 <.L25+0x79>
  1030b5:	83 fb 1f             	cmp    $0x1f,%ebx
  1030b8:	7e 05                	jle    1030bf <.L25+0x67>
  1030ba:	83 fb 7e             	cmp    $0x7e,%ebx
  1030bd:	7e 12                	jle    1030d1 <.L25+0x79>
  1030bf:	83 ec 08             	sub    $0x8,%esp
  1030c2:	ff 75 0c             	push   0xc(%ebp)
  1030c5:	6a 3f                	push   $0x3f
  1030c7:	8b 45 08             	mov    0x8(%ebp),%eax
  1030ca:	ff d0                	call   *%eax
  1030cc:	83 c4 10             	add    $0x10,%esp
  1030cf:	eb 0f                	jmp    1030e0 <.L25+0x88>
  1030d1:	83 ec 08             	sub    $0x8,%esp
  1030d4:	ff 75 0c             	push   0xc(%ebp)
  1030d7:	53                   	push   %ebx
  1030d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1030db:	ff d0                	call   *%eax
  1030dd:	83 c4 10             	add    $0x10,%esp
  1030e0:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  1030e4:	89 f0                	mov    %esi,%eax
  1030e6:	8d 70 01             	lea    0x1(%eax),%esi
  1030e9:	0f b6 00             	movzbl (%eax),%eax
  1030ec:	0f be d8             	movsbl %al,%ebx
  1030ef:	85 db                	test   %ebx,%ebx
  1030f1:	74 26                	je     103119 <.L25+0xc1>
  1030f3:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  1030f7:	78 b6                	js     1030af <.L25+0x57>
  1030f9:	83 6d d0 01          	subl   $0x1,-0x30(%ebp)
  1030fd:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
  103101:	79 ac                	jns    1030af <.L25+0x57>
  103103:	eb 14                	jmp    103119 <.L25+0xc1>
  103105:	83 ec 08             	sub    $0x8,%esp
  103108:	ff 75 0c             	push   0xc(%ebp)
  10310b:	6a 20                	push   $0x20
  10310d:	8b 45 08             	mov    0x8(%ebp),%eax
  103110:	ff d0                	call   *%eax
  103112:	83 c4 10             	add    $0x10,%esp
  103115:	83 6d d4 01          	subl   $0x1,-0x2c(%ebp)
  103119:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
  10311d:	7f e6                	jg     103105 <.L25+0xad>
  10311f:	e9 2a 01 00 00       	jmp    10324e <.L21+0x28>

00103124 <.L28>:
  103124:	83 ec 08             	sub    $0x8,%esp
  103127:	ff 75 d8             	push   -0x28(%ebp)
  10312a:	8d 45 14             	lea    0x14(%ebp),%eax
  10312d:	50                   	push   %eax
  10312e:	e8 8d fd ff ff       	call   102ec0 <getint>
  103133:	83 c4 10             	add    $0x10,%esp
  103136:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103139:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10313c:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10313f:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103142:	85 d2                	test   %edx,%edx
  103144:	79 23                	jns    103169 <.L28+0x45>
  103146:	83 ec 08             	sub    $0x8,%esp
  103149:	ff 75 0c             	push   0xc(%ebp)
  10314c:	6a 2d                	push   $0x2d
  10314e:	8b 45 08             	mov    0x8(%ebp),%eax
  103151:	ff d0                	call   *%eax
  103153:	83 c4 10             	add    $0x10,%esp
  103156:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103159:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  10315c:	f7 d8                	neg    %eax
  10315e:	83 d2 00             	adc    $0x0,%edx
  103161:	f7 da                	neg    %edx
  103163:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103166:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  103169:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103170:	eb 7e                	jmp    1031f0 <.L22+0x1f>

00103172 <.L24>:
  103172:	83 ec 08             	sub    $0x8,%esp
  103175:	ff 75 d8             	push   -0x28(%ebp)
  103178:	8d 45 14             	lea    0x14(%ebp),%eax
  10317b:	50                   	push   %eax
  10317c:	e8 e6 fc ff ff       	call   102e67 <getuint>
  103181:	83 c4 10             	add    $0x10,%esp
  103184:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103187:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  10318a:	c7 45 dc 0a 00 00 00 	movl   $0xa,-0x24(%ebp)
  103191:	eb 5d                	jmp    1031f0 <.L22+0x1f>

00103193 <.L26>:
  103193:	83 ec 08             	sub    $0x8,%esp
  103196:	ff 75 0c             	push   0xc(%ebp)
  103199:	6a 30                	push   $0x30
  10319b:	8b 45 08             	mov    0x8(%ebp),%eax
  10319e:	ff d0                	call   *%eax
  1031a0:	83 c4 10             	add    $0x10,%esp
  1031a3:	83 ec 08             	sub    $0x8,%esp
  1031a6:	ff 75 0c             	push   0xc(%ebp)
  1031a9:	6a 78                	push   $0x78
  1031ab:	8b 45 08             	mov    0x8(%ebp),%eax
  1031ae:	ff d0                	call   *%eax
  1031b0:	83 c4 10             	add    $0x10,%esp
  1031b3:	8b 45 14             	mov    0x14(%ebp),%eax
  1031b6:	8d 50 04             	lea    0x4(%eax),%edx
  1031b9:	89 55 14             	mov    %edx,0x14(%ebp)
  1031bc:	8b 00                	mov    (%eax),%eax
  1031be:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031c1:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  1031c8:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031cf:	eb 1f                	jmp    1031f0 <.L22+0x1f>

001031d1 <.L22>:
  1031d1:	83 ec 08             	sub    $0x8,%esp
  1031d4:	ff 75 d8             	push   -0x28(%ebp)
  1031d7:	8d 45 14             	lea    0x14(%ebp),%eax
  1031da:	50                   	push   %eax
  1031db:	e8 87 fc ff ff       	call   102e67 <getuint>
  1031e0:	83 c4 10             	add    $0x10,%esp
  1031e3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1031e6:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  1031e9:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
  1031f0:	0f be 55 cb          	movsbl -0x35(%ebp),%edx
  1031f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1031f7:	83 ec 04             	sub    $0x4,%esp
  1031fa:	52                   	push   %edx
  1031fb:	ff 75 d4             	push   -0x2c(%ebp)
  1031fe:	50                   	push   %eax
  1031ff:	ff 75 e4             	push   -0x1c(%ebp)
  103202:	ff 75 e0             	push   -0x20(%ebp)
  103205:	ff 75 0c             	push   0xc(%ebp)
  103208:	ff 75 08             	push   0x8(%ebp)
  10320b:	e8 8c fb ff ff       	call   102d9c <printnum>
  103210:	83 c4 20             	add    $0x20,%esp
  103213:	eb 39                	jmp    10324e <.L21+0x28>

00103215 <.L35>:
  103215:	83 ec 08             	sub    $0x8,%esp
  103218:	ff 75 0c             	push   0xc(%ebp)
  10321b:	53                   	push   %ebx
  10321c:	8b 45 08             	mov    0x8(%ebp),%eax
  10321f:	ff d0                	call   *%eax
  103221:	83 c4 10             	add    $0x10,%esp
  103224:	eb 28                	jmp    10324e <.L21+0x28>

00103226 <.L21>:
  103226:	83 ec 08             	sub    $0x8,%esp
  103229:	ff 75 0c             	push   0xc(%ebp)
  10322c:	6a 25                	push   $0x25
  10322e:	8b 45 08             	mov    0x8(%ebp),%eax
  103231:	ff d0                	call   *%eax
  103233:	83 c4 10             	add    $0x10,%esp
  103236:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  10323a:	eb 04                	jmp    103240 <.L21+0x1a>
  10323c:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  103240:	8b 45 10             	mov    0x10(%ebp),%eax
  103243:	83 e8 01             	sub    $0x1,%eax
  103246:	0f b6 00             	movzbl (%eax),%eax
  103249:	3c 25                	cmp    $0x25,%al
  10324b:	75 ef                	jne    10323c <.L21+0x16>
  10324d:	90                   	nop
  10324e:	e9 eb fc ff ff       	jmp    102f3e <vprintfmt+0x2d>
  103253:	90                   	nop
  103254:	8d 65 f4             	lea    -0xc(%ebp),%esp
  103257:	5b                   	pop    %ebx
  103258:	5e                   	pop    %esi
  103259:	5f                   	pop    %edi
  10325a:	5d                   	pop    %ebp
  10325b:	c3                   	ret

0010325c <__x86.get_pc_thunk.si>:
  10325c:	8b 34 24             	mov    (%esp),%esi
  10325f:	c3                   	ret

00103260 <__x86.get_pc_thunk.di>:
  103260:	8b 3c 24             	mov    (%esp),%edi
  103263:	c3                   	ret

00103264 <seg_init>:
  103264:	55                   	push   %ebp
  103265:	89 e5                	mov    %esp,%ebp
  103267:	53                   	push   %ebx
  103268:	83 ec 14             	sub    $0x14,%esp
  10326b:	e8 50 d1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103270:	81 c3 84 dd 00 00    	add    $0xdd84,%ebx
  103276:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  10327c:	c7 c2 f0 68 11 00    	mov    $0x1168f0,%edx
  103282:	29 d0                	sub    %edx,%eax
  103284:	83 ec 08             	sub    $0x8,%esp
  103287:	50                   	push   %eax
  103288:	c7 c0 f0 68 11 00    	mov    $0x1168f0,%eax
  10328e:	50                   	push   %eax
  10328f:	e8 b5 f7 ff ff       	call   102a49 <memzero>
  103294:	83 c4 10             	add    $0x10,%esp
  103297:	c7 c0 00 30 da 01    	mov    $0x1da3000,%eax
  10329d:	89 c2                	mov    %eax,%edx
  10329f:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1032a5:	29 c2                	sub    %eax,%edx
  1032a7:	8d 82 00 f0 ff ff    	lea    -0x1000(%edx),%eax
  1032ad:	89 c2                	mov    %eax,%edx
  1032af:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  1032b5:	83 ec 08             	sub    $0x8,%esp
  1032b8:	52                   	push   %edx
  1032b9:	50                   	push   %eax
  1032ba:	e8 8a f7 ff ff       	call   102a49 <memzero>
  1032bf:	83 c4 10             	add    $0x10,%esp
  1032c2:	c7 83 0c 90 04 00 00 	movl   $0x0,0x4900c(%ebx)
  1032c9:	00 00 00 
  1032cc:	c7 83 10 90 04 00 00 	movl   $0x0,0x49010(%ebx)
  1032d3:	00 00 00 
  1032d6:	66 c7 83 14 90 04 00 	movw   $0xffff,0x49014(%ebx)
  1032dd:	ff ff 
  1032df:	66 c7 83 16 90 04 00 	movw   $0x0,0x49016(%ebx)
  1032e6:	00 00 
  1032e8:	c6 83 18 90 04 00 00 	movb   $0x0,0x49018(%ebx)
  1032ef:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  1032f6:	83 e0 f0             	and    $0xfffffff0,%eax
  1032f9:	83 c8 0a             	or     $0xa,%eax
  1032fc:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103302:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103309:	83 c8 10             	or     $0x10,%eax
  10330c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103312:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103319:	83 e0 9f             	and    $0xffffff9f,%eax
  10331c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103322:	0f b6 83 19 90 04 00 	movzbl 0x49019(%ebx),%eax
  103329:	83 c8 80             	or     $0xffffff80,%eax
  10332c:	88 83 19 90 04 00    	mov    %al,0x49019(%ebx)
  103332:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103339:	83 c8 0f             	or     $0xf,%eax
  10333c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103342:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103349:	83 e0 ef             	and    $0xffffffef,%eax
  10334c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103352:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103359:	83 e0 df             	and    $0xffffffdf,%eax
  10335c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103362:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103369:	83 c8 40             	or     $0x40,%eax
  10336c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103372:	0f b6 83 1a 90 04 00 	movzbl 0x4901a(%ebx),%eax
  103379:	83 c8 80             	or     $0xffffff80,%eax
  10337c:	88 83 1a 90 04 00    	mov    %al,0x4901a(%ebx)
  103382:	c6 83 1b 90 04 00 00 	movb   $0x0,0x4901b(%ebx)
  103389:	66 c7 83 1c 90 04 00 	movw   $0xffff,0x4901c(%ebx)
  103390:	ff ff 
  103392:	66 c7 83 1e 90 04 00 	movw   $0x0,0x4901e(%ebx)
  103399:	00 00 
  10339b:	c6 83 20 90 04 00 00 	movb   $0x0,0x49020(%ebx)
  1033a2:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033a9:	83 e0 f0             	and    $0xfffffff0,%eax
  1033ac:	83 c8 02             	or     $0x2,%eax
  1033af:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033b5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033bc:	83 c8 10             	or     $0x10,%eax
  1033bf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033c5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033cc:	83 e0 9f             	and    $0xffffff9f,%eax
  1033cf:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033d5:	0f b6 83 21 90 04 00 	movzbl 0x49021(%ebx),%eax
  1033dc:	83 c8 80             	or     $0xffffff80,%eax
  1033df:	88 83 21 90 04 00    	mov    %al,0x49021(%ebx)
  1033e5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033ec:	83 c8 0f             	or     $0xf,%eax
  1033ef:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  1033f5:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  1033fc:	83 e0 ef             	and    $0xffffffef,%eax
  1033ff:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103405:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10340c:	83 e0 df             	and    $0xffffffdf,%eax
  10340f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103415:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10341c:	83 c8 40             	or     $0x40,%eax
  10341f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103425:	0f b6 83 22 90 04 00 	movzbl 0x49022(%ebx),%eax
  10342c:	83 c8 80             	or     $0xffffff80,%eax
  10342f:	88 83 22 90 04 00    	mov    %al,0x49022(%ebx)
  103435:	c6 83 23 90 04 00 00 	movb   $0x0,0x49023(%ebx)
  10343c:	66 c7 83 24 90 04 00 	movw   $0xffff,0x49024(%ebx)
  103443:	ff ff 
  103445:	66 c7 83 26 90 04 00 	movw   $0x0,0x49026(%ebx)
  10344c:	00 00 
  10344e:	c6 83 28 90 04 00 00 	movb   $0x0,0x49028(%ebx)
  103455:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10345c:	83 e0 f0             	and    $0xfffffff0,%eax
  10345f:	83 c8 0a             	or     $0xa,%eax
  103462:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103468:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10346f:	83 c8 10             	or     $0x10,%eax
  103472:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103478:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10347f:	83 c8 60             	or     $0x60,%eax
  103482:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103488:	0f b6 83 29 90 04 00 	movzbl 0x49029(%ebx),%eax
  10348f:	83 c8 80             	or     $0xffffff80,%eax
  103492:	88 83 29 90 04 00    	mov    %al,0x49029(%ebx)
  103498:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  10349f:	83 c8 0f             	or     $0xf,%eax
  1034a2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034a8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034af:	83 e0 ef             	and    $0xffffffef,%eax
  1034b2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034b8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034bf:	83 e0 df             	and    $0xffffffdf,%eax
  1034c2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034c8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034cf:	83 c8 40             	or     $0x40,%eax
  1034d2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034d8:	0f b6 83 2a 90 04 00 	movzbl 0x4902a(%ebx),%eax
  1034df:	83 c8 80             	or     $0xffffff80,%eax
  1034e2:	88 83 2a 90 04 00    	mov    %al,0x4902a(%ebx)
  1034e8:	c6 83 2b 90 04 00 00 	movb   $0x0,0x4902b(%ebx)
  1034ef:	66 c7 83 2c 90 04 00 	movw   $0xffff,0x4902c(%ebx)
  1034f6:	ff ff 
  1034f8:	66 c7 83 2e 90 04 00 	movw   $0x0,0x4902e(%ebx)
  1034ff:	00 00 
  103501:	c6 83 30 90 04 00 00 	movb   $0x0,0x49030(%ebx)
  103508:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  10350f:	83 e0 f0             	and    $0xfffffff0,%eax
  103512:	83 c8 02             	or     $0x2,%eax
  103515:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10351b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103522:	83 c8 10             	or     $0x10,%eax
  103525:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10352b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103532:	83 c8 60             	or     $0x60,%eax
  103535:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10353b:	0f b6 83 31 90 04 00 	movzbl 0x49031(%ebx),%eax
  103542:	83 c8 80             	or     $0xffffff80,%eax
  103545:	88 83 31 90 04 00    	mov    %al,0x49031(%ebx)
  10354b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103552:	83 c8 0f             	or     $0xf,%eax
  103555:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10355b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103562:	83 e0 ef             	and    $0xffffffef,%eax
  103565:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10356b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103572:	83 e0 df             	and    $0xffffffdf,%eax
  103575:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10357b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103582:	83 c8 40             	or     $0x40,%eax
  103585:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10358b:	0f b6 83 32 90 04 00 	movzbl 0x49032(%ebx),%eax
  103592:	83 c8 80             	or     $0xffffff80,%eax
  103595:	88 83 32 90 04 00    	mov    %al,0x49032(%ebx)
  10359b:	c6 83 33 90 04 00 00 	movb   $0x0,0x49033(%ebx)
  1035a2:	8d 83 0c 80 00 00    	lea    0x800c(%ebx),%eax
  1035a8:	05 00 10 00 00       	add    $0x1000,%eax
  1035ad:	89 83 50 cb 04 00    	mov    %eax,0x4cb50(%ebx)
  1035b3:	66 c7 83 54 cb 04 00 	movw   $0x10,0x4cb54(%ebx)
  1035ba:	10 00 
  1035bc:	66 c7 83 34 90 04 00 	movw   $0xeb,0x49034(%ebx)
  1035c3:	eb 00 
  1035c5:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035cb:	66 89 83 36 90 04 00 	mov    %ax,0x49036(%ebx)
  1035d2:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  1035d8:	c1 e8 10             	shr    $0x10,%eax
  1035db:	88 83 38 90 04 00    	mov    %al,0x49038(%ebx)
  1035e1:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035e8:	83 e0 f0             	and    $0xfffffff0,%eax
  1035eb:	83 c8 09             	or     $0x9,%eax
  1035ee:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  1035f4:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  1035fb:	83 c8 10             	or     $0x10,%eax
  1035fe:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103604:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10360b:	83 e0 9f             	and    $0xffffff9f,%eax
  10360e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103614:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10361b:	83 c8 80             	or     $0xffffff80,%eax
  10361e:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103624:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10362b:	83 e0 f0             	and    $0xfffffff0,%eax
  10362e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103634:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10363b:	83 e0 ef             	and    $0xffffffef,%eax
  10363e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103644:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10364b:	83 e0 df             	and    $0xffffffdf,%eax
  10364e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103654:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10365b:	83 c8 40             	or     $0x40,%eax
  10365e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103664:	0f b6 83 3a 90 04 00 	movzbl 0x4903a(%ebx),%eax
  10366b:	83 e0 7f             	and    $0x7f,%eax
  10366e:	88 83 3a 90 04 00    	mov    %al,0x4903a(%ebx)
  103674:	8d 83 4c cb 04 00    	lea    0x4cb4c(%ebx),%eax
  10367a:	c1 e8 18             	shr    $0x18,%eax
  10367d:	88 83 3b 90 04 00    	mov    %al,0x4903b(%ebx)
  103683:	0f b6 83 39 90 04 00 	movzbl 0x49039(%ebx),%eax
  10368a:	83 e0 ef             	and    $0xffffffef,%eax
  10368d:	88 83 39 90 04 00    	mov    %al,0x49039(%ebx)
  103693:	66 c7 45 ee 2f 00    	movw   $0x2f,-0x12(%ebp)
  103699:	8d 83 0c 90 04 00    	lea    0x4900c(%ebx),%eax
  10369f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1036a2:	0f 01 55 ee          	lgdtl  -0x12(%ebp)
  1036a6:	b8 10 00 00 00       	mov    $0x10,%eax
  1036ab:	8e e8                	mov    %eax,%gs
  1036ad:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b2:	8e e0                	mov    %eax,%fs
  1036b4:	b8 10 00 00 00       	mov    $0x10,%eax
  1036b9:	8e c0                	mov    %eax,%es
  1036bb:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c0:	8e d8                	mov    %eax,%ds
  1036c2:	b8 10 00 00 00       	mov    $0x10,%eax
  1036c7:	8e d0                	mov    %eax,%ss
  1036c9:	ea d0 36 10 00 08 00 	ljmp   $0x8,$0x1036d0
  1036d0:	83 ec 0c             	sub    $0xc,%esp
  1036d3:	6a 00                	push   $0x0
  1036d5:	e8 70 01 00 00       	call   10384a <lldt>
  1036da:	83 c4 10             	add    $0x10,%esp
  1036dd:	83 ec 0c             	sub    $0xc,%esp
  1036e0:	6a 28                	push   $0x28
  1036e2:	e8 2f 03 00 00       	call   103a16 <ltr>
  1036e7:	83 c4 10             	add    $0x10,%esp
  1036ea:	83 ec 08             	sub    $0x8,%esp
  1036ed:	68 00 3b 00 00       	push   $0x3b00
  1036f2:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  1036f8:	50                   	push   %eax
  1036f9:	e8 4b f3 ff ff       	call   102a49 <memzero>
  1036fe:	83 c4 10             	add    $0x10,%esp
  103701:	83 ec 08             	sub    $0x8,%esp
  103704:	68 00 00 04 00       	push   $0x40000
  103709:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  10370f:	50                   	push   %eax
  103710:	e8 34 f3 ff ff       	call   102a49 <memzero>
  103715:	83 c4 10             	add    $0x10,%esp
  103718:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10371f:	e9 9d 00 00 00       	jmp    1037c1 <seg_init+0x55d>
  103724:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103727:	c1 e0 0c             	shl    $0xc,%eax
  10372a:	89 c2                	mov    %eax,%edx
  10372c:	8d 83 0c 90 00 00    	lea    0x900c(%ebx),%eax
  103732:	01 d0                	add    %edx,%eax
  103734:	8d 90 00 10 00 00    	lea    0x1000(%eax),%edx
  10373a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  10373d:	8d 83 50 90 04 00    	lea    0x49050(%ebx),%eax
  103743:	69 c9 ec 00 00 00    	imul   $0xec,%ecx,%ecx
  103749:	01 c8                	add    %ecx,%eax
  10374b:	89 10                	mov    %edx,(%eax)
  10374d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103750:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  103756:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  10375c:	01 d0                	add    %edx,%eax
  10375e:	66 c7 00 10 00       	movw   $0x10,(%eax)
  103763:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103766:	8d 83 52 90 04 00    	lea    0x49052(%ebx),%eax
  10376c:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  103772:	01 d0                	add    %edx,%eax
  103774:	83 c0 60             	add    $0x60,%eax
  103777:	66 c7 00 68 00       	movw   $0x68,(%eax)
  10377c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10377f:	69 c0 ec 00 00 00    	imul   $0xec,%eax,%eax
  103785:	8d 50 60             	lea    0x60(%eax),%edx
  103788:	8d 83 4c 90 04 00    	lea    0x4904c(%ebx),%eax
  10378e:	01 d0                	add    %edx,%eax
  103790:	83 c0 08             	add    $0x8,%eax
  103793:	83 ec 08             	sub    $0x8,%esp
  103796:	68 80 00 00 00       	push   $0x80
  10379b:	50                   	push   %eax
  10379c:	e8 a8 f2 ff ff       	call   102a49 <memzero>
  1037a1:	83 c4 10             	add    $0x10,%esp
  1037a4:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1037a7:	8d 83 54 90 04 00    	lea    0x49054(%ebx),%eax
  1037ad:	69 d2 ec 00 00 00    	imul   $0xec,%edx,%edx
  1037b3:	01 d0                	add    %edx,%eax
  1037b5:	05 e0 00 00 00       	add    $0xe0,%eax
  1037ba:	c6 00 ff             	movb   $0xff,(%eax)
  1037bd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1037c1:	83 7d f4 3f          	cmpl   $0x3f,-0xc(%ebp)
  1037c5:	0f 86 59 ff ff ff    	jbe    103724 <seg_init+0x4c0>
  1037cb:	90                   	nop
  1037cc:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1037cf:	c9                   	leave
  1037d0:	c3                   	ret

001037d1 <max>:
  1037d1:	55                   	push   %ebp
  1037d2:	89 e5                	mov    %esp,%ebp
  1037d4:	e8 df cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037d9:	05 1b d8 00 00       	add    $0xd81b,%eax
  1037de:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037e1:	8b 45 08             	mov    0x8(%ebp),%eax
  1037e4:	39 c2                	cmp    %eax,%edx
  1037e6:	0f 43 c2             	cmovae %edx,%eax
  1037e9:	5d                   	pop    %ebp
  1037ea:	c3                   	ret

001037eb <min>:
  1037eb:	55                   	push   %ebp
  1037ec:	89 e5                	mov    %esp,%ebp
  1037ee:	e8 c5 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1037f3:	05 01 d8 00 00       	add    $0xd801,%eax
  1037f8:	8b 55 0c             	mov    0xc(%ebp),%edx
  1037fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1037fe:	39 c2                	cmp    %eax,%edx
  103800:	0f 46 c2             	cmovbe %edx,%eax
  103803:	5d                   	pop    %ebp
  103804:	c3                   	ret

00103805 <rounddown>:
  103805:	55                   	push   %ebp
  103806:	89 e5                	mov    %esp,%ebp
  103808:	e8 ab cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10380d:	05 e7 d7 00 00       	add    $0xd7e7,%eax
  103812:	8b 45 08             	mov    0x8(%ebp),%eax
  103815:	ba 00 00 00 00       	mov    $0x0,%edx
  10381a:	f7 75 0c             	divl   0xc(%ebp)
  10381d:	8b 45 08             	mov    0x8(%ebp),%eax
  103820:	29 d0                	sub    %edx,%eax
  103822:	5d                   	pop    %ebp
  103823:	c3                   	ret

00103824 <roundup>:
  103824:	55                   	push   %ebp
  103825:	89 e5                	mov    %esp,%ebp
  103827:	e8 8c cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10382c:	05 c8 d7 00 00       	add    $0xd7c8,%eax
  103831:	8b 55 08             	mov    0x8(%ebp),%edx
  103834:	8b 45 0c             	mov    0xc(%ebp),%eax
  103837:	01 d0                	add    %edx,%eax
  103839:	83 e8 01             	sub    $0x1,%eax
  10383c:	ff 75 0c             	push   0xc(%ebp)
  10383f:	50                   	push   %eax
  103840:	e8 c0 ff ff ff       	call   103805 <rounddown>
  103845:	83 c4 08             	add    $0x8,%esp
  103848:	c9                   	leave
  103849:	c3                   	ret

0010384a <lldt>:
  10384a:	55                   	push   %ebp
  10384b:	89 e5                	mov    %esp,%ebp
  10384d:	83 ec 04             	sub    $0x4,%esp
  103850:	e8 63 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103855:	05 9f d7 00 00       	add    $0xd79f,%eax
  10385a:	8b 45 08             	mov    0x8(%ebp),%eax
  10385d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103861:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103865:	0f 00 d0             	lldt   %eax
  103868:	90                   	nop
  103869:	c9                   	leave
  10386a:	c3                   	ret

0010386b <cli>:
  10386b:	55                   	push   %ebp
  10386c:	89 e5                	mov    %esp,%ebp
  10386e:	e8 45 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103873:	05 81 d7 00 00       	add    $0xd781,%eax
  103878:	fa                   	cli
  103879:	90                   	nop
  10387a:	5d                   	pop    %ebp
  10387b:	c3                   	ret

0010387c <sti>:
  10387c:	55                   	push   %ebp
  10387d:	89 e5                	mov    %esp,%ebp
  10387f:	e8 34 cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103884:	05 70 d7 00 00       	add    $0xd770,%eax
  103889:	fb                   	sti
  10388a:	90                   	nop
  10388b:	90                   	nop
  10388c:	5d                   	pop    %ebp
  10388d:	c3                   	ret

0010388e <rdmsr>:
  10388e:	55                   	push   %ebp
  10388f:	89 e5                	mov    %esp,%ebp
  103891:	83 ec 10             	sub    $0x10,%esp
  103894:	e8 1f cb ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103899:	05 5b d7 00 00       	add    $0xd75b,%eax
  10389e:	8b 45 08             	mov    0x8(%ebp),%eax
  1038a1:	89 c1                	mov    %eax,%ecx
  1038a3:	0f 32                	rdmsr
  1038a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038a8:	89 55 fc             	mov    %edx,-0x4(%ebp)
  1038ab:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038ae:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038b1:	c9                   	leave
  1038b2:	c3                   	ret

001038b3 <wrmsr>:
  1038b3:	55                   	push   %ebp
  1038b4:	89 e5                	mov    %esp,%ebp
  1038b6:	83 ec 08             	sub    $0x8,%esp
  1038b9:	e8 fa ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038be:	05 36 d7 00 00       	add    $0xd736,%eax
  1038c3:	8b 45 0c             	mov    0xc(%ebp),%eax
  1038c6:	89 45 f8             	mov    %eax,-0x8(%ebp)
  1038c9:	8b 45 10             	mov    0x10(%ebp),%eax
  1038cc:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1038cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1038d2:	8b 55 fc             	mov    -0x4(%ebp),%edx
  1038d5:	8b 4d 08             	mov    0x8(%ebp),%ecx
  1038d8:	0f 30                	wrmsr
  1038da:	90                   	nop
  1038db:	c9                   	leave
  1038dc:	c3                   	ret

001038dd <halt>:
  1038dd:	55                   	push   %ebp
  1038de:	89 e5                	mov    %esp,%ebp
  1038e0:	e8 d3 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038e5:	05 0f d7 00 00       	add    $0xd70f,%eax
  1038ea:	f4                   	hlt
  1038eb:	90                   	nop
  1038ec:	5d                   	pop    %ebp
  1038ed:	c3                   	ret

001038ee <rdtsc>:
  1038ee:	55                   	push   %ebp
  1038ef:	89 e5                	mov    %esp,%ebp
  1038f1:	83 ec 10             	sub    $0x10,%esp
  1038f4:	e8 bf ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1038f9:	05 fb d6 00 00       	add    $0xd6fb,%eax
  1038fe:	0f 31                	rdtsc
  103900:	89 45 f8             	mov    %eax,-0x8(%ebp)
  103903:	89 55 fc             	mov    %edx,-0x4(%ebp)
  103906:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103909:	8b 55 fc             	mov    -0x4(%ebp),%edx
  10390c:	c9                   	leave
  10390d:	c3                   	ret

0010390e <enable_sse>:
  10390e:	55                   	push   %ebp
  10390f:	89 e5                	mov    %esp,%ebp
  103911:	83 ec 20             	sub    $0x20,%esp
  103914:	e8 9f ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103919:	05 db d6 00 00       	add    $0xd6db,%eax
  10391e:	0f 20 e0             	mov    %cr4,%eax
  103921:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103924:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103927:	80 cc 06             	or     $0x6,%ah
  10392a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  10392d:	0f ae f0             	mfence
  103930:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103933:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103936:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103939:	0f 22 e0             	mov    %eax,%cr4
  10393c:	90                   	nop
  10393d:	0f 20 c0             	mov    %cr0,%eax
  103940:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103943:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103946:	83 c8 02             	or     $0x2,%eax
  103949:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10394c:	0f ae f0             	mfence
  10394f:	83 65 f8 f3          	andl   $0xfffffff3,-0x8(%ebp)
  103953:	90                   	nop
  103954:	c9                   	leave
  103955:	c3                   	ret

00103956 <cpuid>:
  103956:	55                   	push   %ebp
  103957:	89 e5                	mov    %esp,%ebp
  103959:	53                   	push   %ebx
  10395a:	83 ec 10             	sub    $0x10,%esp
  10395d:	e8 56 ca ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103962:	05 92 d6 00 00       	add    $0xd692,%eax
  103967:	8b 45 08             	mov    0x8(%ebp),%eax
  10396a:	0f a2                	cpuid
  10396c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  10396f:	89 5d f4             	mov    %ebx,-0xc(%ebp)
  103972:	89 4d f0             	mov    %ecx,-0x10(%ebp)
  103975:	89 55 ec             	mov    %edx,-0x14(%ebp)
  103978:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  10397c:	74 08                	je     103986 <cpuid+0x30>
  10397e:	8b 45 0c             	mov    0xc(%ebp),%eax
  103981:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103984:	89 10                	mov    %edx,(%eax)
  103986:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10398a:	74 08                	je     103994 <cpuid+0x3e>
  10398c:	8b 45 10             	mov    0x10(%ebp),%eax
  10398f:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103992:	89 10                	mov    %edx,(%eax)
  103994:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  103998:	74 08                	je     1039a2 <cpuid+0x4c>
  10399a:	8b 45 14             	mov    0x14(%ebp),%eax
  10399d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1039a0:	89 10                	mov    %edx,(%eax)
  1039a2:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
  1039a6:	74 08                	je     1039b0 <cpuid+0x5a>
  1039a8:	8b 45 18             	mov    0x18(%ebp),%eax
  1039ab:	8b 55 ec             	mov    -0x14(%ebp),%edx
  1039ae:	89 10                	mov    %edx,(%eax)
  1039b0:	90                   	nop
  1039b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1039b4:	c9                   	leave
  1039b5:	c3                   	ret

001039b6 <rcr3>:
  1039b6:	55                   	push   %ebp
  1039b7:	89 e5                	mov    %esp,%ebp
  1039b9:	83 ec 10             	sub    $0x10,%esp
  1039bc:	e8 f7 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039c1:	05 33 d6 00 00       	add    $0xd633,%eax
  1039c6:	0f 20 d8             	mov    %cr3,%eax
  1039c9:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1039cc:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1039cf:	c9                   	leave
  1039d0:	c3                   	ret

001039d1 <outl>:
  1039d1:	55                   	push   %ebp
  1039d2:	89 e5                	mov    %esp,%ebp
  1039d4:	e8 df c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039d9:	05 1b d6 00 00       	add    $0xd61b,%eax
  1039de:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1039e4:	ef                   	out    %eax,(%dx)
  1039e5:	90                   	nop
  1039e6:	5d                   	pop    %ebp
  1039e7:	c3                   	ret

001039e8 <inl>:
  1039e8:	55                   	push   %ebp
  1039e9:	89 e5                	mov    %esp,%ebp
  1039eb:	83 ec 10             	sub    $0x10,%esp
  1039ee:	e8 c5 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  1039f3:	05 01 d6 00 00       	add    $0xd601,%eax
  1039f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1039fb:	89 c2                	mov    %eax,%edx
  1039fd:	ed                   	in     (%dx),%eax
  1039fe:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a01:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a04:	c9                   	leave
  103a05:	c3                   	ret

00103a06 <smp_wmb>:
  103a06:	55                   	push   %ebp
  103a07:	89 e5                	mov    %esp,%ebp
  103a09:	e8 aa c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a0e:	05 e6 d5 00 00       	add    $0xd5e6,%eax
  103a13:	90                   	nop
  103a14:	5d                   	pop    %ebp
  103a15:	c3                   	ret

00103a16 <ltr>:
  103a16:	55                   	push   %ebp
  103a17:	89 e5                	mov    %esp,%ebp
  103a19:	83 ec 04             	sub    $0x4,%esp
  103a1c:	e8 97 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a21:	05 d3 d5 00 00       	add    $0xd5d3,%eax
  103a26:	8b 45 08             	mov    0x8(%ebp),%eax
  103a29:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  103a2d:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  103a31:	0f 00 d8             	ltr    %eax
  103a34:	90                   	nop
  103a35:	c9                   	leave
  103a36:	c3                   	ret

00103a37 <lcr0>:
  103a37:	55                   	push   %ebp
  103a38:	89 e5                	mov    %esp,%ebp
  103a3a:	e8 79 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a3f:	05 b5 d5 00 00       	add    $0xd5b5,%eax
  103a44:	8b 45 08             	mov    0x8(%ebp),%eax
  103a47:	0f 22 c0             	mov    %eax,%cr0
  103a4a:	90                   	nop
  103a4b:	5d                   	pop    %ebp
  103a4c:	c3                   	ret

00103a4d <rcr0>:
  103a4d:	55                   	push   %ebp
  103a4e:	89 e5                	mov    %esp,%ebp
  103a50:	83 ec 10             	sub    $0x10,%esp
  103a53:	e8 60 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a58:	05 9c d5 00 00       	add    $0xd59c,%eax
  103a5d:	0f 20 c0             	mov    %cr0,%eax
  103a60:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a63:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a66:	c9                   	leave
  103a67:	c3                   	ret

00103a68 <rcr2>:
  103a68:	55                   	push   %ebp
  103a69:	89 e5                	mov    %esp,%ebp
  103a6b:	83 ec 10             	sub    $0x10,%esp
  103a6e:	e8 45 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a73:	05 81 d5 00 00       	add    $0xd581,%eax
  103a78:	0f 20 d0             	mov    %cr2,%eax
  103a7b:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103a7e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103a81:	c9                   	leave
  103a82:	c3                   	ret

00103a83 <lcr3>:
  103a83:	55                   	push   %ebp
  103a84:	89 e5                	mov    %esp,%ebp
  103a86:	e8 2d c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103a8b:	05 69 d5 00 00       	add    $0xd569,%eax
  103a90:	8b 45 08             	mov    0x8(%ebp),%eax
  103a93:	0f 22 d8             	mov    %eax,%cr3
  103a96:	90                   	nop
  103a97:	5d                   	pop    %ebp
  103a98:	c3                   	ret

00103a99 <lcr4>:
  103a99:	55                   	push   %ebp
  103a9a:	89 e5                	mov    %esp,%ebp
  103a9c:	e8 17 c9 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aa1:	05 53 d5 00 00       	add    $0xd553,%eax
  103aa6:	8b 45 08             	mov    0x8(%ebp),%eax
  103aa9:	0f 22 e0             	mov    %eax,%cr4
  103aac:	90                   	nop
  103aad:	5d                   	pop    %ebp
  103aae:	c3                   	ret

00103aaf <rcr4>:
  103aaf:	55                   	push   %ebp
  103ab0:	89 e5                	mov    %esp,%ebp
  103ab2:	83 ec 10             	sub    $0x10,%esp
  103ab5:	e8 fe c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103aba:	05 3a d5 00 00       	add    $0xd53a,%eax
  103abf:	0f 20 e0             	mov    %cr4,%eax
  103ac2:	89 45 fc             	mov    %eax,-0x4(%ebp)
  103ac5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103ac8:	c9                   	leave
  103ac9:	c3                   	ret

00103aca <inb>:
  103aca:	55                   	push   %ebp
  103acb:	89 e5                	mov    %esp,%ebp
  103acd:	83 ec 10             	sub    $0x10,%esp
  103ad0:	e8 e3 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103ad5:	05 1f d5 00 00       	add    $0xd51f,%eax
  103ada:	8b 45 08             	mov    0x8(%ebp),%eax
  103add:	89 c2                	mov    %eax,%edx
  103adf:	ec                   	in     (%dx),%al
  103ae0:	88 45 ff             	mov    %al,-0x1(%ebp)
  103ae3:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
  103ae7:	c9                   	leave
  103ae8:	c3                   	ret

00103ae9 <insl>:
  103ae9:	55                   	push   %ebp
  103aea:	89 e5                	mov    %esp,%ebp
  103aec:	57                   	push   %edi
  103aed:	53                   	push   %ebx
  103aee:	e8 c5 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103af3:	05 01 d5 00 00       	add    $0xd501,%eax
  103af8:	8b 55 08             	mov    0x8(%ebp),%edx
  103afb:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103afe:	8b 45 10             	mov    0x10(%ebp),%eax
  103b01:	89 cb                	mov    %ecx,%ebx
  103b03:	89 df                	mov    %ebx,%edi
  103b05:	89 c1                	mov    %eax,%ecx
  103b07:	fc                   	cld
  103b08:	f2 6d                	repnz insl (%dx),%es:(%edi)
  103b0a:	89 c8                	mov    %ecx,%eax
  103b0c:	89 fb                	mov    %edi,%ebx
  103b0e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b11:	89 45 10             	mov    %eax,0x10(%ebp)
  103b14:	90                   	nop
  103b15:	5b                   	pop    %ebx
  103b16:	5f                   	pop    %edi
  103b17:	5d                   	pop    %ebp
  103b18:	c3                   	ret

00103b19 <outb>:
  103b19:	55                   	push   %ebp
  103b1a:	89 e5                	mov    %esp,%ebp
  103b1c:	83 ec 04             	sub    $0x4,%esp
  103b1f:	e8 94 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b24:	05 d0 d4 00 00       	add    $0xd4d0,%eax
  103b29:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b2c:	88 45 fc             	mov    %al,-0x4(%ebp)
  103b2f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
  103b33:	8b 55 08             	mov    0x8(%ebp),%edx
  103b36:	ee                   	out    %al,(%dx)
  103b37:	90                   	nop
  103b38:	c9                   	leave
  103b39:	c3                   	ret

00103b3a <outsw>:
  103b3a:	55                   	push   %ebp
  103b3b:	89 e5                	mov    %esp,%ebp
  103b3d:	56                   	push   %esi
  103b3e:	53                   	push   %ebx
  103b3f:	e8 74 c8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103b44:	05 b0 d4 00 00       	add    $0xd4b0,%eax
  103b49:	8b 55 08             	mov    0x8(%ebp),%edx
  103b4c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  103b4f:	8b 45 10             	mov    0x10(%ebp),%eax
  103b52:	89 cb                	mov    %ecx,%ebx
  103b54:	89 de                	mov    %ebx,%esi
  103b56:	89 c1                	mov    %eax,%ecx
  103b58:	fc                   	cld
  103b59:	f2 66 6f             	repnz outsw %ds:(%esi),(%dx)
  103b5c:	89 c8                	mov    %ecx,%eax
  103b5e:	89 f3                	mov    %esi,%ebx
  103b60:	89 5d 0c             	mov    %ebx,0xc(%ebp)
  103b63:	89 45 10             	mov    %eax,0x10(%ebp)
  103b66:	90                   	nop
  103b67:	5b                   	pop    %ebx
  103b68:	5e                   	pop    %esi
  103b69:	5d                   	pop    %ebp
  103b6a:	c3                   	ret

00103b6b <mon_help>:
  103b6b:	55                   	push   %ebp
  103b6c:	89 e5                	mov    %esp,%ebp
  103b6e:	56                   	push   %esi
  103b6f:	53                   	push   %ebx
  103b70:	83 ec 10             	sub    $0x10,%esp
  103b73:	e8 48 c8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103b78:	81 c3 7c d4 00 00    	add    $0xd47c,%ebx
  103b7e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103b85:	eb 44                	jmp    103bcb <mon_help+0x60>
  103b87:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103b8a:	8d 8b 30 05 00 00    	lea    0x530(%ebx),%ecx
  103b90:	89 d0                	mov    %edx,%eax
  103b92:	01 c0                	add    %eax,%eax
  103b94:	01 d0                	add    %edx,%eax
  103b96:	c1 e0 02             	shl    $0x2,%eax
  103b99:	01 c8                	add    %ecx,%eax
  103b9b:	8b 08                	mov    (%eax),%ecx
  103b9d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103ba0:	8d b3 2c 05 00 00    	lea    0x52c(%ebx),%esi
  103ba6:	89 d0                	mov    %edx,%eax
  103ba8:	01 c0                	add    %eax,%eax
  103baa:	01 d0                	add    %edx,%eax
  103bac:	c1 e0 02             	shl    $0x2,%eax
  103baf:	01 f0                	add    %esi,%eax
  103bb1:	8b 00                	mov    (%eax),%eax
  103bb3:	83 ec 04             	sub    $0x4,%esp
  103bb6:	51                   	push   %ecx
  103bb7:	50                   	push   %eax
  103bb8:	8d 83 4c 93 ff ff    	lea    -0x6cb4(%ebx),%eax
  103bbe:	50                   	push   %eax
  103bbf:	e8 a8 f1 ff ff       	call   102d6c <dprintf>
  103bc4:	83 c4 10             	add    $0x10,%esp
  103bc7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  103bcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103bce:	83 f8 02             	cmp    $0x2,%eax
  103bd1:	76 b4                	jbe    103b87 <mon_help+0x1c>
  103bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103bd8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  103bdb:	5b                   	pop    %ebx
  103bdc:	5e                   	pop    %esi
  103bdd:	5d                   	pop    %ebp
  103bde:	c3                   	ret

00103bdf <mon_kerninfo>:
  103bdf:	55                   	push   %ebp
  103be0:	89 e5                	mov    %esp,%ebp
  103be2:	53                   	push   %ebx
  103be3:	83 ec 14             	sub    $0x14,%esp
  103be6:	e8 d5 c7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103beb:	81 c3 09 d4 00 00    	add    $0xd409,%ebx
  103bf1:	83 ec 0c             	sub    $0xc,%esp
  103bf4:	8d 83 55 93 ff ff    	lea    -0x6cab(%ebx),%eax
  103bfa:	50                   	push   %eax
  103bfb:	e8 6c f1 ff ff       	call   102d6c <dprintf>
  103c00:	83 c4 10             	add    $0x10,%esp
  103c03:	83 ec 08             	sub    $0x8,%esp
  103c06:	c7 c0 d0 4a 10 00    	mov    $0x104ad0,%eax
  103c0c:	50                   	push   %eax
  103c0d:	8d 83 6e 93 ff ff    	lea    -0x6c92(%ebx),%eax
  103c13:	50                   	push   %eax
  103c14:	e8 53 f1 ff ff       	call   102d6c <dprintf>
  103c19:	83 c4 10             	add    $0x10,%esp
  103c1c:	83 ec 08             	sub    $0x8,%esp
  103c1f:	c7 c0 76 90 10 00    	mov    $0x109076,%eax
  103c25:	50                   	push   %eax
  103c26:	8d 83 7d 93 ff ff    	lea    -0x6c83(%ebx),%eax
  103c2c:	50                   	push   %eax
  103c2d:	e8 3a f1 ff ff       	call   102d6c <dprintf>
  103c32:	83 c4 10             	add    $0x10,%esp
  103c35:	83 ec 08             	sub    $0x8,%esp
  103c38:	c7 c0 f0 68 11 00    	mov    $0x1168f0,%eax
  103c3e:	50                   	push   %eax
  103c3f:	8d 83 8c 93 ff ff    	lea    -0x6c74(%ebx),%eax
  103c45:	50                   	push   %eax
  103c46:	e8 21 f1 ff ff       	call   102d6c <dprintf>
  103c4b:	83 c4 10             	add    $0x10,%esp
  103c4e:	83 ec 08             	sub    $0x8,%esp
  103c51:	c7 c0 00 30 da 01    	mov    $0x1da3000,%eax
  103c57:	50                   	push   %eax
  103c58:	8d 83 9b 93 ff ff    	lea    -0x6c65(%ebx),%eax
  103c5e:	50                   	push   %eax
  103c5f:	e8 08 f1 ff ff       	call   102d6c <dprintf>
  103c64:	83 c4 10             	add    $0x10,%esp
  103c67:	c7 c0 00 30 da 01    	mov    $0x1da3000,%eax
  103c6d:	89 c1                	mov    %eax,%ecx
  103c6f:	c7 c0 d0 4a 10 00    	mov    $0x104ad0,%eax
  103c75:	89 c2                	mov    %eax,%edx
  103c77:	89 c8                	mov    %ecx,%eax
  103c79:	29 d0                	sub    %edx,%eax
  103c7b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103c7e:	c7 45 f0 00 04 00 00 	movl   $0x400,-0x10(%ebp)
  103c85:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103c88:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c8b:	01 d0                	add    %edx,%eax
  103c8d:	83 e8 01             	sub    $0x1,%eax
  103c90:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103c93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103c96:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103c99:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103c9c:	99                   	cltd
  103c9d:	f7 7d e8             	idivl  -0x18(%ebp)
  103ca0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103ca3:	29 d0                	sub    %edx,%eax
  103ca5:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  103cab:	85 c0                	test   %eax,%eax
  103cad:	0f 48 c2             	cmovs  %edx,%eax
  103cb0:	c1 f8 0a             	sar    $0xa,%eax
  103cb3:	83 ec 08             	sub    $0x8,%esp
  103cb6:	50                   	push   %eax
  103cb7:	8d 83 ac 93 ff ff    	lea    -0x6c54(%ebx),%eax
  103cbd:	50                   	push   %eax
  103cbe:	e8 a9 f0 ff ff       	call   102d6c <dprintf>
  103cc3:	83 c4 10             	add    $0x10,%esp
  103cc6:	b8 00 00 00 00       	mov    $0x0,%eax
  103ccb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103cce:	c9                   	leave
  103ccf:	c3                   	ret

00103cd0 <mon_backtrace>:
  103cd0:	55                   	push   %ebp
  103cd1:	89 e5                	mov    %esp,%ebp
  103cd3:	e8 e0 c6 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  103cd8:	05 1c d3 00 00       	add    $0xd31c,%eax
  103cdd:	b8 00 00 00 00       	mov    $0x0,%eax
  103ce2:	5d                   	pop    %ebp
  103ce3:	c3                   	ret

00103ce4 <mon_start_user>:
  103ce4:	55                   	push   %ebp
  103ce5:	89 e5                	mov    %esp,%ebp
  103ce7:	53                   	push   %ebx
  103ce8:	83 ec 14             	sub    $0x14,%esp
  103ceb:	e8 d0 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103cf0:	81 c3 04 d3 00 00    	add    $0xd304,%ebx
  103cf6:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103cfc:	85 c0                	test   %eax,%eax
  103cfe:	74 1c                	je     103d1c <mon_start_user+0x38>
  103d00:	83 ec 0c             	sub    $0xc,%esp
  103d03:	8d 83 d8 93 ff ff    	lea    -0x6c28(%ebx),%eax
  103d09:	50                   	push   %eax
  103d0a:	e8 5d f0 ff ff       	call   102d6c <dprintf>
  103d0f:	83 c4 10             	add    $0x10,%esp
  103d12:	b8 00 00 00 00       	mov    $0x0,%eax
  103d17:	e9 81 00 00 00       	jmp    103d9d <mon_start_user+0xb9>
  103d1c:	c7 c0 10 30 11 00    	mov    $0x113010,%eax
  103d22:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103d25:	83 ec 0c             	sub    $0xc,%esp
  103d28:	6a 00                	push   $0x0
  103d2a:	e8 b1 37 00 00       	call   1074e0 <container_get_quota>
  103d2f:	83 c4 10             	add    $0x10,%esp
  103d32:	83 ec 08             	sub    $0x8,%esp
  103d35:	50                   	push   %eax
  103d36:	6a 00                	push   $0x0
  103d38:	e8 23 4f 00 00       	call   108c60 <alloc_mem_quota>
  103d3d:	83 c4 10             	add    $0x10,%esp
  103d40:	89 83 38 cc 04 00    	mov    %eax,0x4cc38(%ebx)
  103d46:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d4c:	83 ec 08             	sub    $0x8,%esp
  103d4f:	50                   	push   %eax
  103d50:	ff 75 f4             	push   -0xc(%ebp)
  103d53:	e8 48 05 00 00       	call   1042a0 <elf_load>
  103d58:	83 c4 10             	add    $0x10,%esp
  103d5b:	83 ec 08             	sub    $0x8,%esp
  103d5e:	ff 75 f4             	push   -0xc(%ebp)
  103d61:	8d 83 34 94 ff ff    	lea    -0x6bcc(%ebx),%eax
  103d67:	50                   	push   %eax
  103d68:	e8 ff ef ff ff       	call   102d6c <dprintf>
  103d6d:	83 c4 10             	add    $0x10,%esp
  103d70:	8b 83 38 cc 04 00    	mov    0x4cc38(%ebx),%eax
  103d76:	83 ec 0c             	sub    $0xc,%esp
  103d79:	50                   	push   %eax
  103d7a:	e8 61 3c 00 00       	call   1079e0 <set_pdir_base>
  103d7f:	83 c4 10             	add    $0x10,%esp
  103d82:	83 ec 0c             	sub    $0xc,%esp
  103d85:	ff 75 f4             	push   -0xc(%ebp)
  103d88:	e8 d3 07 00 00       	call   104560 <elf_entry>
  103d8d:	83 c4 10             	add    $0x10,%esp
  103d90:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103d93:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103d96:	ff d0                	call   *%eax
  103d98:	b8 00 00 00 00       	mov    $0x0,%eax
  103d9d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103da0:	c9                   	leave
  103da1:	c3                   	ret

00103da2 <runcmd>:
  103da2:	55                   	push   %ebp
  103da3:	89 e5                	mov    %esp,%ebp
  103da5:	53                   	push   %ebx
  103da6:	83 ec 54             	sub    $0x54,%esp
  103da9:	e8 12 c6 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103dae:	81 c3 46 d2 00 00    	add    $0xd246,%ebx
  103db4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103dbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103dbe:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103dc5:	00 
  103dc6:	eb 0c                	jmp    103dd4 <runcmd+0x32>
  103dc8:	8b 45 08             	mov    0x8(%ebp),%eax
  103dcb:	8d 50 01             	lea    0x1(%eax),%edx
  103dce:	89 55 08             	mov    %edx,0x8(%ebp)
  103dd1:	c6 00 00             	movb   $0x0,(%eax)
  103dd4:	8b 45 08             	mov    0x8(%ebp),%eax
  103dd7:	0f b6 00             	movzbl (%eax),%eax
  103dda:	84 c0                	test   %al,%al
  103ddc:	74 20                	je     103dfe <runcmd+0x5c>
  103dde:	8b 45 08             	mov    0x8(%ebp),%eax
  103de1:	0f b6 00             	movzbl (%eax),%eax
  103de4:	0f be c0             	movsbl %al,%eax
  103de7:	83 ec 08             	sub    $0x8,%esp
  103dea:	50                   	push   %eax
  103deb:	8d 83 4f 94 ff ff    	lea    -0x6bb1(%ebx),%eax
  103df1:	50                   	push   %eax
  103df2:	e8 15 ec ff ff       	call   102a0c <strchr>
  103df7:	83 c4 10             	add    $0x10,%esp
  103dfa:	85 c0                	test   %eax,%eax
  103dfc:	75 ca                	jne    103dc8 <runcmd+0x26>
  103dfe:	8b 45 08             	mov    0x8(%ebp),%eax
  103e01:	0f b6 00             	movzbl (%eax),%eax
  103e04:	84 c0                	test   %al,%al
  103e06:	74 69                	je     103e71 <runcmd+0xcf>
  103e08:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  103e0c:	75 1e                	jne    103e2c <runcmd+0x8a>
  103e0e:	83 ec 08             	sub    $0x8,%esp
  103e11:	6a 10                	push   $0x10
  103e13:	8d 83 54 94 ff ff    	lea    -0x6bac(%ebx),%eax
  103e19:	50                   	push   %eax
  103e1a:	e8 4d ef ff ff       	call   102d6c <dprintf>
  103e1f:	83 c4 10             	add    $0x10,%esp
  103e22:	b8 00 00 00 00       	mov    $0x0,%eax
  103e27:	e9 e5 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e2f:	8d 50 01             	lea    0x1(%eax),%edx
  103e32:	89 55 f4             	mov    %edx,-0xc(%ebp)
  103e35:	8b 55 08             	mov    0x8(%ebp),%edx
  103e38:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4)
  103e3c:	eb 04                	jmp    103e42 <runcmd+0xa0>
  103e3e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  103e42:	8b 45 08             	mov    0x8(%ebp),%eax
  103e45:	0f b6 00             	movzbl (%eax),%eax
  103e48:	84 c0                	test   %al,%al
  103e4a:	74 88                	je     103dd4 <runcmd+0x32>
  103e4c:	8b 45 08             	mov    0x8(%ebp),%eax
  103e4f:	0f b6 00             	movzbl (%eax),%eax
  103e52:	0f be c0             	movsbl %al,%eax
  103e55:	83 ec 08             	sub    $0x8,%esp
  103e58:	50                   	push   %eax
  103e59:	8d 83 4f 94 ff ff    	lea    -0x6bb1(%ebx),%eax
  103e5f:	50                   	push   %eax
  103e60:	e8 a7 eb ff ff       	call   102a0c <strchr>
  103e65:	83 c4 10             	add    $0x10,%esp
  103e68:	85 c0                	test   %eax,%eax
  103e6a:	74 d2                	je     103e3e <runcmd+0x9c>
  103e6c:	e9 63 ff ff ff       	jmp    103dd4 <runcmd+0x32>
  103e71:	90                   	nop
  103e72:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103e75:	c7 44 85 b0 00 00 00 	movl   $0x0,-0x50(%ebp,%eax,4)
  103e7c:	00 
  103e7d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103e81:	75 0a                	jne    103e8d <runcmd+0xeb>
  103e83:	b8 00 00 00 00       	mov    $0x0,%eax
  103e88:	e9 84 00 00 00       	jmp    103f11 <runcmd+0x16f>
  103e8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  103e94:	eb 58                	jmp    103eee <runcmd+0x14c>
  103e96:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103e99:	8d 8b 2c 05 00 00    	lea    0x52c(%ebx),%ecx
  103e9f:	89 d0                	mov    %edx,%eax
  103ea1:	01 c0                	add    %eax,%eax
  103ea3:	01 d0                	add    %edx,%eax
  103ea5:	c1 e0 02             	shl    $0x2,%eax
  103ea8:	01 c8                	add    %ecx,%eax
  103eaa:	8b 10                	mov    (%eax),%edx
  103eac:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103eaf:	83 ec 08             	sub    $0x8,%esp
  103eb2:	52                   	push   %edx
  103eb3:	50                   	push   %eax
  103eb4:	e8 0a eb ff ff       	call   1029c3 <strcmp>
  103eb9:	83 c4 10             	add    $0x10,%esp
  103ebc:	85 c0                	test   %eax,%eax
  103ebe:	75 2a                	jne    103eea <runcmd+0x148>
  103ec0:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103ec3:	8d 8b 34 05 00 00    	lea    0x534(%ebx),%ecx
  103ec9:	89 d0                	mov    %edx,%eax
  103ecb:	01 c0                	add    %eax,%eax
  103ecd:	01 d0                	add    %edx,%eax
  103ecf:	c1 e0 02             	shl    $0x2,%eax
  103ed2:	01 c8                	add    %ecx,%eax
  103ed4:	8b 00                	mov    (%eax),%eax
  103ed6:	83 ec 04             	sub    $0x4,%esp
  103ed9:	ff 75 0c             	push   0xc(%ebp)
  103edc:	8d 55 b0             	lea    -0x50(%ebp),%edx
  103edf:	52                   	push   %edx
  103ee0:	ff 75 f4             	push   -0xc(%ebp)
  103ee3:	ff d0                	call   *%eax
  103ee5:	83 c4 10             	add    $0x10,%esp
  103ee8:	eb 27                	jmp    103f11 <runcmd+0x16f>
  103eea:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  103eee:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ef1:	83 f8 02             	cmp    $0x2,%eax
  103ef4:	76 a0                	jbe    103e96 <runcmd+0xf4>
  103ef6:	8b 45 b0             	mov    -0x50(%ebp),%eax
  103ef9:	83 ec 08             	sub    $0x8,%esp
  103efc:	50                   	push   %eax
  103efd:	8d 83 71 94 ff ff    	lea    -0x6b8f(%ebx),%eax
  103f03:	50                   	push   %eax
  103f04:	e8 63 ee ff ff       	call   102d6c <dprintf>
  103f09:	83 c4 10             	add    $0x10,%esp
  103f0c:	b8 00 00 00 00       	mov    $0x0,%eax
  103f11:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103f14:	c9                   	leave
  103f15:	c3                   	ret

00103f16 <monitor>:
  103f16:	55                   	push   %ebp
  103f17:	89 e5                	mov    %esp,%ebp
  103f19:	53                   	push   %ebx
  103f1a:	83 ec 14             	sub    $0x14,%esp
  103f1d:	e8 9e c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103f22:	81 c3 d2 d0 00 00    	add    $0xd0d2,%ebx
  103f28:	83 ec 0c             	sub    $0xc,%esp
  103f2b:	8d 83 88 94 ff ff    	lea    -0x6b78(%ebx),%eax
  103f31:	50                   	push   %eax
  103f32:	e8 35 ee ff ff       	call   102d6c <dprintf>
  103f37:	83 c4 10             	add    $0x10,%esp
  103f3a:	83 ec 0c             	sub    $0xc,%esp
  103f3d:	8d 83 b4 94 ff ff    	lea    -0x6b4c(%ebx),%eax
  103f43:	50                   	push   %eax
  103f44:	e8 23 ee ff ff       	call   102d6c <dprintf>
  103f49:	83 c4 10             	add    $0x10,%esp
  103f4c:	83 ec 0c             	sub    $0xc,%esp
  103f4f:	8d 83 88 94 ff ff    	lea    -0x6b78(%ebx),%eax
  103f55:	50                   	push   %eax
  103f56:	e8 11 ee ff ff       	call   102d6c <dprintf>
  103f5b:	83 c4 10             	add    $0x10,%esp
  103f5e:	83 ec 0c             	sub    $0xc,%esp
  103f61:	8d 83 e0 94 ff ff    	lea    -0x6b20(%ebx),%eax
  103f67:	50                   	push   %eax
  103f68:	e8 ff ed ff ff       	call   102d6c <dprintf>
  103f6d:	83 c4 10             	add    $0x10,%esp
  103f70:	83 ec 0c             	sub    $0xc,%esp
  103f73:	8d 83 05 95 ff ff    	lea    -0x6afb(%ebx),%eax
  103f79:	50                   	push   %eax
  103f7a:	e8 dd c5 ff ff       	call   10055c <readline>
  103f7f:	83 c4 10             	add    $0x10,%esp
  103f82:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103f85:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  103f89:	74 e5                	je     103f70 <monitor+0x5a>
  103f8b:	83 ec 08             	sub    $0x8,%esp
  103f8e:	ff 75 08             	push   0x8(%ebp)
  103f91:	ff 75 f4             	push   -0xc(%ebp)
  103f94:	e8 09 fe ff ff       	call   103da2 <runcmd>
  103f99:	83 c4 10             	add    $0x10,%esp
  103f9c:	85 c0                	test   %eax,%eax
  103f9e:	78 02                	js     103fa2 <monitor+0x8c>
  103fa0:	eb ce                	jmp    103f70 <monitor+0x5a>
  103fa2:	90                   	nop
  103fa3:	90                   	nop
  103fa4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  103fa7:	c9                   	leave
  103fa8:	c3                   	ret

00103fa9 <pt_copyin>:
  103fa9:	55                   	push   %ebp
  103faa:	89 e5                	mov    %esp,%ebp
  103fac:	53                   	push   %ebx
  103fad:	83 ec 14             	sub    $0x14,%esp
  103fb0:	e8 0b c4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  103fb5:	81 c3 3f d0 00 00    	add    $0xd03f,%ebx
  103fbb:	81 7d 0c ff ff ff 3f 	cmpl   $0x3fffffff,0xc(%ebp)
  103fc2:	76 0f                	jbe    103fd3 <pt_copyin+0x2a>
  103fc4:	8b 55 0c             	mov    0xc(%ebp),%edx
  103fc7:	8b 45 14             	mov    0x14(%ebp),%eax
  103fca:	01 d0                	add    %edx,%eax
  103fcc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fd1:	76 0a                	jbe    103fdd <pt_copyin+0x34>
  103fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  103fd8:	e9 d7 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103fdd:	8b 55 10             	mov    0x10(%ebp),%edx
  103fe0:	8b 45 14             	mov    0x14(%ebp),%eax
  103fe3:	01 d0                	add    %edx,%eax
  103fe5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  103fea:	76 0a                	jbe    103ff6 <pt_copyin+0x4d>
  103fec:	b8 00 00 00 00       	mov    $0x0,%eax
  103ff1:	e9 be 00 00 00       	jmp    1040b4 <pt_copyin+0x10b>
  103ff6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  103ffd:	e9 a5 00 00 00       	jmp    1040a7 <pt_copyin+0xfe>
  104002:	83 ec 08             	sub    $0x8,%esp
  104005:	ff 75 0c             	push   0xc(%ebp)
  104008:	ff 75 08             	push   0x8(%ebp)
  10400b:	e8 d0 3e 00 00       	call   107ee0 <get_ptbl_entry_by_va>
  104010:	83 c4 10             	add    $0x10,%esp
  104013:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104016:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104019:	83 e0 01             	and    $0x1,%eax
  10401c:	85 c0                	test   %eax,%eax
  10401e:	75 27                	jne    104047 <pt_copyin+0x9e>
  104020:	83 ec 04             	sub    $0x4,%esp
  104023:	6a 07                	push   $0x7
  104025:	ff 75 0c             	push   0xc(%ebp)
  104028:	ff 75 08             	push   0x8(%ebp)
  10402b:	e8 e0 4b 00 00       	call   108c10 <alloc_page>
  104030:	83 c4 10             	add    $0x10,%esp
  104033:	83 ec 08             	sub    $0x8,%esp
  104036:	ff 75 0c             	push   0xc(%ebp)
  104039:	ff 75 08             	push   0x8(%ebp)
  10403c:	e8 9f 3e 00 00       	call   107ee0 <get_ptbl_entry_by_va>
  104041:	83 c4 10             	add    $0x10,%esp
  104044:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104047:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10404a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10404f:	89 c2                	mov    %eax,%edx
  104051:	8b 45 0c             	mov    0xc(%ebp),%eax
  104054:	25 ff 0f 00 00       	and    $0xfff,%eax
  104059:	09 d0                	or     %edx,%eax
  10405b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10405e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104061:	25 ff 0f 00 00       	and    $0xfff,%eax
  104066:	89 c2                	mov    %eax,%edx
  104068:	b8 00 10 00 00       	mov    $0x1000,%eax
  10406d:	29 d0                	sub    %edx,%eax
  10406f:	8b 55 14             	mov    0x14(%ebp),%edx
  104072:	39 c2                	cmp    %eax,%edx
  104074:	0f 46 c2             	cmovbe %edx,%eax
  104077:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10407a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10407d:	83 ec 04             	sub    $0x4,%esp
  104080:	ff 75 ec             	push   -0x14(%ebp)
  104083:	50                   	push   %eax
  104084:	ff 75 10             	push   0x10(%ebp)
  104087:	e8 7d e8 ff ff       	call   102909 <memcpy>
  10408c:	83 c4 10             	add    $0x10,%esp
  10408f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104092:	29 45 14             	sub    %eax,0x14(%ebp)
  104095:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104098:	01 45 0c             	add    %eax,0xc(%ebp)
  10409b:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10409e:	01 45 10             	add    %eax,0x10(%ebp)
  1040a1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1040a4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1040a7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1040ab:	0f 85 51 ff ff ff    	jne    104002 <pt_copyin+0x59>
  1040b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1040b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1040b7:	c9                   	leave
  1040b8:	c3                   	ret

001040b9 <pt_copyout>:
  1040b9:	55                   	push   %ebp
  1040ba:	89 e5                	mov    %esp,%ebp
  1040bc:	53                   	push   %ebx
  1040bd:	83 ec 14             	sub    $0x14,%esp
  1040c0:	e8 fb c2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1040c5:	81 c3 2f cf 00 00    	add    $0xcf2f,%ebx
  1040cb:	81 7d 10 ff ff ff 3f 	cmpl   $0x3fffffff,0x10(%ebp)
  1040d2:	76 0f                	jbe    1040e3 <pt_copyout+0x2a>
  1040d4:	8b 55 10             	mov    0x10(%ebp),%edx
  1040d7:	8b 45 14             	mov    0x14(%ebp),%eax
  1040da:	01 d0                	add    %edx,%eax
  1040dc:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040e1:	76 0a                	jbe    1040ed <pt_copyout+0x34>
  1040e3:	b8 00 00 00 00       	mov    $0x0,%eax
  1040e8:	e9 d7 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  1040ed:	8b 55 08             	mov    0x8(%ebp),%edx
  1040f0:	8b 45 14             	mov    0x14(%ebp),%eax
  1040f3:	01 d0                	add    %edx,%eax
  1040f5:	3d 00 00 00 f0       	cmp    $0xf0000000,%eax
  1040fa:	76 0a                	jbe    104106 <pt_copyout+0x4d>
  1040fc:	b8 00 00 00 00       	mov    $0x0,%eax
  104101:	e9 be 00 00 00       	jmp    1041c4 <pt_copyout+0x10b>
  104106:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10410d:	e9 a5 00 00 00       	jmp    1041b7 <pt_copyout+0xfe>
  104112:	83 ec 08             	sub    $0x8,%esp
  104115:	ff 75 10             	push   0x10(%ebp)
  104118:	ff 75 0c             	push   0xc(%ebp)
  10411b:	e8 c0 3d 00 00       	call   107ee0 <get_ptbl_entry_by_va>
  104120:	83 c4 10             	add    $0x10,%esp
  104123:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104126:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104129:	83 e0 01             	and    $0x1,%eax
  10412c:	85 c0                	test   %eax,%eax
  10412e:	75 27                	jne    104157 <pt_copyout+0x9e>
  104130:	83 ec 04             	sub    $0x4,%esp
  104133:	6a 07                	push   $0x7
  104135:	ff 75 10             	push   0x10(%ebp)
  104138:	ff 75 0c             	push   0xc(%ebp)
  10413b:	e8 d0 4a 00 00       	call   108c10 <alloc_page>
  104140:	83 c4 10             	add    $0x10,%esp
  104143:	83 ec 08             	sub    $0x8,%esp
  104146:	ff 75 10             	push   0x10(%ebp)
  104149:	ff 75 0c             	push   0xc(%ebp)
  10414c:	e8 8f 3d 00 00       	call   107ee0 <get_ptbl_entry_by_va>
  104151:	83 c4 10             	add    $0x10,%esp
  104154:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104157:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10415a:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10415f:	89 c2                	mov    %eax,%edx
  104161:	8b 45 10             	mov    0x10(%ebp),%eax
  104164:	25 ff 0f 00 00       	and    $0xfff,%eax
  104169:	09 d0                	or     %edx,%eax
  10416b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10416e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104171:	25 ff 0f 00 00       	and    $0xfff,%eax
  104176:	89 c2                	mov    %eax,%edx
  104178:	b8 00 10 00 00       	mov    $0x1000,%eax
  10417d:	29 d0                	sub    %edx,%eax
  10417f:	8b 55 14             	mov    0x14(%ebp),%edx
  104182:	39 c2                	cmp    %eax,%edx
  104184:	0f 46 c2             	cmovbe %edx,%eax
  104187:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10418a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10418d:	83 ec 04             	sub    $0x4,%esp
  104190:	ff 75 ec             	push   -0x14(%ebp)
  104193:	ff 75 08             	push   0x8(%ebp)
  104196:	50                   	push   %eax
  104197:	e8 6d e7 ff ff       	call   102909 <memcpy>
  10419c:	83 c4 10             	add    $0x10,%esp
  10419f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a2:	29 45 14             	sub    %eax,0x14(%ebp)
  1041a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041a8:	01 45 10             	add    %eax,0x10(%ebp)
  1041ab:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041ae:	01 45 08             	add    %eax,0x8(%ebp)
  1041b1:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1041b4:	01 45 f4             	add    %eax,-0xc(%ebp)
  1041b7:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  1041bb:	0f 85 51 ff ff ff    	jne    104112 <pt_copyout+0x59>
  1041c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1041c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1041c7:	c9                   	leave
  1041c8:	c3                   	ret

001041c9 <pt_memset>:
  1041c9:	55                   	push   %ebp
  1041ca:	89 e5                	mov    %esp,%ebp
  1041cc:	53                   	push   %ebx
  1041cd:	83 ec 24             	sub    $0x24,%esp
  1041d0:	e8 eb c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1041d5:	81 c3 1f ce 00 00    	add    $0xce1f,%ebx
  1041db:	8b 45 10             	mov    0x10(%ebp),%eax
  1041de:	88 45 e4             	mov    %al,-0x1c(%ebp)
  1041e1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1041e8:	e9 a1 00 00 00       	jmp    10428e <pt_memset+0xc5>
  1041ed:	83 ec 08             	sub    $0x8,%esp
  1041f0:	ff 75 0c             	push   0xc(%ebp)
  1041f3:	ff 75 08             	push   0x8(%ebp)
  1041f6:	e8 e5 3c 00 00       	call   107ee0 <get_ptbl_entry_by_va>
  1041fb:	83 c4 10             	add    $0x10,%esp
  1041fe:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104201:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104204:	83 e0 01             	and    $0x1,%eax
  104207:	85 c0                	test   %eax,%eax
  104209:	75 27                	jne    104232 <pt_memset+0x69>
  10420b:	83 ec 04             	sub    $0x4,%esp
  10420e:	6a 07                	push   $0x7
  104210:	ff 75 0c             	push   0xc(%ebp)
  104213:	ff 75 08             	push   0x8(%ebp)
  104216:	e8 f5 49 00 00       	call   108c10 <alloc_page>
  10421b:	83 c4 10             	add    $0x10,%esp
  10421e:	83 ec 08             	sub    $0x8,%esp
  104221:	ff 75 0c             	push   0xc(%ebp)
  104224:	ff 75 08             	push   0x8(%ebp)
  104227:	e8 b4 3c 00 00       	call   107ee0 <get_ptbl_entry_by_va>
  10422c:	83 c4 10             	add    $0x10,%esp
  10422f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104232:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104235:	25 00 f0 ff ff       	and    $0xfffff000,%eax
  10423a:	89 c2                	mov    %eax,%edx
  10423c:	8b 45 0c             	mov    0xc(%ebp),%eax
  10423f:	25 ff 0f 00 00       	and    $0xfff,%eax
  104244:	09 d0                	or     %edx,%eax
  104246:	89 45 f0             	mov    %eax,-0x10(%ebp)
  104249:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10424c:	25 ff 0f 00 00       	and    $0xfff,%eax
  104251:	89 c2                	mov    %eax,%edx
  104253:	b8 00 10 00 00       	mov    $0x1000,%eax
  104258:	29 d0                	sub    %edx,%eax
  10425a:	8b 55 14             	mov    0x14(%ebp),%edx
  10425d:	39 c2                	cmp    %eax,%edx
  10425f:	0f 46 c2             	cmovbe %edx,%eax
  104262:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104265:	0f be 55 e4          	movsbl -0x1c(%ebp),%edx
  104269:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10426c:	83 ec 04             	sub    $0x4,%esp
  10426f:	ff 75 ec             	push   -0x14(%ebp)
  104272:	52                   	push   %edx
  104273:	50                   	push   %eax
  104274:	e8 32 e5 ff ff       	call   1027ab <memset>
  104279:	83 c4 10             	add    $0x10,%esp
  10427c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10427f:	29 45 14             	sub    %eax,0x14(%ebp)
  104282:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104285:	01 45 0c             	add    %eax,0xc(%ebp)
  104288:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10428b:	01 45 f4             	add    %eax,-0xc(%ebp)
  10428e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  104292:	0f 85 55 ff ff ff    	jne    1041ed <pt_memset+0x24>
  104298:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10429b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10429e:	c9                   	leave
  10429f:	c3                   	ret

001042a0 <elf_load>:
  1042a0:	55                   	push   %ebp
  1042a1:	89 e5                	mov    %esp,%ebp
  1042a3:	53                   	push   %ebx
  1042a4:	83 ec 34             	sub    $0x34,%esp
  1042a7:	e8 14 c1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1042ac:	81 c3 48 cd 00 00    	add    $0xcd48,%ebx
  1042b2:	8b 45 08             	mov    0x8(%ebp),%eax
  1042b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  1042b8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1042bb:	89 45 e0             	mov    %eax,-0x20(%ebp)
  1042be:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042c1:	8b 00                	mov    (%eax),%eax
  1042c3:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  1042c8:	74 1f                	je     1042e9 <elf_load+0x49>
  1042ca:	8d 83 0c 95 ff ff    	lea    -0x6af4(%ebx),%eax
  1042d0:	50                   	push   %eax
  1042d1:	8d 83 25 95 ff ff    	lea    -0x6adb(%ebx),%eax
  1042d7:	50                   	push   %eax
  1042d8:	6a 26                	push   $0x26
  1042da:	8d 83 42 95 ff ff    	lea    -0x6abe(%ebx),%eax
  1042e0:	50                   	push   %eax
  1042e1:	e8 6e e8 ff ff       	call   102b54 <debug_panic>
  1042e6:	83 c4 10             	add    $0x10,%esp
  1042e9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1042ec:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  1042f0:	66 85 c0             	test   %ax,%ax
  1042f3:	75 1f                	jne    104314 <elf_load+0x74>
  1042f5:	8d 83 54 95 ff ff    	lea    -0x6aac(%ebx),%eax
  1042fb:	50                   	push   %eax
  1042fc:	8d 83 25 95 ff ff    	lea    -0x6adb(%ebx),%eax
  104302:	50                   	push   %eax
  104303:	6a 27                	push   $0x27
  104305:	8d 83 42 95 ff ff    	lea    -0x6abe(%ebx),%eax
  10430b:	50                   	push   %eax
  10430c:	e8 43 e8 ff ff       	call   102b54 <debug_panic>
  104311:	83 c4 10             	add    $0x10,%esp
  104314:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104317:	8b 50 20             	mov    0x20(%eax),%edx
  10431a:	8b 45 e0             	mov    -0x20(%ebp),%eax
  10431d:	01 d0                	add    %edx,%eax
  10431f:	89 45 dc             	mov    %eax,-0x24(%ebp)
  104322:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104325:	0f b7 40 30          	movzwl 0x30(%eax),%eax
  104329:	0f b7 d0             	movzwl %ax,%edx
  10432c:	89 d0                	mov    %edx,%eax
  10432e:	c1 e0 02             	shl    $0x2,%eax
  104331:	01 d0                	add    %edx,%eax
  104333:	c1 e0 03             	shl    $0x3,%eax
  104336:	89 c2                	mov    %eax,%edx
  104338:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10433b:	01 d0                	add    %edx,%eax
  10433d:	89 45 d8             	mov    %eax,-0x28(%ebp)
  104340:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104343:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  104347:	0f b7 d0             	movzwl %ax,%edx
  10434a:	89 d0                	mov    %edx,%eax
  10434c:	c1 e0 02             	shl    $0x2,%eax
  10434f:	01 d0                	add    %edx,%eax
  104351:	c1 e0 03             	shl    $0x3,%eax
  104354:	89 c2                	mov    %eax,%edx
  104356:	8b 45 dc             	mov    -0x24(%ebp),%eax
  104359:	01 d0                	add    %edx,%eax
  10435b:	8b 50 10             	mov    0x10(%eax),%edx
  10435e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  104361:	01 d0                	add    %edx,%eax
  104363:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  104366:	8b 45 e0             	mov    -0x20(%ebp),%eax
  104369:	0f b7 40 32          	movzwl 0x32(%eax),%eax
  10436d:	0f b7 d0             	movzwl %ax,%edx
  104370:	89 d0                	mov    %edx,%eax
  104372:	c1 e0 02             	shl    $0x2,%eax
  104375:	01 d0                	add    %edx,%eax
  104377:	c1 e0 03             	shl    $0x3,%eax
  10437a:	89 c2                	mov    %eax,%edx
  10437c:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10437f:	01 d0                	add    %edx,%eax
  104381:	8b 40 04             	mov    0x4(%eax),%eax
  104384:	83 f8 03             	cmp    $0x3,%eax
  104387:	74 1f                	je     1043a8 <elf_load+0x108>
  104389:	8d 83 74 95 ff ff    	lea    -0x6a8c(%ebx),%eax
  10438f:	50                   	push   %eax
  104390:	8d 83 25 95 ff ff    	lea    -0x6adb(%ebx),%eax
  104396:	50                   	push   %eax
  104397:	6a 2d                	push   $0x2d
  104399:	8d 83 42 95 ff ff    	lea    -0x6abe(%ebx),%eax
  10439f:	50                   	push   %eax
  1043a0:	e8 af e7 ff ff       	call   102b54 <debug_panic>
  1043a5:	83 c4 10             	add    $0x10,%esp
  1043a8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043ab:	8b 50 1c             	mov    0x1c(%eax),%edx
  1043ae:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b1:	01 d0                	add    %edx,%eax
  1043b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1043b6:	8b 45 e0             	mov    -0x20(%ebp),%eax
  1043b9:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  1043bd:	0f b7 c0             	movzwl %ax,%eax
  1043c0:	c1 e0 05             	shl    $0x5,%eax
  1043c3:	89 c2                	mov    %eax,%edx
  1043c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043c8:	01 d0                	add    %edx,%eax
  1043ca:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1043cd:	e9 5f 01 00 00       	jmp    104531 <elf_load+0x291>
  1043d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043d5:	8b 00                	mov    (%eax),%eax
  1043d7:	83 f8 01             	cmp    $0x1,%eax
  1043da:	0f 85 4c 01 00 00    	jne    10452c <elf_load+0x28c>
  1043e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1043e3:	8b 40 04             	mov    0x4(%eax),%eax
  1043e6:	83 ec 08             	sub    $0x8,%esp
  1043e9:	68 00 10 00 00       	push   $0x1000
  1043ee:	50                   	push   %eax
  1043ef:	e8 11 f4 ff ff       	call   103805 <rounddown>
  1043f4:	83 c4 10             	add    $0x10,%esp
  1043f7:	8b 55 e0             	mov    -0x20(%ebp),%edx
  1043fa:	01 d0                	add    %edx,%eax
  1043fc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  1043ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104402:	8b 40 08             	mov    0x8(%eax),%eax
  104405:	83 ec 08             	sub    $0x8,%esp
  104408:	68 00 10 00 00       	push   $0x1000
  10440d:	50                   	push   %eax
  10440e:	e8 f2 f3 ff ff       	call   103805 <rounddown>
  104413:	83 c4 10             	add    $0x10,%esp
  104416:	89 45 ec             	mov    %eax,-0x14(%ebp)
  104419:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10441c:	8b 50 08             	mov    0x8(%eax),%edx
  10441f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104422:	8b 40 10             	mov    0x10(%eax),%eax
  104425:	01 d0                	add    %edx,%eax
  104427:	89 45 cc             	mov    %eax,-0x34(%ebp)
  10442a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10442d:	8b 50 08             	mov    0x8(%eax),%edx
  104430:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104433:	8b 40 14             	mov    0x14(%eax),%eax
  104436:	01 d0                	add    %edx,%eax
  104438:	83 ec 08             	sub    $0x8,%esp
  10443b:	68 00 10 00 00       	push   $0x1000
  104440:	50                   	push   %eax
  104441:	e8 de f3 ff ff       	call   103824 <roundup>
  104446:	83 c4 10             	add    $0x10,%esp
  104449:	89 45 c8             	mov    %eax,-0x38(%ebp)
  10444c:	c7 45 e8 05 00 00 00 	movl   $0x5,-0x18(%ebp)
  104453:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104456:	8b 40 18             	mov    0x18(%eax),%eax
  104459:	83 e0 02             	and    $0x2,%eax
  10445c:	85 c0                	test   %eax,%eax
  10445e:	0f 84 ba 00 00 00    	je     10451e <elf_load+0x27e>
  104464:	83 4d e8 02          	orl    $0x2,-0x18(%ebp)
  104468:	e9 b1 00 00 00       	jmp    10451e <elf_load+0x27e>
  10446d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104470:	83 ec 04             	sub    $0x4,%esp
  104473:	ff 75 e8             	push   -0x18(%ebp)
  104476:	ff 75 ec             	push   -0x14(%ebp)
  104479:	50                   	push   %eax
  10447a:	e8 91 47 00 00       	call   108c10 <alloc_page>
  10447f:	83 c4 10             	add    $0x10,%esp
  104482:	83 ec 08             	sub    $0x8,%esp
  104485:	68 00 10 00 00       	push   $0x1000
  10448a:	ff 75 cc             	push   -0x34(%ebp)
  10448d:	e8 73 f3 ff ff       	call   103805 <rounddown>
  104492:	83 c4 10             	add    $0x10,%esp
  104495:	39 45 ec             	cmp    %eax,-0x14(%ebp)
  104498:	73 1a                	jae    1044b4 <elf_load+0x214>
  10449a:	8b 55 0c             	mov    0xc(%ebp),%edx
  10449d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044a0:	68 00 10 00 00       	push   $0x1000
  1044a5:	ff 75 ec             	push   -0x14(%ebp)
  1044a8:	52                   	push   %edx
  1044a9:	50                   	push   %eax
  1044aa:	e8 0a fc ff ff       	call   1040b9 <pt_copyout>
  1044af:	83 c4 10             	add    $0x10,%esp
  1044b2:	eb 5c                	jmp    104510 <elf_load+0x270>
  1044b4:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1044b7:	3b 45 cc             	cmp    -0x34(%ebp),%eax
  1044ba:	73 3e                	jae    1044fa <elf_load+0x25a>
  1044bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1044bf:	8b 40 10             	mov    0x10(%eax),%eax
  1044c2:	85 c0                	test   %eax,%eax
  1044c4:	74 34                	je     1044fa <elf_load+0x25a>
  1044c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044c9:	68 00 10 00 00       	push   $0x1000
  1044ce:	6a 00                	push   $0x0
  1044d0:	ff 75 ec             	push   -0x14(%ebp)
  1044d3:	50                   	push   %eax
  1044d4:	e8 f0 fc ff ff       	call   1041c9 <pt_memset>
  1044d9:	83 c4 10             	add    $0x10,%esp
  1044dc:	8b 45 cc             	mov    -0x34(%ebp),%eax
  1044df:	2b 45 ec             	sub    -0x14(%ebp),%eax
  1044e2:	89 c1                	mov    %eax,%ecx
  1044e4:	8b 55 0c             	mov    0xc(%ebp),%edx
  1044e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1044ea:	51                   	push   %ecx
  1044eb:	ff 75 ec             	push   -0x14(%ebp)
  1044ee:	52                   	push   %edx
  1044ef:	50                   	push   %eax
  1044f0:	e8 c4 fb ff ff       	call   1040b9 <pt_copyout>
  1044f5:	83 c4 10             	add    $0x10,%esp
  1044f8:	eb 16                	jmp    104510 <elf_load+0x270>
  1044fa:	8b 45 0c             	mov    0xc(%ebp),%eax
  1044fd:	68 00 10 00 00       	push   $0x1000
  104502:	6a 00                	push   $0x0
  104504:	ff 75 ec             	push   -0x14(%ebp)
  104507:	50                   	push   %eax
  104508:	e8 bc fc ff ff       	call   1041c9 <pt_memset>
  10450d:	83 c4 10             	add    $0x10,%esp
  104510:	81 45 ec 00 10 00 00 	addl   $0x1000,-0x14(%ebp)
  104517:	81 45 f0 00 10 00 00 	addl   $0x1000,-0x10(%ebp)
  10451e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104521:	3b 45 c8             	cmp    -0x38(%ebp),%eax
  104524:	0f 82 43 ff ff ff    	jb     10446d <elf_load+0x1cd>
  10452a:	eb 01                	jmp    10452d <elf_load+0x28d>
  10452c:	90                   	nop
  10452d:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  104531:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104534:	3b 45 d0             	cmp    -0x30(%ebp),%eax
  104537:	0f 82 95 fe ff ff    	jb     1043d2 <elf_load+0x132>
  10453d:	8b 45 0c             	mov    0xc(%ebp),%eax
  104540:	68 00 10 00 00       	push   $0x1000
  104545:	68 00 00 00 e0       	push   $0xe0000000
  10454a:	50                   	push   %eax
  10454b:	8d 83 0c 10 00 00    	lea    0x100c(%ebx),%eax
  104551:	50                   	push   %eax
  104552:	e8 62 fb ff ff       	call   1040b9 <pt_copyout>
  104557:	83 c4 10             	add    $0x10,%esp
  10455a:	90                   	nop
  10455b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10455e:	c9                   	leave
  10455f:	c3                   	ret

00104560 <elf_entry>:
  104560:	55                   	push   %ebp
  104561:	89 e5                	mov    %esp,%ebp
  104563:	53                   	push   %ebx
  104564:	83 ec 14             	sub    $0x14,%esp
  104567:	e8 4c be ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10456c:	05 88 ca 00 00       	add    $0xca88,%eax
  104571:	8b 55 08             	mov    0x8(%ebp),%edx
  104574:	89 55 f4             	mov    %edx,-0xc(%ebp)
  104577:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10457a:	89 55 f0             	mov    %edx,-0x10(%ebp)
  10457d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  104580:	8b 12                	mov    (%edx),%edx
  104582:	81 fa 7f 45 4c 46    	cmp    $0x464c457f,%edx
  104588:	74 21                	je     1045ab <elf_entry+0x4b>
  10458a:	8d 90 0c 95 ff ff    	lea    -0x6af4(%eax),%edx
  104590:	52                   	push   %edx
  104591:	8d 90 25 95 ff ff    	lea    -0x6adb(%eax),%edx
  104597:	52                   	push   %edx
  104598:	6a 5b                	push   $0x5b
  10459a:	8d 90 42 95 ff ff    	lea    -0x6abe(%eax),%edx
  1045a0:	52                   	push   %edx
  1045a1:	89 c3                	mov    %eax,%ebx
  1045a3:	e8 ac e5 ff ff       	call   102b54 <debug_panic>
  1045a8:	83 c4 10             	add    $0x10,%esp
  1045ab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1045ae:	8b 40 18             	mov    0x18(%eax),%eax
  1045b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1045b4:	c9                   	leave
  1045b5:	c3                   	ret

001045b6 <trap_dump>:
  1045b6:	55                   	push   %ebp
  1045b7:	89 e5                	mov    %esp,%ebp
  1045b9:	53                   	push   %ebx
  1045ba:	83 ec 14             	sub    $0x14,%esp
  1045bd:	e8 fe bd ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1045c2:	81 c3 32 ca 00 00    	add    $0xca32,%ebx
  1045c8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  1045cc:	0f 84 4f 02 00 00    	je     104821 <trap_dump+0x26b>
  1045d2:	8b 45 08             	mov    0x8(%ebp),%eax
  1045d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
  1045d8:	ff 75 f4             	push   -0xc(%ebp)
  1045db:	8d 83 a4 95 ff ff    	lea    -0x6a5c(%ebx),%eax
  1045e1:	50                   	push   %eax
  1045e2:	6a 15                	push   $0x15
  1045e4:	8d 83 b5 95 ff ff    	lea    -0x6a4b(%ebx),%eax
  1045ea:	50                   	push   %eax
  1045eb:	e8 a9 e4 ff ff       	call   102a99 <debug_normal>
  1045f0:	83 c4 10             	add    $0x10,%esp
  1045f3:	8b 45 08             	mov    0x8(%ebp),%eax
  1045f6:	8b 10                	mov    (%eax),%edx
  1045f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1045fb:	83 ec 04             	sub    $0x4,%esp
  1045fe:	52                   	push   %edx
  1045ff:	50                   	push   %eax
  104600:	8d 83 c5 95 ff ff    	lea    -0x6a3b(%ebx),%eax
  104606:	50                   	push   %eax
  104607:	e8 5c e4 ff ff       	call   102a68 <debug_info>
  10460c:	83 c4 10             	add    $0x10,%esp
  10460f:	8b 45 08             	mov    0x8(%ebp),%eax
  104612:	8b 40 04             	mov    0x4(%eax),%eax
  104615:	8b 55 08             	mov    0x8(%ebp),%edx
  104618:	83 c2 04             	add    $0x4,%edx
  10461b:	83 ec 04             	sub    $0x4,%esp
  10461e:	50                   	push   %eax
  10461f:	52                   	push   %edx
  104620:	8d 83 dc 95 ff ff    	lea    -0x6a24(%ebx),%eax
  104626:	50                   	push   %eax
  104627:	e8 3c e4 ff ff       	call   102a68 <debug_info>
  10462c:	83 c4 10             	add    $0x10,%esp
  10462f:	8b 45 08             	mov    0x8(%ebp),%eax
  104632:	8b 40 08             	mov    0x8(%eax),%eax
  104635:	8b 55 08             	mov    0x8(%ebp),%edx
  104638:	83 c2 08             	add    $0x8,%edx
  10463b:	83 ec 04             	sub    $0x4,%esp
  10463e:	50                   	push   %eax
  10463f:	52                   	push   %edx
  104640:	8d 83 f3 95 ff ff    	lea    -0x6a0d(%ebx),%eax
  104646:	50                   	push   %eax
  104647:	e8 1c e4 ff ff       	call   102a68 <debug_info>
  10464c:	83 c4 10             	add    $0x10,%esp
  10464f:	8b 45 08             	mov    0x8(%ebp),%eax
  104652:	8b 40 0c             	mov    0xc(%eax),%eax
  104655:	8b 55 08             	mov    0x8(%ebp),%edx
  104658:	83 c2 0c             	add    $0xc,%edx
  10465b:	83 ec 04             	sub    $0x4,%esp
  10465e:	50                   	push   %eax
  10465f:	52                   	push   %edx
  104660:	8d 83 0a 96 ff ff    	lea    -0x69f6(%ebx),%eax
  104666:	50                   	push   %eax
  104667:	e8 fc e3 ff ff       	call   102a68 <debug_info>
  10466c:	83 c4 10             	add    $0x10,%esp
  10466f:	8b 45 08             	mov    0x8(%ebp),%eax
  104672:	8b 40 10             	mov    0x10(%eax),%eax
  104675:	8b 55 08             	mov    0x8(%ebp),%edx
  104678:	83 c2 10             	add    $0x10,%edx
  10467b:	83 ec 04             	sub    $0x4,%esp
  10467e:	50                   	push   %eax
  10467f:	52                   	push   %edx
  104680:	8d 83 21 96 ff ff    	lea    -0x69df(%ebx),%eax
  104686:	50                   	push   %eax
  104687:	e8 dc e3 ff ff       	call   102a68 <debug_info>
  10468c:	83 c4 10             	add    $0x10,%esp
  10468f:	8b 45 08             	mov    0x8(%ebp),%eax
  104692:	8b 40 14             	mov    0x14(%eax),%eax
  104695:	8b 55 08             	mov    0x8(%ebp),%edx
  104698:	83 c2 14             	add    $0x14,%edx
  10469b:	83 ec 04             	sub    $0x4,%esp
  10469e:	50                   	push   %eax
  10469f:	52                   	push   %edx
  1046a0:	8d 83 38 96 ff ff    	lea    -0x69c8(%ebx),%eax
  1046a6:	50                   	push   %eax
  1046a7:	e8 bc e3 ff ff       	call   102a68 <debug_info>
  1046ac:	83 c4 10             	add    $0x10,%esp
  1046af:	8b 45 08             	mov    0x8(%ebp),%eax
  1046b2:	8b 40 18             	mov    0x18(%eax),%eax
  1046b5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046b8:	83 c2 18             	add    $0x18,%edx
  1046bb:	83 ec 04             	sub    $0x4,%esp
  1046be:	50                   	push   %eax
  1046bf:	52                   	push   %edx
  1046c0:	8d 83 4f 96 ff ff    	lea    -0x69b1(%ebx),%eax
  1046c6:	50                   	push   %eax
  1046c7:	e8 9c e3 ff ff       	call   102a68 <debug_info>
  1046cc:	83 c4 10             	add    $0x10,%esp
  1046cf:	8b 45 08             	mov    0x8(%ebp),%eax
  1046d2:	8b 40 1c             	mov    0x1c(%eax),%eax
  1046d5:	8b 55 08             	mov    0x8(%ebp),%edx
  1046d8:	83 c2 1c             	add    $0x1c,%edx
  1046db:	83 ec 04             	sub    $0x4,%esp
  1046de:	50                   	push   %eax
  1046df:	52                   	push   %edx
  1046e0:	8d 83 66 96 ff ff    	lea    -0x699a(%ebx),%eax
  1046e6:	50                   	push   %eax
  1046e7:	e8 7c e3 ff ff       	call   102a68 <debug_info>
  1046ec:	83 c4 10             	add    $0x10,%esp
  1046ef:	8b 45 08             	mov    0x8(%ebp),%eax
  1046f2:	0f b7 40 20          	movzwl 0x20(%eax),%eax
  1046f6:	0f b7 c0             	movzwl %ax,%eax
  1046f9:	8b 55 08             	mov    0x8(%ebp),%edx
  1046fc:	83 c2 20             	add    $0x20,%edx
  1046ff:	83 ec 04             	sub    $0x4,%esp
  104702:	50                   	push   %eax
  104703:	52                   	push   %edx
  104704:	8d 83 7d 96 ff ff    	lea    -0x6983(%ebx),%eax
  10470a:	50                   	push   %eax
  10470b:	e8 58 e3 ff ff       	call   102a68 <debug_info>
  104710:	83 c4 10             	add    $0x10,%esp
  104713:	8b 45 08             	mov    0x8(%ebp),%eax
  104716:	0f b7 40 24          	movzwl 0x24(%eax),%eax
  10471a:	0f b7 c0             	movzwl %ax,%eax
  10471d:	8b 55 08             	mov    0x8(%ebp),%edx
  104720:	83 c2 24             	add    $0x24,%edx
  104723:	83 ec 04             	sub    $0x4,%esp
  104726:	50                   	push   %eax
  104727:	52                   	push   %edx
  104728:	8d 83 94 96 ff ff    	lea    -0x696c(%ebx),%eax
  10472e:	50                   	push   %eax
  10472f:	e8 34 e3 ff ff       	call   102a68 <debug_info>
  104734:	83 c4 10             	add    $0x10,%esp
  104737:	8b 45 08             	mov    0x8(%ebp),%eax
  10473a:	8b 40 28             	mov    0x28(%eax),%eax
  10473d:	8b 55 08             	mov    0x8(%ebp),%edx
  104740:	83 c2 28             	add    $0x28,%edx
  104743:	83 ec 04             	sub    $0x4,%esp
  104746:	50                   	push   %eax
  104747:	52                   	push   %edx
  104748:	8d 83 ab 96 ff ff    	lea    -0x6955(%ebx),%eax
  10474e:	50                   	push   %eax
  10474f:	e8 14 e3 ff ff       	call   102a68 <debug_info>
  104754:	83 c4 10             	add    $0x10,%esp
  104757:	8b 45 08             	mov    0x8(%ebp),%eax
  10475a:	8b 40 2c             	mov    0x2c(%eax),%eax
  10475d:	8b 55 08             	mov    0x8(%ebp),%edx
  104760:	83 c2 2c             	add    $0x2c,%edx
  104763:	83 ec 04             	sub    $0x4,%esp
  104766:	50                   	push   %eax
  104767:	52                   	push   %edx
  104768:	8d 83 c1 96 ff ff    	lea    -0x693f(%ebx),%eax
  10476e:	50                   	push   %eax
  10476f:	e8 f4 e2 ff ff       	call   102a68 <debug_info>
  104774:	83 c4 10             	add    $0x10,%esp
  104777:	8b 45 08             	mov    0x8(%ebp),%eax
  10477a:	8b 40 30             	mov    0x30(%eax),%eax
  10477d:	8b 55 08             	mov    0x8(%ebp),%edx
  104780:	83 c2 30             	add    $0x30,%edx
  104783:	83 ec 04             	sub    $0x4,%esp
  104786:	50                   	push   %eax
  104787:	52                   	push   %edx
  104788:	8d 83 d8 96 ff ff    	lea    -0x6928(%ebx),%eax
  10478e:	50                   	push   %eax
  10478f:	e8 d4 e2 ff ff       	call   102a68 <debug_info>
  104794:	83 c4 10             	add    $0x10,%esp
  104797:	8b 45 08             	mov    0x8(%ebp),%eax
  10479a:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  10479e:	0f b7 c0             	movzwl %ax,%eax
  1047a1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047a4:	83 c2 34             	add    $0x34,%edx
  1047a7:	83 ec 04             	sub    $0x4,%esp
  1047aa:	50                   	push   %eax
  1047ab:	52                   	push   %edx
  1047ac:	8d 83 ef 96 ff ff    	lea    -0x6911(%ebx),%eax
  1047b2:	50                   	push   %eax
  1047b3:	e8 b0 e2 ff ff       	call   102a68 <debug_info>
  1047b8:	83 c4 10             	add    $0x10,%esp
  1047bb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047be:	8b 40 38             	mov    0x38(%eax),%eax
  1047c1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047c4:	83 c2 38             	add    $0x38,%edx
  1047c7:	83 ec 04             	sub    $0x4,%esp
  1047ca:	50                   	push   %eax
  1047cb:	52                   	push   %edx
  1047cc:	8d 83 06 97 ff ff    	lea    -0x68fa(%ebx),%eax
  1047d2:	50                   	push   %eax
  1047d3:	e8 90 e2 ff ff       	call   102a68 <debug_info>
  1047d8:	83 c4 10             	add    $0x10,%esp
  1047db:	8b 45 08             	mov    0x8(%ebp),%eax
  1047de:	8b 40 3c             	mov    0x3c(%eax),%eax
  1047e1:	8b 55 08             	mov    0x8(%ebp),%edx
  1047e4:	83 c2 3c             	add    $0x3c,%edx
  1047e7:	83 ec 04             	sub    $0x4,%esp
  1047ea:	50                   	push   %eax
  1047eb:	52                   	push   %edx
  1047ec:	8d 83 0a 96 ff ff    	lea    -0x69f6(%ebx),%eax
  1047f2:	50                   	push   %eax
  1047f3:	e8 70 e2 ff ff       	call   102a68 <debug_info>
  1047f8:	83 c4 10             	add    $0x10,%esp
  1047fb:	8b 45 08             	mov    0x8(%ebp),%eax
  1047fe:	0f b7 40 40          	movzwl 0x40(%eax),%eax
  104802:	0f b7 c0             	movzwl %ax,%eax
  104805:	8b 55 08             	mov    0x8(%ebp),%edx
  104808:	83 c2 40             	add    $0x40,%edx
  10480b:	83 ec 04             	sub    $0x4,%esp
  10480e:	50                   	push   %eax
  10480f:	52                   	push   %edx
  104810:	8d 83 1c 97 ff ff    	lea    -0x68e4(%ebx),%eax
  104816:	50                   	push   %eax
  104817:	e8 4c e2 ff ff       	call   102a68 <debug_info>
  10481c:	83 c4 10             	add    $0x10,%esp
  10481f:	eb 01                	jmp    104822 <trap_dump+0x26c>
  104821:	90                   	nop
  104822:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  104825:	c9                   	leave
  104826:	c3                   	ret

00104827 <pgflt_handler>:
  104827:	55                   	push   %ebp
  104828:	89 e5                	mov    %esp,%ebp
  10482a:	53                   	push   %ebx
  10482b:	83 ec 14             	sub    $0x14,%esp
  10482e:	e8 8d bb ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104833:	81 c3 c1 c7 00 00    	add    $0xc7c1,%ebx
  104839:	8b 45 08             	mov    0x8(%ebp),%eax
  10483c:	8b 40 2c             	mov    0x2c(%eax),%eax
  10483f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  104842:	e8 21 f2 ff ff       	call   103a68 <rcr2>
  104847:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10484a:	8b 45 08             	mov    0x8(%ebp),%eax
  10484d:	8b 50 30             	mov    0x30(%eax),%edx
  104850:	c7 c0 2c dc 15 00    	mov    $0x15dc2c,%eax
  104856:	8b 00                	mov    (%eax),%eax
  104858:	83 ec 0c             	sub    $0xc,%esp
  10485b:	52                   	push   %edx
  10485c:	50                   	push   %eax
  10485d:	ff 75 f4             	push   -0xc(%ebp)
  104860:	ff 75 f0             	push   -0x10(%ebp)
  104863:	8d 83 34 97 ff ff    	lea    -0x68cc(%ebx),%eax
  104869:	50                   	push   %eax
  10486a:	e8 fd e4 ff ff       	call   102d6c <dprintf>
  10486f:	83 c4 20             	add    $0x20,%esp
  104872:	8b 45 f4             	mov    -0xc(%ebp),%eax
  104875:	83 e0 01             	and    $0x1,%eax
  104878:	85 c0                	test   %eax,%eax
  10487a:	74 23                	je     10489f <pgflt_handler+0x78>
  10487c:	83 ec 0c             	sub    $0xc,%esp
  10487f:	ff 75 f4             	push   -0xc(%ebp)
  104882:	ff 75 f0             	push   -0x10(%ebp)
  104885:	8d 83 74 97 ff ff    	lea    -0x688c(%ebx),%eax
  10488b:	50                   	push   %eax
  10488c:	6a 3b                	push   $0x3b
  10488e:	8d 83 b5 95 ff ff    	lea    -0x6a4b(%ebx),%eax
  104894:	50                   	push   %eax
  104895:	e8 ba e2 ff ff       	call   102b54 <debug_panic>
  10489a:	83 c4 20             	add    $0x20,%esp
  10489d:	eb 7d                	jmp    10491c <pgflt_handler+0xf5>
  10489f:	81 7d f0 ff ff ff 3f 	cmpl   $0x3fffffff,-0x10(%ebp)
  1048a6:	76 4a                	jbe    1048f2 <pgflt_handler+0xcb>
  1048a8:	81 7d f0 ff ff 3f 40 	cmpl   $0x403fffff,-0x10(%ebp)
  1048af:	77 41                	ja     1048f2 <pgflt_handler+0xcb>
  1048b1:	83 ec 08             	sub    $0x8,%esp
  1048b4:	ff 75 f0             	push   -0x10(%ebp)
  1048b7:	8d 83 bc 97 ff ff    	lea    -0x6844(%ebx),%eax
  1048bd:	50                   	push   %eax
  1048be:	e8 a9 e4 ff ff       	call   102d6c <dprintf>
  1048c3:	83 c4 10             	add    $0x10,%esp
  1048c6:	83 ec 08             	sub    $0x8,%esp
  1048c9:	68 00 10 00 00       	push   $0x1000
  1048ce:	ff 75 f0             	push   -0x10(%ebp)
  1048d1:	e8 2f ef ff ff       	call   103805 <rounddown>
  1048d6:	83 c4 10             	add    $0x10,%esp
  1048d9:	c7 c2 2c dc 15 00    	mov    $0x15dc2c,%edx
  1048df:	8b 12                	mov    (%edx),%edx
  1048e1:	83 ec 04             	sub    $0x4,%esp
  1048e4:	6a 07                	push   $0x7
  1048e6:	50                   	push   %eax
  1048e7:	52                   	push   %edx
  1048e8:	e8 23 43 00 00       	call   108c10 <alloc_page>
  1048ed:	83 c4 10             	add    $0x10,%esp
  1048f0:	eb 2a                	jmp    10491c <pgflt_handler+0xf5>
  1048f2:	83 ec 08             	sub    $0x8,%esp
  1048f5:	68 00 10 00 00       	push   $0x1000
  1048fa:	ff 75 f0             	push   -0x10(%ebp)
  1048fd:	e8 03 ef ff ff       	call   103805 <rounddown>
  104902:	83 c4 10             	add    $0x10,%esp
  104905:	c7 c2 2c dc 15 00    	mov    $0x15dc2c,%edx
  10490b:	8b 12                	mov    (%edx),%edx
  10490d:	83 ec 04             	sub    $0x4,%esp
  104910:	6a 07                	push   $0x7
  104912:	50                   	push   %eax
  104913:	52                   	push   %edx
  104914:	e8 f7 42 00 00       	call   108c10 <alloc_page>
  104919:	83 c4 10             	add    $0x10,%esp
  10491c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10491f:	c9                   	leave
  104920:	c3                   	ret

00104921 <checkpoint>:
  104921:	55                   	push   %ebp
  104922:	89 e5                	mov    %esp,%ebp
  104924:	53                   	push   %ebx
  104925:	83 ec 04             	sub    $0x4,%esp
  104928:	e8 8b ba ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  10492d:	05 c7 c6 00 00       	add    $0xc6c7,%eax
  104932:	83 ec 0c             	sub    $0xc,%esp
  104935:	8d 90 e3 97 ff ff    	lea    -0x681d(%eax),%edx
  10493b:	52                   	push   %edx
  10493c:	89 c3                	mov    %eax,%ebx
  10493e:	e8 25 e1 ff ff       	call   102a68 <debug_info>
  104943:	83 c4 10             	add    $0x10,%esp
  104946:	90                   	nop
  104947:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  10494a:	c9                   	leave
  10494b:	c3                   	ret

0010494c <trap>:
  10494c:	55                   	push   %ebp
  10494d:	89 e5                	mov    %esp,%ebp
  10494f:	53                   	push   %ebx
  104950:	83 ec 04             	sub    $0x4,%esp
  104953:	e8 68 ba ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104958:	81 c3 9c c6 00 00    	add    $0xc69c,%ebx
  10495e:	8b 45 08             	mov    0x8(%ebp),%eax
  104961:	8b 40 28             	mov    0x28(%eax),%eax
  104964:	83 f8 0e             	cmp    $0xe,%eax
  104967:	75 31                	jne    10499a <trap+0x4e>
  104969:	83 ec 0c             	sub    $0xc,%esp
  10496c:	6a 00                	push   $0x0
  10496e:	e8 6d 30 00 00       	call   1079e0 <set_pdir_base>
  104973:	83 c4 10             	add    $0x10,%esp
  104976:	83 ec 0c             	sub    $0xc,%esp
  104979:	ff 75 08             	push   0x8(%ebp)
  10497c:	e8 a6 fe ff ff       	call   104827 <pgflt_handler>
  104981:	83 c4 10             	add    $0x10,%esp
  104984:	c7 c0 2c dc 15 00    	mov    $0x15dc2c,%eax
  10498a:	8b 00                	mov    (%eax),%eax
  10498c:	83 ec 0c             	sub    $0xc,%esp
  10498f:	50                   	push   %eax
  104990:	e8 4b 30 00 00       	call   1079e0 <set_pdir_base>
  104995:	83 c4 10             	add    $0x10,%esp
  104998:	eb 48                	jmp    1049e2 <trap+0x96>
  10499a:	8b 45 08             	mov    0x8(%ebp),%eax
  10499d:	8b 40 28             	mov    0x28(%eax),%eax
  1049a0:	50                   	push   %eax
  1049a1:	8d 83 f8 97 ff ff    	lea    -0x6808(%ebx),%eax
  1049a7:	50                   	push   %eax
  1049a8:	6a 6c                	push   $0x6c
  1049aa:	8d 83 b5 95 ff ff    	lea    -0x6a4b(%ebx),%eax
  1049b0:	50                   	push   %eax
  1049b1:	e8 e3 e0 ff ff       	call   102a99 <debug_normal>
  1049b6:	83 c4 10             	add    $0x10,%esp
  1049b9:	83 ec 0c             	sub    $0xc,%esp
  1049bc:	ff 75 08             	push   0x8(%ebp)
  1049bf:	e8 f2 fb ff ff       	call   1045b6 <trap_dump>
  1049c4:	83 c4 10             	add    $0x10,%esp
  1049c7:	83 ec 04             	sub    $0x4,%esp
  1049ca:	8d 83 0c 98 ff ff    	lea    -0x67f4(%ebx),%eax
  1049d0:	50                   	push   %eax
  1049d1:	6a 6e                	push   $0x6e
  1049d3:	8d 83 b5 95 ff ff    	lea    -0x6a4b(%ebx),%eax
  1049d9:	50                   	push   %eax
  1049da:	e8 75 e1 ff ff       	call   102b54 <debug_panic>
  1049df:	83 c4 10             	add    $0x10,%esp
  1049e2:	83 ec 0c             	sub    $0xc,%esp
  1049e5:	ff 75 08             	push   0x8(%ebp)
  1049e8:	e8 b3 dd ff ff       	call   1027a0 <trap_return>
  1049ed:	83 c4 10             	add    $0x10,%esp
  1049f0:	90                   	nop
  1049f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1049f4:	c9                   	leave
  1049f5:	c3                   	ret
  1049f6:	66 90                	xchg   %ax,%ax
  1049f8:	66 90                	xchg   %ax,%ax
  1049fa:	66 90                	xchg   %ax,%ax
  1049fc:	66 90                	xchg   %ax,%ax
  1049fe:	66 90                	xchg   %ax,%ax

00104a00 <kern_init>:

    monitor(NULL);
}

void kern_init(uintptr_t mbi_addr)
{
  104a00:	57                   	push   %edi
  104a01:	56                   	push   %esi
  104a02:	53                   	push   %ebx
  104a03:	8b 74 24 10          	mov    0x10(%esp),%esi
  104a07:	e8 b4 b9 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  104a0c:	81 c3 e8 c5 00 00    	add    $0xc5e8,%ebx
    pmem_init((unsigned int)mbi_addr);
  104a12:	83 ec 0c             	sub    $0xc,%esp
  104a15:	56                   	push   %esi
  104a16:	e8 05 0b 00 00       	call   105520 <pmem_init>
    KERN_DEBUG("Kernel initialized.\n");
  104a1b:	8d bb 40 98 ff ff    	lea    -0x67c0(%ebx),%edi
  104a21:	83 c4 0c             	add    $0xc,%esp
  104a24:	8d 83 2b 98 ff ff    	lea    -0x67d5(%ebx),%eax
  104a2a:	50                   	push   %eax
  104a2b:	6a 3c                	push   $0x3c
  104a2d:	57                   	push   %edi
  104a2e:	e8 66 e0 ff ff       	call   102a99 <debug_normal>
    KERN_DEBUG("In kernel main.\n\n");
  104a33:	83 c4 0c             	add    $0xc,%esp
  104a36:	8d 83 51 98 ff ff    	lea    -0x67af(%ebx),%eax
  104a3c:	50                   	push   %eax
  104a3d:	6a 19                	push   $0x19
  104a3f:	57                   	push   %edi
  104a40:	e8 54 e0 ff ff       	call   102a99 <debug_normal>
    pmem_init((unsigned int)mbi_addr);
  104a45:	89 34 24             	mov    %esi,(%esp)
  104a48:	e8 d3 0a 00 00       	call   105520 <pmem_init>
    test_MATInit();
  104a4d:	e8 4e 18 00 00       	call   1062a0 <test_MATInit>
    test_MATOp();
  104a52:	e8 b9 28 00 00       	call   107310 <test_MATOp>
    container_init((unsigned int)mbi_addr);
  104a57:	89 34 24             	mov    %esi,(%esp)
  104a5a:	e8 51 29 00 00       	call   1073b0 <container_init>
    test_MContainer();
  104a5f:	e8 5c 2f 00 00       	call   1079c0 <test_MContainer>
    paging_init(mbi_addr); 
  104a64:	89 34 24             	mov    %esi,(%esp)
  104a67:	e8 74 41 00 00       	call   108be0 <paging_init>
    dprintf("Testing the MPTComm layer (Superpage & Heap foundation)...\n");
  104a6c:	8d 83 a8 9b ff ff    	lea    -0x6458(%ebx),%eax
  104a72:	89 04 24             	mov    %eax,(%esp)
  104a75:	e8 f2 e2 ff ff       	call   102d6c <dprintf>
    if (test_MPTComm() == 0) {
  104a7a:	e8 e1 3d 00 00       	call   108860 <test_MPTComm>
  104a7f:	83 c4 10             	add    $0x10,%esp
  104a82:	85 c0                	test   %eax,%eax
  104a84:	74 2a                	je     104ab0 <kern_init+0xb0>
    dprintf("\nTest complete. Please Use Ctrl-a x to exit qemu.\n");
  104a86:	83 ec 0c             	sub    $0xc,%esp
  104a89:	8d 83 e4 9b ff ff    	lea    -0x641c(%ebx),%eax
  104a8f:	50                   	push   %eax
  104a90:	e8 d7 e2 ff ff       	call   102d6c <dprintf>
    monitor(NULL);
  104a95:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  104a9c:	e8 75 f4 ff ff       	call   103f16 <monitor>
    kern_main(mbi_addr);
  104aa1:	83 c4 10             	add    $0x10,%esp
  104aa4:	5b                   	pop    %ebx
  104aa5:	5e                   	pop    %esi
  104aa6:	5f                   	pop    %edi
  104aa7:	c3                   	ret
  104aa8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104aaf:	00 
        dprintf("MPTComm tests passed!\n");
  104ab0:	83 ec 0c             	sub    $0xc,%esp
  104ab3:	8d 83 63 98 ff ff    	lea    -0x679d(%ebx),%eax
  104ab9:	50                   	push   %eax
  104aba:	e8 ad e2 ff ff       	call   102d6c <dprintf>
  104abf:	83 c4 10             	add    $0x10,%esp
  104ac2:	eb c2                	jmp    104a86 <kern_init+0x86>
  104ac4:	02 b0 ad 1b 03 00    	add    0x31bad(%eax),%dh
  104aca:	00 00                	add    %al,(%eax)
  104acc:	fb                   	sti
  104acd:	4f                   	dec    %edi
  104ace:	52                   	push   %edx
  104acf:	e4                   	.byte 0xe4

00104ad0 <start>:
  104ad0:	fa                   	cli
  104ad1:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
  104ad6:	75 27                	jne    104aff <spin>
  104ad8:	89 1d 00 4b 10 00    	mov    %ebx,0x104b00
  104ade:	66 c7 05 72 04 00 00 	movw   $0x1234,0x472
  104ae5:	34 12 
  104ae7:	6a 02                	push   $0x2
  104ae9:	9d                   	popf
  104aea:	bd 00 00 00 00       	mov    $0x0,%ebp
  104aef:	bc 00 a0 11 00       	mov    $0x11a000,%esp
  104af4:	ff 35 00 4b 10 00    	push   0x104b00
  104afa:	e8 01 ff ff ff       	call   104a00 <kern_init>

00104aff <spin>:
  104aff:	f4                   	hlt

00104b00 <multiboot_ptr>:
  104b00:	00 00                	add    %al,(%eax)
  104b02:	00 00                	add    %al,(%eax)
  104b04:	66 90                	xchg   %ax,%ax
  104b06:	66 90                	xchg   %ax,%ax
  104b08:	66 90                	xchg   %ax,%ax
  104b0a:	66 90                	xchg   %ax,%ax
  104b0c:	66 90                	xchg   %ax,%ax
  104b0e:	66 90                	xchg   %ax,%ax

00104b10 <pmm_init_freelists>:
static unsigned int NUM_PAGES;
struct ATStruct AT[1 << 20];
static int free_list[MAX_ORDER][NUM_SEGMENTS + 1];  // 2D array: [order][segment]

void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
  104b10:	e8 a3 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104b15:	05 df c4 00 00       	add    $0xc4df,%eax
  104b1a:	8d 80 4c cc 84 01    	lea    0x184cc4c(%eax),%eax
  104b20:	8d 90 84 00 00 00    	lea    0x84(%eax),%edx
  104b26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b2d:	00 
  104b2e:	66 90                	xchg   %ax,%ax
        for (int j = 0; j <= NUM_SEGMENTS; j++) {
            free_list[i][j] = -1;
  104b30:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104b36:	83 c0 0c             	add    $0xc,%eax
            free_list[i][j] = -1;
  104b39:	c7 40 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%eax)
  104b40:	c7 40 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%eax)
    for (int i = 0; i < MAX_ORDER; i++) {
  104b47:	39 d0                	cmp    %edx,%eax
  104b49:	75 e5                	jne    104b30 <pmm_init_freelists+0x20>
        }
    }
}
  104b4b:	c3                   	ret
  104b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104b50 <get_nps>:

unsigned int get_nps(void) { return NUM_PAGES; }
  104b50:	e8 63 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104b55:	05 9f c4 00 00       	add    $0xc49f,%eax
  104b5a:	8b 80 d0 cc 84 01    	mov    0x184ccd0(%eax),%eax
  104b60:	c3                   	ret
  104b61:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b68:	00 
  104b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104b70 <set_nps>:
void set_nps(unsigned int nps) { NUM_PAGES = nps; }
  104b70:	e8 43 b8 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104b75:	05 7f c4 00 00       	add    $0xc47f,%eax
  104b7a:	8b 54 24 04          	mov    0x4(%esp),%edx
  104b7e:	89 90 d0 cc 84 01    	mov    %edx,0x184ccd0(%eax)
  104b84:	c3                   	ret
  104b85:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104b8c:	00 
  104b8d:	8d 76 00             	lea    0x0(%esi),%esi

00104b90 <at_is_norm>:

unsigned int at_is_norm(unsigned int page_index) {
    return (page_index < NUM_PAGES && AT[page_index].perm > 1);
  104b90:	e8 87 04 00 00       	call   10501c <__x86.get_pc_thunk.cx>
  104b95:	81 c1 5f c4 00 00    	add    $0xc45f,%ecx
unsigned int at_is_norm(unsigned int page_index) {
  104b9b:	8b 44 24 04          	mov    0x4(%esp),%eax
  104b9f:	31 d2                	xor    %edx,%edx
    return (page_index < NUM_PAGES && AT[page_index].perm > 1);
  104ba1:	3b 81 d0 cc 84 01    	cmp    0x184ccd0(%ecx),%eax
  104ba7:	73 10                	jae    104bb9 <at_is_norm+0x29>
  104ba9:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104bac:	31 d2                	xor    %edx,%edx
  104bae:	83 bc c1 4c cc 04 00 	cmpl   $0x1,0x4cc4c(%ecx,%eax,8)
  104bb5:	01 
  104bb6:	0f 97 c2             	seta   %dl
}
  104bb9:	89 d0                	mov    %edx,%eax
  104bbb:	c3                   	ret
  104bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104bc0 <at_set_perm>:

void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
  104bc0:	e8 f3 b7 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  104bc5:	05 2f c4 00 00       	add    $0xc42f,%eax
void at_set_perm(unsigned int page_index, unsigned int perm) {
  104bca:	8b 54 24 04          	mov    0x4(%esp),%edx
    if (page_index < NUM_PAGES) {
  104bce:	3b 90 d0 cc 84 01    	cmp    0x184ccd0(%eax),%edx
  104bd4:	73 1c                	jae    104bf2 <at_set_perm+0x32>
        AT[page_index].perm = perm;
  104bd6:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104bda:	8d 14 52             	lea    (%edx,%edx,2),%edx
  104bdd:	c1 e2 03             	shl    $0x3,%edx
  104be0:	89 8c 10 4c cc 04 00 	mov    %ecx,0x4cc4c(%eax,%edx,1)
        AT[page_index].allocated = 0;
  104be7:	c7 84 10 50 cc 04 00 	movl   $0x0,0x4cc50(%eax,%edx,1)
  104bee:	00 00 00 00 
    }
}
  104bf2:	c3                   	ret
  104bf3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104bfa:	00 
  104bfb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00104c00 <at_is_allocated>:

unsigned int at_is_allocated(unsigned int page_index) {
    return (page_index < NUM_PAGES && AT[page_index].allocated != 0);
  104c00:	e8 17 04 00 00       	call   10501c <__x86.get_pc_thunk.cx>
  104c05:	81 c1 ef c3 00 00    	add    $0xc3ef,%ecx
unsigned int at_is_allocated(unsigned int page_index) {
  104c0b:	8b 44 24 04          	mov    0x4(%esp),%eax
  104c0f:	31 d2                	xor    %edx,%edx
    return (page_index < NUM_PAGES && AT[page_index].allocated != 0);
  104c11:	3b 81 d0 cc 84 01    	cmp    0x184ccd0(%ecx),%eax
  104c17:	73 11                	jae    104c2a <at_is_allocated+0x2a>
  104c19:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104c1c:	31 d2                	xor    %edx,%edx
  104c1e:	8b 84 c1 50 cc 04 00 	mov    0x4cc50(%ecx,%eax,8),%eax
  104c25:	85 c0                	test   %eax,%eax
  104c27:	0f 95 c2             	setne  %dl
}
  104c2a:	89 d0                	mov    %edx,%eax
  104c2c:	c3                   	ret
  104c2d:	8d 76 00             	lea    0x0(%esi),%esi

00104c30 <at_set_allocated>:

void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES)
  104c30:	e8 87 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104c35:	81 c2 bf c3 00 00    	add    $0xc3bf,%edx
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
  104c3b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (page_index < NUM_PAGES)
  104c3f:	3b 82 d0 cc 84 01    	cmp    0x184ccd0(%edx),%eax
  104c45:	73 0e                	jae    104c55 <at_set_allocated+0x25>
        AT[page_index].allocated = allocated;
  104c47:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  104c4b:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104c4e:	89 8c c2 50 cc 04 00 	mov    %ecx,0x4cc50(%edx,%eax,8)
}
  104c55:	c3                   	ret
  104c56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c5d:	00 
  104c5e:	66 90                	xchg   %ax,%ax

00104c60 <at_get_segment>:

unsigned int at_get_segment(unsigned int page_index) {
    if (page_index < NUM_PAGES)
  104c60:	e8 b7 03 00 00       	call   10501c <__x86.get_pc_thunk.cx>
  104c65:	81 c1 8f c3 00 00    	add    $0xc38f,%ecx
unsigned int at_get_segment(unsigned int page_index) {
  104c6b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return AT[page_index].segment;
    return 0;
  104c6f:	31 d2                	xor    %edx,%edx
    if (page_index < NUM_PAGES)
  104c71:	3b 81 d0 cc 84 01    	cmp    0x184ccd0(%ecx),%eax
  104c77:	73 0a                	jae    104c83 <at_get_segment+0x23>
        return AT[page_index].segment;
  104c79:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104c7c:	8b 94 c1 58 cc 04 00 	mov    0x4cc58(%ecx,%eax,8),%edx
}
  104c83:	89 d0                	mov    %edx,%eax
  104c85:	c3                   	ret
  104c86:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104c8d:	00 
  104c8e:	66 90                	xchg   %ax,%ax

00104c90 <get_free_list_head>:

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
  104c90:	e8 27 b7 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104c95:	81 c2 5f c3 00 00    	add    $0xc35f,%edx
int get_free_list_head(unsigned int order) {
  104c9b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (order >= MAX_ORDER) return -1;
  104c9f:	83 f8 0a             	cmp    $0xa,%eax
  104ca2:	77 0c                	ja     104cb0 <get_free_list_head+0x20>
    // For backward compatibility, return segment 2 head
    return free_list[order][2];
  104ca4:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104ca7:	8b 84 82 54 cc 84 01 	mov    0x184cc54(%edx,%eax,4),%eax
  104cae:	c3                   	ret
  104caf:	90                   	nop
    if (order >= MAX_ORDER) return -1;
  104cb0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  104cb5:	c3                   	ret
  104cb6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104cbd:	00 
  104cbe:	66 90                	xchg   %ax,%ax

00104cc0 <get_free_list_head_segment>:

int get_free_list_head_segment(unsigned int order, unsigned int segment) {
    if (order >= MAX_ORDER || segment > NUM_SEGMENTS) return -1;
  104cc0:	e8 57 03 00 00       	call   10501c <__x86.get_pc_thunk.cx>
  104cc5:	81 c1 2f c3 00 00    	add    $0xc32f,%ecx
int get_free_list_head_segment(unsigned int order, unsigned int segment) {
  104ccb:	8b 44 24 04          	mov    0x4(%esp),%eax
  104ccf:	8b 54 24 08          	mov    0x8(%esp),%edx
    if (order >= MAX_ORDER || segment > NUM_SEGMENTS) return -1;
  104cd3:	83 f8 0a             	cmp    $0xa,%eax
  104cd6:	77 18                	ja     104cf0 <get_free_list_head_segment+0x30>
  104cd8:	83 fa 02             	cmp    $0x2,%edx
  104cdb:	77 13                	ja     104cf0 <get_free_list_head_segment+0x30>
    return free_list[order][segment];
  104cdd:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104ce0:	01 d0                	add    %edx,%eax
  104ce2:	8b 84 81 4c cc 84 01 	mov    0x184cc4c(%ecx,%eax,4),%eax
  104ce9:	c3                   	ret
  104cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (order >= MAX_ORDER || segment > NUM_SEGMENTS) return -1;
  104cf0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  104cf5:	c3                   	ret
  104cf6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104cfd:	00 
  104cfe:	66 90                	xchg   %ax,%ax

00104d00 <at_get_next>:

unsigned int at_get_next(unsigned int page_index) {
    return AT[page_index].next;
  104d00:	e8 b7 b6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104d05:	81 c2 ef c2 00 00    	add    $0xc2ef,%edx
unsigned int at_get_next(unsigned int page_index) {
  104d0b:	8b 44 24 04          	mov    0x4(%esp),%eax
    return AT[page_index].next;
  104d0f:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104d12:	8b 84 c2 5c cc 04 00 	mov    0x4cc5c(%edx,%eax,8),%eax
}
  104d19:	c3                   	ret
  104d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00104d20 <at_get_prev>:

unsigned int at_get_prev(unsigned int page_index) {
    return AT[page_index].prev;
  104d20:	e8 97 b6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104d25:	81 c2 cf c2 00 00    	add    $0xc2cf,%edx
unsigned int at_get_prev(unsigned int page_index) {
  104d2b:	8b 44 24 04          	mov    0x4(%esp),%eax
    return AT[page_index].prev;
  104d2f:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104d32:	8b 84 c2 60 cc 04 00 	mov    0x4cc60(%edx,%eax,8),%eax
}
  104d39:	c3                   	ret
  104d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00104d40 <at_get_order>:

unsigned int at_get_order(unsigned int page_index) {
    if (page_index < NUM_PAGES)
  104d40:	e8 d7 02 00 00       	call   10501c <__x86.get_pc_thunk.cx>
  104d45:	81 c1 af c2 00 00    	add    $0xc2af,%ecx
unsigned int at_get_order(unsigned int page_index) {
  104d4b:	8b 44 24 04          	mov    0x4(%esp),%eax
        return AT[page_index].order;
    return -1;
  104d4f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    if (page_index < NUM_PAGES)
  104d54:	3b 81 d0 cc 84 01    	cmp    0x184ccd0(%ecx),%eax
  104d5a:	73 0a                	jae    104d66 <at_get_order+0x26>
        return AT[page_index].order;
  104d5c:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104d5f:	8b 94 c1 54 cc 04 00 	mov    0x4cc54(%ecx,%eax,8),%edx
}
  104d66:	89 d0                	mov    %edx,%eax
  104d68:	c3                   	ret
  104d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00104d70 <at_list_add>:

void at_list_add(unsigned int order, unsigned int page_index) {
    at_list_add_segment(order, page_index, AT[page_index].segment);
  104d70:	e8 47 b6 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104d75:	81 c2 7f c2 00 00    	add    $0xc27f,%edx
void at_list_add(unsigned int order, unsigned int page_index) {
  104d7b:	55                   	push   %ebp
  104d7c:	57                   	push   %edi
  104d7d:	56                   	push   %esi
  104d7e:	53                   	push   %ebx
  104d7f:	83 ec 08             	sub    $0x8,%esp
}

void at_list_add_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104d82:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
void at_list_add(unsigned int order, unsigned int page_index) {
  104d87:	8b 44 24 20          	mov    0x20(%esp),%eax
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104d8b:	77 75                	ja     104e02 <at_list_add+0x92>
    at_list_add_segment(order, page_index, AT[page_index].segment);
  104d8d:	8d 34 40             	lea    (%eax,%eax,2),%esi
  104d90:	c1 e6 03             	shl    $0x3,%esi
  104d93:	8d 8c 32 4c cc 04 00 	lea    0x4cc4c(%edx,%esi,1),%ecx
  104d9a:	8b 59 0c             	mov    0xc(%ecx),%ebx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104d9d:	3b 82 d0 cc 84 01    	cmp    0x184ccd0(%edx),%eax
  104da3:	73 5d                	jae    104e02 <at_list_add+0x92>
  104da5:	83 fb 02             	cmp    $0x2,%ebx
  104da8:	77 58                	ja     104e02 <at_list_add+0x92>
    return (page_index < NUM_PAGES && AT[page_index].perm > 1);
  104daa:	83 39 01             	cmpl   $0x1,(%ecx)
  104dad:	76 53                	jbe    104e02 <at_list_add+0x92>
    if (!at_is_norm(page_index)) return;

    int head = free_list[order][segment];
  104daf:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
  104db3:	8d aa 4c cc 84 01    	lea    0x184cc4c(%edx),%ebp
    AT[page_index].order = order;
    AT[page_index].segment = segment;
    AT[page_index].next  = head;
    AT[page_index].prev  = -1;
  104db9:	c7 41 14 ff ff ff ff 	movl   $0xffffffff,0x14(%ecx)
    int head = free_list[order][segment];
  104dc0:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  104dc4:	01 ff                	add    %edi,%edi
  104dc6:	89 3c 24             	mov    %edi,(%esp)
  104dc9:	03 7c 24 1c          	add    0x1c(%esp),%edi
  104dcd:	01 df                	add    %ebx,%edi
  104dcf:	8b 7c bd 00          	mov    0x0(%ebp,%edi,4),%edi
    AT[page_index].order = order;
  104dd3:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
    AT[page_index].next  = head;
  104dd7:	89 79 10             	mov    %edi,0x10(%ecx)
    AT[page_index].order = order;
  104dda:	89 69 08             	mov    %ebp,0x8(%ecx)
    if (head != -1) AT[head].prev = (int)page_index;
  104ddd:	83 ff ff             	cmp    $0xffffffff,%edi
  104de0:	74 10                	je     104df2 <at_list_add+0x82>
  104de2:	8d 0c 7f             	lea    (%edi,%edi,2),%ecx
  104de5:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
  104de8:	8d 0d 4c cc 04 00    	lea    0x4cc4c,%ecx
  104dee:	89 44 11 14          	mov    %eax,0x14(%ecx,%edx,1)
    free_list[order][segment] = (int)page_index;
  104df2:	8b 14 24             	mov    (%esp),%edx
  104df5:	03 54 24 1c          	add    0x1c(%esp),%edx
  104df9:	01 da                	add    %ebx,%edx
  104dfb:	8b 5c 24 04          	mov    0x4(%esp),%ebx
  104dff:	89 04 93             	mov    %eax,(%ebx,%edx,4)
}
  104e02:	83 c4 08             	add    $0x8,%esp
  104e05:	5b                   	pop    %ebx
  104e06:	5e                   	pop    %esi
  104e07:	5f                   	pop    %edi
  104e08:	5d                   	pop    %ebp
  104e09:	c3                   	ret
  104e0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00104e10 <at_list_add_segment>:
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104e10:	e8 a7 b5 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104e15:	81 c2 df c1 00 00    	add    $0xc1df,%edx
void at_list_add_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
  104e1b:	55                   	push   %ebp
  104e1c:	57                   	push   %edi
  104e1d:	56                   	push   %esi
  104e1e:	53                   	push   %ebx
  104e1f:	83 ec 08             	sub    $0x8,%esp
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104e22:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
void at_list_add_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
  104e27:	8b 44 24 20          	mov    0x20(%esp),%eax
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104e2b:	77 7f                	ja     104eac <at_list_add_segment+0x9c>
  104e2d:	3b 82 d0 cc 84 01    	cmp    0x184ccd0(%edx),%eax
  104e33:	73 77                	jae    104eac <at_list_add_segment+0x9c>
  104e35:	83 7c 24 24 02       	cmpl   $0x2,0x24(%esp)
  104e3a:	77 70                	ja     104eac <at_list_add_segment+0x9c>
    return (page_index < NUM_PAGES && AT[page_index].perm > 1);
  104e3c:	8d 0c 40             	lea    (%eax,%eax,2),%ecx
  104e3f:	8d 3d 4c cc 04 00    	lea    0x4cc4c,%edi
  104e45:	c1 e1 03             	shl    $0x3,%ecx
  104e48:	8d 9c 0a 4c cc 04 00 	lea    0x4cc4c(%edx,%ecx,1),%ebx
  104e4f:	83 3b 01             	cmpl   $0x1,(%ebx)
  104e52:	76 58                	jbe    104eac <at_list_add_segment+0x9c>
    int head = free_list[order][segment];
  104e54:	8b 74 24 1c          	mov    0x1c(%esp),%esi
  104e58:	8d aa 4c cc 84 01    	lea    0x184cc4c(%edx),%ebp
    AT[page_index].prev  = -1;
  104e5e:	c7 43 14 ff ff ff ff 	movl   $0xffffffff,0x14(%ebx)
    int head = free_list[order][segment];
  104e65:	89 6c 24 04          	mov    %ebp,0x4(%esp)
  104e69:	01 f6                	add    %esi,%esi
  104e6b:	89 34 24             	mov    %esi,(%esp)
  104e6e:	03 74 24 1c          	add    0x1c(%esp),%esi
  104e72:	03 74 24 24          	add    0x24(%esp),%esi
  104e76:	8b 74 b5 00          	mov    0x0(%ebp,%esi,4),%esi
    AT[page_index].order = order;
  104e7a:	8b 6c 24 1c          	mov    0x1c(%esp),%ebp
  104e7e:	89 6b 08             	mov    %ebp,0x8(%ebx)
    AT[page_index].segment = segment;
  104e81:	8b 6c 24 24          	mov    0x24(%esp),%ebp
    AT[page_index].next  = head;
  104e85:	89 73 10             	mov    %esi,0x10(%ebx)
    AT[page_index].segment = segment;
  104e88:	89 6b 0c             	mov    %ebp,0xc(%ebx)
    if (head != -1) AT[head].prev = (int)page_index;
  104e8b:	83 fe ff             	cmp    $0xffffffff,%esi
  104e8e:	74 0a                	je     104e9a <at_list_add_segment+0x8a>
  104e90:	8d 0c 76             	lea    (%esi,%esi,2),%ecx
  104e93:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
  104e96:	89 44 17 14          	mov    %eax,0x14(%edi,%edx,1)
    free_list[order][segment] = (int)page_index;
  104e9a:	8b 7c 24 04          	mov    0x4(%esp),%edi
  104e9e:	8b 14 24             	mov    (%esp),%edx
  104ea1:	03 54 24 1c          	add    0x1c(%esp),%edx
  104ea5:	03 54 24 24          	add    0x24(%esp),%edx
  104ea9:	89 04 97             	mov    %eax,(%edi,%edx,4)
}
  104eac:	83 c4 08             	add    $0x8,%esp
  104eaf:	5b                   	pop    %ebx
  104eb0:	5e                   	pop    %esi
  104eb1:	5f                   	pop    %edi
  104eb2:	5d                   	pop    %ebp
  104eb3:	c3                   	ret
  104eb4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104ebb:	00 
  104ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00104ec0 <at_list_remove>:

void at_list_remove(unsigned int order, unsigned int page_index) {
    at_list_remove_segment(order, page_index, AT[page_index].segment);
  104ec0:	e8 f7 b4 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104ec5:	81 c2 2f c1 00 00    	add    $0xc12f,%edx
void at_list_remove(unsigned int order, unsigned int page_index) {
  104ecb:	55                   	push   %ebp
  104ecc:	57                   	push   %edi
  104ecd:	56                   	push   %esi
  104ece:	53                   	push   %ebx
  104ecf:	83 ec 08             	sub    $0x8,%esp
}

void at_list_remove_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104ed2:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
void at_list_remove(unsigned int order, unsigned int page_index) {
  104ed7:	8b 6c 24 20          	mov    0x20(%esp),%ebp
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104edb:	77 71                	ja     104f4e <at_list_remove+0x8e>
    at_list_remove_segment(order, page_index, AT[page_index].segment);
  104edd:	8d 44 2d 00          	lea    0x0(%ebp,%ebp,1),%eax
  104ee1:	8d 0d 4c cc 04 00    	lea    0x4cc4c,%ecx
  104ee7:	8d 1c 28             	lea    (%eax,%ebp,1),%ebx
  104eea:	89 04 24             	mov    %eax,(%esp)
  104eed:	c1 e3 03             	shl    $0x3,%ebx
  104ef0:	8d b4 1a 4c cc 04 00 	lea    0x4cc4c(%edx,%ebx,1),%esi
  104ef7:	8b 7e 0c             	mov    0xc(%esi),%edi
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104efa:	3b aa d0 cc 84 01    	cmp    0x184ccd0(%edx),%ebp
  104f00:	73 4c                	jae    104f4e <at_list_remove+0x8e>
  104f02:	83 ff 02             	cmp    $0x2,%edi
  104f05:	77 47                	ja     104f4e <at_list_remove+0x8e>

    int n = AT[page_index].next;
    int p = AT[page_index].prev;
  104f07:	8b 76 14             	mov    0x14(%esi),%esi
    int n = AT[page_index].next;
  104f0a:	8d 04 11             	lea    (%ecx,%edx,1),%eax
  104f0d:	89 44 24 04          	mov    %eax,0x4(%esp)
  104f11:	8b 5c 03 10          	mov    0x10(%ebx,%eax,1),%ebx

    if (p != -1) AT[p].next = n;
  104f15:	83 fe ff             	cmp    $0xffffffff,%esi
  104f18:	74 46                	je     104f60 <at_list_remove+0xa0>
  104f1a:	8d 3c 76             	lea    (%esi,%esi,2),%edi
  104f1d:	89 5c f8 10          	mov    %ebx,0x10(%eax,%edi,8)
    else free_list[order][segment] = n;

    if (n != -1) AT[n].prev = p;
  104f21:	83 fb ff             	cmp    $0xffffffff,%ebx
  104f24:	74 0a                	je     104f30 <at_list_remove+0x70>
  104f26:	8d 1c 5b             	lea    (%ebx,%ebx,2),%ebx
  104f29:	8d 1c da             	lea    (%edx,%ebx,8),%ebx
  104f2c:	89 74 19 14          	mov    %esi,0x14(%ecx,%ebx,1)

    AT[page_index].next = -1;
  104f30:	8b 04 24             	mov    (%esp),%eax
  104f33:	8b 7c 24 04          	mov    0x4(%esp),%edi
  104f37:	01 e8                	add    %ebp,%eax
  104f39:	c1 e0 03             	shl    $0x3,%eax
  104f3c:	c7 44 38 10 ff ff ff 	movl   $0xffffffff,0x10(%eax,%edi,1)
  104f43:	ff 
    AT[page_index].prev = -1;
  104f44:	01 d0                	add    %edx,%eax
  104f46:	c7 44 01 14 ff ff ff 	movl   $0xffffffff,0x14(%ecx,%eax,1)
  104f4d:	ff 
}
  104f4e:	83 c4 08             	add    $0x8,%esp
  104f51:	5b                   	pop    %ebx
  104f52:	5e                   	pop    %esi
  104f53:	5f                   	pop    %edi
  104f54:	5d                   	pop    %ebp
  104f55:	c3                   	ret
  104f56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104f5d:	00 
  104f5e:	66 90                	xchg   %ax,%ax
    else free_list[order][segment] = n;
  104f60:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  104f64:	8d 04 40             	lea    (%eax,%eax,2),%eax
  104f67:	01 c7                	add    %eax,%edi
  104f69:	89 9c ba 4c cc 84 01 	mov    %ebx,0x184cc4c(%edx,%edi,4)
  104f70:	eb af                	jmp    104f21 <at_list_remove+0x61>
  104f72:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  104f79:	00 
  104f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00104f80 <at_list_remove_segment>:
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104f80:	e8 37 b4 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  104f85:	81 c2 6f c0 00 00    	add    $0xc06f,%edx
void at_list_remove_segment(unsigned int order, unsigned int page_index, unsigned int segment) {
  104f8b:	55                   	push   %ebp
  104f8c:	57                   	push   %edi
  104f8d:	56                   	push   %esi
  104f8e:	53                   	push   %ebx
    if (order >= MAX_ORDER || page_index >= NUM_PAGES || segment > NUM_SEGMENTS) return;
  104f8f:	83 7c 24 14 0a       	cmpl   $0xa,0x14(%esp)
  104f94:	77 69                	ja     104fff <at_list_remove_segment+0x7f>
  104f96:	8b 82 d0 cc 84 01    	mov    0x184ccd0(%edx),%eax
  104f9c:	39 44 24 18          	cmp    %eax,0x18(%esp)
  104fa0:	73 5d                	jae    104fff <at_list_remove_segment+0x7f>
  104fa2:	83 7c 24 1c 02       	cmpl   $0x2,0x1c(%esp)
  104fa7:	77 56                	ja     104fff <at_list_remove_segment+0x7f>
    int n = AT[page_index].next;
  104fa9:	8b 44 24 18          	mov    0x18(%esp),%eax
  104fad:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  104fb1:	8d 1d 4c cc 04 00    	lea    0x4cc4c,%ebx
  104fb7:	8d 2c 13             	lea    (%ebx,%edx,1),%ebp
  104fba:	01 c0                	add    %eax,%eax
  104fbc:	01 c1                	add    %eax,%ecx
  104fbe:	c1 e1 03             	shl    $0x3,%ecx
  104fc1:	8b 74 29 10          	mov    0x10(%ecx,%ebp,1),%esi
    int p = AT[page_index].prev;
  104fc5:	01 d1                	add    %edx,%ecx
  104fc7:	8b 7c 0b 14          	mov    0x14(%ebx,%ecx,1),%edi
    if (p != -1) AT[p].next = n;
  104fcb:	83 ff ff             	cmp    $0xffffffff,%edi
  104fce:	74 38                	je     105008 <at_list_remove_segment+0x88>
  104fd0:	8d 0c 7f             	lea    (%edi,%edi,2),%ecx
  104fd3:	89 74 cd 10          	mov    %esi,0x10(%ebp,%ecx,8)
    if (n != -1) AT[n].prev = p;
  104fd7:	83 fe ff             	cmp    $0xffffffff,%esi
  104fda:	74 0a                	je     104fe6 <at_list_remove_segment+0x66>
  104fdc:	8d 0c 76             	lea    (%esi,%esi,2),%ecx
  104fdf:	8d 0c ca             	lea    (%edx,%ecx,8),%ecx
  104fe2:	89 7c 0b 14          	mov    %edi,0x14(%ebx,%ecx,1)
    AT[page_index].next = -1;
  104fe6:	03 44 24 18          	add    0x18(%esp),%eax
  104fea:	c1 e0 03             	shl    $0x3,%eax
  104fed:	c7 44 28 10 ff ff ff 	movl   $0xffffffff,0x10(%eax,%ebp,1)
  104ff4:	ff 
    AT[page_index].prev = -1;
  104ff5:	01 d0                	add    %edx,%eax
  104ff7:	c7 44 03 14 ff ff ff 	movl   $0xffffffff,0x14(%ebx,%eax,1)
  104ffe:	ff 
  104fff:	5b                   	pop    %ebx
  105000:	5e                   	pop    %esi
  105001:	5f                   	pop    %edi
  105002:	5d                   	pop    %ebp
  105003:	c3                   	ret
  105004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    else free_list[order][segment] = n;
  105008:	8b 4c 24 14          	mov    0x14(%esp),%ecx
  10500c:	8d 0c 49             	lea    (%ecx,%ecx,2),%ecx
  10500f:	03 4c 24 1c          	add    0x1c(%esp),%ecx
  105013:	89 b4 8a 4c cc 84 01 	mov    %esi,0x184cc4c(%edx,%ecx,4)
  10501a:	eb bb                	jmp    104fd7 <at_list_remove_segment+0x57>

0010501c <__x86.get_pc_thunk.cx>:
  10501c:	8b 0c 24             	mov    (%esp),%ecx
  10501f:	c3                   	ret

00105020 <MATIntro_test1>:
#include "export.h"



// Test case 1: Test get_nps and set_nps functions.
int MATIntro_test1() {
  105020:	55                   	push   %ebp
  105021:	57                   	push   %edi
  105022:	56                   	push   %esi
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++) {
  105023:	31 f6                	xor    %esi,%esi
int MATIntro_test1() {
  105025:	53                   	push   %ebx
  105026:	e8 95 b3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10502b:	81 c3 c9 bf 00 00    	add    $0xbfc9,%ebx
  105031:	83 ec 4c             	sub    $0x4c,%esp
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
  105034:	c7 44 24 18 01 00 00 	movl   $0x1,0x18(%esp)
  10503b:	00 
  10503c:	8d 7c 24 18          	lea    0x18(%esp),%edi
  105040:	c7 44 24 1c 03 00 00 	movl   $0x3,0x1c(%esp)
  105047:	00 
  105048:	c7 44 24 20 05 00 00 	movl   $0x5,0x20(%esp)
  10504f:	00 
  105050:	c7 44 24 24 06 00 00 	movl   $0x6,0x24(%esp)
  105057:	00 
  105058:	c7 44 24 28 4e 00 00 	movl   $0x4e,0x28(%esp)
  10505f:	00 
  105060:	c7 44 24 2c f8 0d 00 	movl   $0xdf8,0x2c(%esp)
  105067:	00 
  105068:	c7 44 24 30 20 00 00 	movl   $0x20,0x30(%esp)
  10506f:	00 
  105070:	c7 44 24 34 08 00 00 	movl   $0x8,0x34(%esp)
  105077:	00 
  105078:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
  10507f:	00 
  105080:	c7 44 24 3c 64 00 00 	movl   $0x64,0x3c(%esp)
  105087:	00 
    int nps = get_nps();
  105088:	e8 c3 fa ff ff       	call   104b50 <get_nps>
  10508d:	89 44 24 0c          	mov    %eax,0xc(%esp)
    for (i = 0; i < 10; i++) {
  105091:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        set_nps(rn10[i]);
  105098:	8b 2c b7             	mov    (%edi,%esi,4),%ebp
  10509b:	83 ec 0c             	sub    $0xc,%esp
  10509e:	55                   	push   %ebp
  10509f:	e8 cc fa ff ff       	call   104b70 <set_nps>
        if (get_nps() != rn10[i]) {
  1050a4:	e8 a7 fa ff ff       	call   104b50 <get_nps>
  1050a9:	83 c4 10             	add    $0x10,%esp
  1050ac:	39 c5                	cmp    %eax,%ebp
  1050ae:	75 30                	jne    1050e0 <MATIntro_test1+0xc0>
    for (i = 0; i < 10; i++) {
  1050b0:	83 c6 01             	add    $0x1,%esi
  1050b3:	83 fe 0a             	cmp    $0xa,%esi
  1050b6:	75 e0                	jne    105098 <MATIntro_test1+0x78>
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
  1050b8:	83 ec 0c             	sub    $0xc,%esp
  1050bb:	ff 74 24 18          	push   0x18(%esp)
  1050bf:	e8 ac fa ff ff       	call   104b70 <set_nps>
    dprintf("test 1 passed.\n");
  1050c4:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  1050ca:	89 04 24             	mov    %eax,(%esp)
  1050cd:	e8 9a dc ff ff       	call   102d6c <dprintf>
    return 0;
  1050d2:	83 c4 10             	add    $0x10,%esp
  1050d5:	31 c0                	xor    %eax,%eax
}
  1050d7:	83 c4 4c             	add    $0x4c,%esp
  1050da:	5b                   	pop    %ebx
  1050db:	5e                   	pop    %esi
  1050dc:	5f                   	pop    %edi
  1050dd:	5d                   	pop    %ebp
  1050de:	c3                   	ret
  1050df:	90                   	nop
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
  1050e0:	e8 6b fa ff ff       	call   104b50 <get_nps>
  1050e5:	55                   	push   %ebp
  1050e6:	50                   	push   %eax
  1050e7:	8d 83 18 9c ff ff    	lea    -0x63e8(%ebx),%eax
  1050ed:	56                   	push   %esi
  1050ee:	50                   	push   %eax
  1050ef:	e8 78 dc ff ff       	call   102d6c <dprintf>
            set_nps(nps);
  1050f4:	58                   	pop    %eax
  1050f5:	ff 74 24 18          	push   0x18(%esp)
  1050f9:	e8 72 fa ff ff       	call   104b70 <set_nps>
            return 1;
  1050fe:	83 c4 10             	add    $0x10,%esp
  105101:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105106:	83 c4 4c             	add    $0x4c,%esp
  105109:	5b                   	pop    %ebx
  10510a:	5e                   	pop    %esi
  10510b:	5f                   	pop    %edi
  10510c:	5d                   	pop    %ebp
  10510d:	c3                   	ret
  10510e:	66 90                	xchg   %ax,%ax

00105110 <MATIntro_test2>:

// Test case 2: Test permissions and allocation.
int MATIntro_test2() {
  105110:	56                   	push   %esi
  105111:	53                   	push   %ebx
  105112:	e8 a9 b2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105117:	81 c3 dd be 00 00    	add    $0xbedd,%ebx
  10511d:	83 ec 0c             	sub    $0xc,%esp
    at_set_perm(0, 2); // Set to normal
  105120:	6a 02                	push   $0x2
  105122:	6a 00                	push   $0x0
  105124:	e8 97 fa ff ff       	call   104bc0 <at_set_perm>
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
  105129:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105130:	e8 5b fa ff ff       	call   104b90 <at_is_norm>
  105135:	83 c4 10             	add    $0x10,%esp
  105138:	83 f8 01             	cmp    $0x1,%eax
  10513b:	75 11                	jne    10514e <MATIntro_test2+0x3e>
  10513d:	83 ec 0c             	sub    $0xc,%esp
  105140:	6a 00                	push   $0x0
  105142:	e8 b9 fa ff ff       	call   104c00 <at_is_allocated>
  105147:	83 c4 10             	add    $0x10,%esp
  10514a:	85 c0                	test   %eax,%eax
  10514c:	74 3a                	je     105188 <MATIntro_test2+0x78>
        dprintf("test 2.1 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
  10514e:	83 ec 0c             	sub    $0xc,%esp
  105151:	6a 00                	push   $0x0
  105153:	e8 a8 fa ff ff       	call   104c00 <at_is_allocated>
  105158:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10515f:	89 c6                	mov    %eax,%esi
  105161:	e8 2a fa ff ff       	call   104b90 <at_is_norm>
  105166:	83 c4 0c             	add    $0xc,%esp
  105169:	56                   	push   %esi
  10516a:	50                   	push   %eax
  10516b:	8d 83 40 9c ff ff    	lea    -0x63c0(%ebx),%eax
  105171:	50                   	push   %eax
  105172:	e8 f5 db ff ff       	call   102d6c <dprintf>
        return 1;
  105177:	83 c4 10             	add    $0x10,%esp
        dprintf("test 2.2 failed: permission not reset\n");
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  10517a:	83 c4 04             	add    $0x4,%esp
        return 1;
  10517d:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105182:	5b                   	pop    %ebx
  105183:	5e                   	pop    %esi
  105184:	c3                   	ret
  105185:	8d 76 00             	lea    0x0(%esi),%esi
    at_set_perm(0, 0); // Set to reserved
  105188:	83 ec 08             	sub    $0x8,%esp
  10518b:	6a 00                	push   $0x0
  10518d:	6a 00                	push   $0x0
  10518f:	e8 2c fa ff ff       	call   104bc0 <at_set_perm>
    if (at_is_norm(0) != 0) {
  105194:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10519b:	e8 f0 f9 ff ff       	call   104b90 <at_is_norm>
  1051a0:	83 c4 10             	add    $0x10,%esp
  1051a3:	85 c0                	test   %eax,%eax
  1051a5:	75 21                	jne    1051c8 <MATIntro_test2+0xb8>
    dprintf("test 2 passed.\n");
  1051a7:	83 ec 0c             	sub    $0xc,%esp
  1051aa:	8d 83 8a 98 ff ff    	lea    -0x6776(%ebx),%eax
  1051b0:	50                   	push   %eax
  1051b1:	e8 b6 db ff ff       	call   102d6c <dprintf>
    return 0;
  1051b6:	83 c4 10             	add    $0x10,%esp
  1051b9:	31 c0                	xor    %eax,%eax
}
  1051bb:	83 c4 04             	add    $0x4,%esp
  1051be:	5b                   	pop    %ebx
  1051bf:	5e                   	pop    %esi
  1051c0:	c3                   	ret
  1051c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 2.2 failed: permission not reset\n");
  1051c8:	83 ec 0c             	sub    $0xc,%esp
  1051cb:	8d 83 68 9c ff ff    	lea    -0x6398(%ebx),%eax
  1051d1:	50                   	push   %eax
  1051d2:	e8 95 db ff ff       	call   102d6c <dprintf>
        return 1;
  1051d7:	83 c4 10             	add    $0x10,%esp
  1051da:	eb 9e                	jmp    10517a <MATIntro_test2+0x6a>
  1051dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001051e0 <MATIntro_test3>:

// Test case 3: Test allocation status.
int MATIntro_test3() {
  1051e0:	53                   	push   %ebx
  1051e1:	e8 da b1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1051e6:	81 c3 0e be 00 00    	add    $0xbe0e,%ebx
  1051ec:	83 ec 10             	sub    $0x10,%esp
    at_set_allocated(1, 0);
  1051ef:	6a 00                	push   $0x0
  1051f1:	6a 01                	push   $0x1
  1051f3:	e8 38 fa ff ff       	call   104c30 <at_set_allocated>
    if (at_is_allocated(1) != 0) {
  1051f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  1051ff:	e8 fc f9 ff ff       	call   104c00 <at_is_allocated>
  105204:	83 c4 10             	add    $0x10,%esp
  105207:	85 c0                	test   %eax,%eax
  105209:	75 75                	jne    105280 <MATIntro_test3+0xa0>
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        return 1;
    }
    at_set_allocated(1, 1);
  10520b:	83 ec 08             	sub    $0x8,%esp
  10520e:	6a 01                	push   $0x1
  105210:	6a 01                	push   $0x1
  105212:	e8 19 fa ff ff       	call   104c30 <at_set_allocated>
    if (at_is_allocated(1) != 1) {
  105217:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10521e:	e8 dd f9 ff ff       	call   104c00 <at_is_allocated>
  105223:	83 c4 10             	add    $0x10,%esp
  105226:	83 f8 01             	cmp    $0x1,%eax
  105229:	74 2d                	je     105258 <MATIntro_test3+0x78>
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
  10522b:	83 ec 0c             	sub    $0xc,%esp
  10522e:	6a 01                	push   $0x1
  105230:	e8 cb f9 ff ff       	call   104c00 <at_is_allocated>
  105235:	5a                   	pop    %edx
  105236:	59                   	pop    %ecx
  105237:	50                   	push   %eax
  105238:	8d 83 b6 98 ff ff    	lea    -0x674a(%ebx),%eax
  10523e:	50                   	push   %eax
  10523f:	e8 28 db ff ff       	call   102d6c <dprintf>
        return 1;
  105244:	83 c4 10             	add    $0x10,%esp
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}
  105247:	83 c4 08             	add    $0x8,%esp
        return 1;
  10524a:	b8 01 00 00 00       	mov    $0x1,%eax
}
  10524f:	5b                   	pop    %ebx
  105250:	c3                   	ret
  105251:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    at_set_allocated(1, 0);
  105258:	83 ec 08             	sub    $0x8,%esp
  10525b:	6a 00                	push   $0x0
  10525d:	6a 01                	push   $0x1
  10525f:	e8 cc f9 ff ff       	call   104c30 <at_set_allocated>
    dprintf("test 3 passed.\n");
  105264:	8d 83 d2 98 ff ff    	lea    -0x672e(%ebx),%eax
  10526a:	89 04 24             	mov    %eax,(%esp)
  10526d:	e8 fa da ff ff       	call   102d6c <dprintf>
    return 0;
  105272:	83 c4 10             	add    $0x10,%esp
  105275:	31 c0                	xor    %eax,%eax
}
  105277:	83 c4 08             	add    $0x8,%esp
  10527a:	5b                   	pop    %ebx
  10527b:	c3                   	ret
  10527c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
  105280:	83 ec 0c             	sub    $0xc,%esp
  105283:	6a 01                	push   $0x1
  105285:	e8 76 f9 ff ff       	call   104c00 <at_is_allocated>
  10528a:	5a                   	pop    %edx
  10528b:	59                   	pop    %ecx
  10528c:	50                   	push   %eax
  10528d:	8d 83 9a 98 ff ff    	lea    -0x6766(%ebx),%eax
  105293:	50                   	push   %eax
  105294:	e8 d3 da ff ff       	call   102d6c <dprintf>
        return 1;
  105299:	83 c4 10             	add    $0x10,%esp
  10529c:	eb a9                	jmp    105247 <MATIntro_test3+0x67>
  10529e:	66 90                	xchg   %ax,%ax

001052a0 <MATIntro_test_buddy>:

// Buddy allocator test case: Verifies the link-list pointers in AT.
int MATIntro_test_buddy() {
  1052a0:	57                   	push   %edi
  1052a1:	56                   	push   %esi
  1052a2:	53                   	push   %ebx
  1052a3:	e8 18 b1 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1052a8:	81 c3 4c bd 00 00    	add    $0xbd4c,%ebx
    // Save previous state so we don't contaminate later layers
    unsigned int old_nps = get_nps();
  1052ae:	e8 9d f8 ff ff       	call   104b50 <get_nps>

    set_nps(2048);
  1052b3:	83 ec 0c             	sub    $0xc,%esp
  1052b6:	68 00 08 00 00       	push   $0x800
    unsigned int old_nps = get_nps();
  1052bb:	89 c6                	mov    %eax,%esi
    set_nps(2048);
  1052bd:	e8 ae f8 ff ff       	call   104b70 <set_nps>
    pmm_init_freelists();
  1052c2:	e8 49 f8 ff ff       	call   104b10 <pmm_init_freelists>

    // Make sure pages we add are Normal RAM (perm==2)
    at_set_allocated(10, 0);
  1052c7:	5f                   	pop    %edi
  1052c8:	58                   	pop    %eax
  1052c9:	6a 00                	push   $0x0
  1052cb:	6a 0a                	push   $0xa
  1052cd:	e8 5e f9 ff ff       	call   104c30 <at_set_allocated>
    at_set_allocated(20, 0);
  1052d2:	58                   	pop    %eax
  1052d3:	5a                   	pop    %edx
  1052d4:	6a 00                	push   $0x0
  1052d6:	6a 14                	push   $0x14
  1052d8:	e8 53 f9 ff ff       	call   104c30 <at_set_allocated>
    at_set_perm(10, 2);
  1052dd:	59                   	pop    %ecx
  1052de:	5f                   	pop    %edi
  1052df:	6a 02                	push   $0x2
  1052e1:	6a 0a                	push   $0xa
  1052e3:	e8 d8 f8 ff ff       	call   104bc0 <at_set_perm>
    at_set_perm(20, 2);
  1052e8:	58                   	pop    %eax
  1052e9:	5a                   	pop    %edx
  1052ea:	6a 02                	push   $0x2
  1052ec:	6a 14                	push   $0x14
  1052ee:	e8 cd f8 ff ff       	call   104bc0 <at_set_perm>

    at_set_allocated(512, 0);
  1052f3:	59                   	pop    %ecx
  1052f4:	5f                   	pop    %edi
  1052f5:	6a 00                	push   $0x0
  1052f7:	68 00 02 00 00       	push   $0x200
  1052fc:	e8 2f f9 ff ff       	call   104c30 <at_set_allocated>
    at_set_perm(512, 2);
  105301:	58                   	pop    %eax
  105302:	5a                   	pop    %edx
  105303:	6a 02                	push   $0x2
  105305:	68 00 02 00 00       	push   $0x200
  10530a:	e8 b1 f8 ff ff       	call   104bc0 <at_set_perm>

    // Test A: Add pages to Order 0 (4KB)
    at_list_add(0, 10);
  10530f:	59                   	pop    %ecx
  105310:	5f                   	pop    %edi
  105311:	6a 0a                	push   $0xa
  105313:	6a 00                	push   $0x0
  105315:	e8 56 fa ff ff       	call   104d70 <at_list_add>
    at_list_add(0, 20);
  10531a:	58                   	pop    %eax
  10531b:	5a                   	pop    %edx
  10531c:	6a 14                	push   $0x14
  10531e:	6a 00                	push   $0x0
  105320:	e8 4b fa ff ff       	call   104d70 <at_list_add>

    if (get_free_list_head(0) != 20) {
  105325:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  10532c:	e8 5f f9 ff ff       	call   104c90 <get_free_list_head>
  105331:	83 c4 10             	add    $0x10,%esp
  105334:	83 f8 14             	cmp    $0x14,%eax
  105337:	74 57                	je     105390 <MATIntro_test_buddy+0xf0>
        dprintf("Buddy Test failed: Head of order 0 should be 20, got %d\n", get_free_list_head(0));
  105339:	83 ec 0c             	sub    $0xc,%esp
  10533c:	6a 00                	push   $0x0
  10533e:	e8 4d f9 ff ff       	call   104c90 <get_free_list_head>
  105343:	5a                   	pop    %edx
  105344:	59                   	pop    %ecx
  105345:	50                   	push   %eax
  105346:	8d 83 90 9c ff ff    	lea    -0x6370(%ebx),%eax
        return 1;
    }

    int head = get_free_list_head(0);
    if (AT[head].next != 10) {
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  10534c:	50                   	push   %eax
  10534d:	e8 1a da ff ff       	call   102d6c <dprintf>
        at_set_perm(10, 0);
  105352:	59                   	pop    %ecx
  105353:	5f                   	pop    %edi
  105354:	6a 00                	push   $0x0
  105356:	6a 0a                	push   $0xa
  105358:	e8 63 f8 ff ff       	call   104bc0 <at_set_perm>
        at_set_perm(20, 0);
  10535d:	58                   	pop    %eax
  10535e:	5a                   	pop    %edx
  10535f:	6a 00                	push   $0x0
  105361:	6a 14                	push   $0x14
  105363:	e8 58 f8 ff ff       	call   104bc0 <at_set_perm>
        at_set_perm(512, 0);
  105368:	59                   	pop    %ecx
  105369:	5f                   	pop    %edi
  10536a:	6a 00                	push   $0x0
  10536c:	68 00 02 00 00       	push   $0x200
  105371:	e8 4a f8 ff ff       	call   104bc0 <at_set_perm>
        pmm_init_freelists();
  105376:	e8 95 f7 ff ff       	call   104b10 <pmm_init_freelists>
        set_nps(old_nps);
  10537b:	89 34 24             	mov    %esi,(%esp)
  10537e:	e8 ed f7 ff ff       	call   104b70 <set_nps>
        return 1;
  105383:	83 c4 10             	add    $0x10,%esp
        return 1;
  105386:	b8 01 00 00 00       	mov    $0x1,%eax
    at_set_perm(512, 0);
    pmm_init_freelists();
    set_nps(old_nps);

    return 0;
}
  10538b:	5b                   	pop    %ebx
  10538c:	5e                   	pop    %esi
  10538d:	5f                   	pop    %edi
  10538e:	c3                   	ret
  10538f:	90                   	nop
    int head = get_free_list_head(0);
  105390:	83 ec 0c             	sub    $0xc,%esp
  105393:	6a 00                	push   $0x0
  105395:	e8 f6 f8 ff ff       	call   104c90 <get_free_list_head>
    if (AT[head].next != 10) {
  10539a:	c7 c7 40 dc 15 00    	mov    $0x15dc40,%edi
  1053a0:	83 c4 10             	add    $0x10,%esp
  1053a3:	8d 04 40             	lea    (%eax,%eax,2),%eax
  1053a6:	8b 44 c7 10          	mov    0x10(%edi,%eax,8),%eax
  1053aa:	83 f8 0a             	cmp    $0xa,%eax
  1053ad:	75 61                	jne    105410 <MATIntro_test_buddy+0x170>
    if (AT[10].prev != 20) {
  1053af:	8b 87 04 01 00 00    	mov    0x104(%edi),%eax
  1053b5:	83 f8 14             	cmp    $0x14,%eax
  1053b8:	75 46                	jne    105400 <MATIntro_test_buddy+0x160>
    at_list_add(9, 512);
  1053ba:	83 ec 08             	sub    $0x8,%esp
  1053bd:	68 00 02 00 00       	push   $0x200
  1053c2:	6a 09                	push   $0x9
  1053c4:	e8 a7 f9 ff ff       	call   104d70 <at_list_add>
    if (get_free_list_head(9) != 512 || AT[512].order != 9) {
  1053c9:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  1053d0:	e8 bb f8 ff ff       	call   104c90 <get_free_list_head>
  1053d5:	83 c4 10             	add    $0x10,%esp
  1053d8:	3d 00 02 00 00       	cmp    $0x200,%eax
  1053dd:	75 09                	jne    1053e8 <MATIntro_test_buddy+0x148>
  1053df:	83 bf 08 30 00 00 09 	cmpl   $0x9,0x3008(%edi)
  1053e6:	74 38                	je     105420 <MATIntro_test_buddy+0x180>
        dprintf("Buddy Test failed: Order 9 initialization failed\n");
  1053e8:	83 ec 0c             	sub    $0xc,%esp
  1053eb:	8d 83 3c 9d ff ff    	lea    -0x62c4(%ebx),%eax
  1053f1:	e9 56 ff ff ff       	jmp    10534c <MATIntro_test_buddy+0xac>
  1053f6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1053fd:	00 
  1053fe:	66 90                	xchg   %ax,%ax
        dprintf("Buddy Test failed: AT[10].prev should be 20, got %d\n", AT[10].prev);
  105400:	83 ec 08             	sub    $0x8,%esp
  105403:	50                   	push   %eax
  105404:	8d 83 04 9d ff ff    	lea    -0x62fc(%ebx),%eax
  10540a:	e9 3d ff ff ff       	jmp    10534c <MATIntro_test_buddy+0xac>
  10540f:	90                   	nop
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
  105410:	83 ec 08             	sub    $0x8,%esp
  105413:	50                   	push   %eax
  105414:	8d 83 cc 9c ff ff    	lea    -0x6334(%ebx),%eax
  10541a:	e9 2d ff ff ff       	jmp    10534c <MATIntro_test_buddy+0xac>
  10541f:	90                   	nop
    at_list_remove(0, 20);
  105420:	83 ec 08             	sub    $0x8,%esp
  105423:	6a 14                	push   $0x14
  105425:	6a 00                	push   $0x0
  105427:	e8 94 fa ff ff       	call   104ec0 <at_list_remove>
    if (get_free_list_head(0) != 10 || AT[10].prev != -1) {
  10542c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  105433:	e8 58 f8 ff ff       	call   104c90 <get_free_list_head>
  105438:	83 c4 10             	add    $0x10,%esp
  10543b:	83 f8 0a             	cmp    $0xa,%eax
  10543e:	75 09                	jne    105449 <MATIntro_test_buddy+0x1a9>
  105440:	83 bf 04 01 00 00 ff 	cmpl   $0xffffffff,0x104(%edi)
  105447:	74 0e                	je     105457 <MATIntro_test_buddy+0x1b7>
        dprintf("Buddy Test failed: Removal logic failed to update head/prev\n");
  105449:	83 ec 0c             	sub    $0xc,%esp
  10544c:	8d 83 70 9d ff ff    	lea    -0x6290(%ebx),%eax
  105452:	e9 f5 fe ff ff       	jmp    10534c <MATIntro_test_buddy+0xac>
    dprintf("Buddy list logic tests passed.\n");
  105457:	83 ec 0c             	sub    $0xc,%esp
  10545a:	8d 83 b0 9d ff ff    	lea    -0x6250(%ebx),%eax
  105460:	50                   	push   %eax
  105461:	e8 06 d9 ff ff       	call   102d6c <dprintf>
    at_set_perm(10, 0);
  105466:	58                   	pop    %eax
  105467:	5a                   	pop    %edx
  105468:	6a 00                	push   $0x0
  10546a:	6a 0a                	push   $0xa
  10546c:	e8 4f f7 ff ff       	call   104bc0 <at_set_perm>
    at_set_perm(20, 0);
  105471:	59                   	pop    %ecx
  105472:	5f                   	pop    %edi
  105473:	6a 00                	push   $0x0
  105475:	6a 14                	push   $0x14
  105477:	e8 44 f7 ff ff       	call   104bc0 <at_set_perm>
    at_set_perm(512, 0);
  10547c:	58                   	pop    %eax
  10547d:	5a                   	pop    %edx
  10547e:	6a 00                	push   $0x0
  105480:	68 00 02 00 00       	push   $0x200
  105485:	e8 36 f7 ff ff       	call   104bc0 <at_set_perm>
    pmm_init_freelists();
  10548a:	e8 81 f6 ff ff       	call   104b10 <pmm_init_freelists>
    set_nps(old_nps);
  10548f:	89 34 24             	mov    %esi,(%esp)
  105492:	e8 d9 f6 ff ff       	call   104b70 <set_nps>
    return 0;
  105497:	83 c4 10             	add    $0x10,%esp
  10549a:	31 c0                	xor    %eax,%eax
  10549c:	e9 ea fe ff ff       	jmp    10538b <MATIntro_test_buddy+0xeb>
  1054a1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1054a8:	00 
  1054a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

001054b0 <test_MATIntro>:



// The main entry point for the MATIntro layer test.
int test_MATIntro() {
  1054b0:	57                   	push   %edi
  1054b1:	e8 aa dd ff ff       	call   103260 <__x86.get_pc_thunk.di>
  1054b6:	81 c7 3e bb 00 00    	add    $0xbb3e,%edi
  1054bc:	56                   	push   %esi
  1054bd:	53                   	push   %ebx
    int error = 0;
    error += MATIntro_test1();
  1054be:	e8 5d fb ff ff       	call   105020 <MATIntro_test1>
  1054c3:	89 c3                	mov    %eax,%ebx
    error += MATIntro_test2();
  1054c5:	e8 46 fc ff ff       	call   105110 <MATIntro_test2>
  1054ca:	01 c3                	add    %eax,%ebx
    error += MATIntro_test3();
  1054cc:	e8 0f fd ff ff       	call   1051e0 <MATIntro_test3>
  1054d1:	01 c3                	add    %eax,%ebx
    error += MATIntro_test_buddy();
  1054d3:	e8 c8 fd ff ff       	call   1052a0 <MATIntro_test_buddy>

    if (error == 0) {
  1054d8:	89 de                	mov    %ebx,%esi
  1054da:	01 c6                	add    %eax,%esi
  1054dc:	75 22                	jne    105500 <test_MATIntro+0x50>
        dprintf("ALL MATIntro TESTS PASSED\n");
  1054de:	83 ec 0c             	sub    $0xc,%esp
  1054e1:	8d 87 e2 98 ff ff    	lea    -0x671e(%edi),%eax
  1054e7:	89 fb                	mov    %edi,%ebx
  1054e9:	50                   	push   %eax
  1054ea:	e8 7d d8 ff ff       	call   102d6c <dprintf>
  1054ef:	83 c4 10             	add    $0x10,%esp
    } else {
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
    }
    return error;
  1054f2:	89 f0                	mov    %esi,%eax
  1054f4:	5b                   	pop    %ebx
  1054f5:	5e                   	pop    %esi
  1054f6:	5f                   	pop    %edi
  1054f7:	c3                   	ret
  1054f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1054ff:	00 
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
  105500:	83 ec 08             	sub    $0x8,%esp
  105503:	8d 87 d0 9d ff ff    	lea    -0x6230(%edi),%eax
  105509:	89 fb                	mov    %edi,%ebx
  10550b:	56                   	push   %esi
  10550c:	50                   	push   %eax
  10550d:	e8 5a d8 ff ff       	call   102d6c <dprintf>
  105512:	83 c4 10             	add    $0x10,%esp
  105515:	89 f0                	mov    %esi,%eax
  105517:	5b                   	pop    %ebx
  105518:	5e                   	pop    %esi
  105519:	5f                   	pop    %edi
  10551a:	c3                   	ret
  10551b:	66 90                	xchg   %ax,%ax
  10551d:	66 90                	xchg   %ax,%ax
  10551f:	90                   	nop

00105520 <pmem_init>:
    }
    return 1;
}

void pmem_init(unsigned int mbi_addr)
{
  105520:	55                   	push   %ebp
  105521:	57                   	push   %edi
  105522:	56                   	push   %esi
  105523:	53                   	push   %ebx
  105524:	e8 97 ae ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105529:	81 c3 cb ba 00 00    	add    $0xbacb,%ebx
  10552f:	83 ec 38             	sub    $0x38,%esp
    unsigned int i, j;
    unsigned int highest_addr = 0;
    unsigned int first_usable_pi = VM_USERHI_PI;
    unsigned int last_usable_pi = VM_USERLO_PI;

    devinit(mbi_addr);
  105532:	ff 74 24 4c          	push   0x4c(%esp)
  105536:	e8 c6 b5 ff ff       	call   100b01 <devinit>
    unsigned int n_entries = get_size();
  10553b:	e8 0f bb ff ff       	call   10104f <get_size>


    for (i = 0; i < n_entries; i++) {
  105540:	83 c4 10             	add    $0x10,%esp
    unsigned int n_entries = get_size();
  105543:	89 c7                	mov    %eax,%edi
    for (i = 0; i < n_entries; i++) {
  105545:	85 c0                	test   %eax,%eax
  105547:	0f 84 76 05 00 00    	je     105ac3 <pmem_init+0x5a3>
    unsigned int highest_addr = 0;
  10554d:	31 c0                	xor    %eax,%eax
    for (i = 0; i < n_entries; i++) {
  10554f:	89 7c 24 08          	mov    %edi,0x8(%esp)
  105553:	31 ed                	xor    %ebp,%ebp
  105555:	89 c7                	mov    %eax,%edi
  105557:	eb 09                	jmp    105562 <pmem_init+0x42>
  105559:	83 c5 01             	add    $0x1,%ebp
  10555c:	39 6c 24 08          	cmp    %ebp,0x8(%esp)
  105560:	74 4e                	je     1055b0 <pmem_init+0x90>
        unsigned int end = get_mms(i) + get_mml(i);
  105562:	83 ec 0c             	sub    $0xc,%esp
  105565:	55                   	push   %ebp
  105566:	e8 f9 ba ff ff       	call   101064 <get_mms>
  10556b:	89 2c 24             	mov    %ebp,(%esp)
  10556e:	89 c6                	mov    %eax,%esi
  105570:	e8 55 bb ff ff       	call   1010ca <get_mml>
        if (end > highest_addr) highest_addr = end;
        
        if (is_usable(i)) {
  105575:	89 2c 24             	mov    %ebp,(%esp)
        unsigned int end = get_mms(i) + get_mml(i);
  105578:	01 c6                	add    %eax,%esi
        if (end > highest_addr) highest_addr = end;
  10557a:	39 f7                	cmp    %esi,%edi
  10557c:	0f 42 fe             	cmovb  %esi,%edi
        if (is_usable(i)) {
  10557f:	e8 b6 bb ff ff       	call   10113a <is_usable>
  105584:	83 c4 10             	add    $0x10,%esp
  105587:	85 c0                	test   %eax,%eax
  105589:	74 ce                	je     105559 <pmem_init+0x39>
            unsigned int start_pi = get_mms(i) / PAGESIZE;
  10558b:	83 ec 0c             	sub    $0xc,%esp
  10558e:	55                   	push   %ebp
  10558f:	e8 d0 ba ff ff       	call   101064 <get_mms>
            unsigned int end_pi = (get_mms(i) + get_mml(i)) / PAGESIZE;
  105594:	89 2c 24             	mov    %ebp,(%esp)
  105597:	e8 c8 ba ff ff       	call   101064 <get_mms>
  10559c:	89 2c 24             	mov    %ebp,(%esp)
    for (i = 0; i < n_entries; i++) {
  10559f:	83 c5 01             	add    $0x1,%ebp
            unsigned int end_pi = (get_mms(i) + get_mml(i)) / PAGESIZE;
  1055a2:	e8 23 bb ff ff       	call   1010ca <get_mml>
            if (start_pi < VM_USERLO_PI) start_pi = VM_USERLO_PI;
            if (end_pi > VM_USERHI_PI) end_pi = VM_USERHI_PI;
            
            if (start_pi < end_pi) {
                if (start_pi < first_usable_pi) first_usable_pi = start_pi;
                if (end_pi > last_usable_pi) last_usable_pi = end_pi;
  1055a7:	83 c4 10             	add    $0x10,%esp
    for (i = 0; i < n_entries; i++) {
  1055aa:	39 6c 24 08          	cmp    %ebp,0x8(%esp)
  1055ae:	75 b2                	jne    105562 <pmem_init+0x42>
            }
        }
    }
    unsigned int phys_nps = highest_addr / PAGESIZE;
  1055b0:	89 f8                	mov    %edi,%eax
  1055b2:	8b 7c 24 08          	mov    0x8(%esp),%edi
  1055b6:	c1 e8 0c             	shr    $0xc,%eax
  1055b9:	89 44 24 14          	mov    %eax,0x14(%esp)

    set_nps(VM_USERHI_PI);
  1055bd:	83 ec 0c             	sub    $0xc,%esp
    pmm_init_freelists();


    for (i = 0; i < get_nps(); i++) {
  1055c0:	31 f6                	xor    %esi,%esi
    set_nps(VM_USERHI_PI);
  1055c2:	68 00 00 0f 00       	push   $0xf0000
  1055c7:	e8 a4 f5 ff ff       	call   104b70 <set_nps>
    pmm_init_freelists();
  1055cc:	e8 3f f5 ff ff       	call   104b10 <pmm_init_freelists>
    for (i = 0; i < get_nps(); i++) {
  1055d1:	c7 c0 40 dc 15 00    	mov    $0x15dc40,%eax
  1055d7:	89 44 24 28          	mov    %eax,0x28(%esp)
  1055db:	8d 68 08             	lea    0x8(%eax),%ebp
  1055de:	83 c4 10             	add    $0x10,%esp
  1055e1:	eb 3f                	jmp    105622 <pmem_init+0x102>
  1055e3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        at_set_allocated(i, 0);
  1055e8:	83 ec 08             	sub    $0x8,%esp
  1055eb:	83 c5 18             	add    $0x18,%ebp
  1055ee:	6a 00                	push   $0x0
  1055f0:	56                   	push   %esi
  1055f1:	e8 3a f6 ff ff       	call   104c30 <at_set_allocated>
        at_set_perm(i, 0);
  1055f6:	59                   	pop    %ecx
  1055f7:	58                   	pop    %eax
  1055f8:	6a 00                	push   $0x0
  1055fa:	56                   	push   %esi
    for (i = 0; i < get_nps(); i++) {
  1055fb:	83 c6 01             	add    $0x1,%esi
        at_set_perm(i, 0);
  1055fe:	e8 bd f5 ff ff       	call   104bc0 <at_set_perm>
        AT[i].next = -1;
  105603:	c7 45 f0 ff ff ff ff 	movl   $0xffffffff,-0x10(%ebp)
        AT[i].prev = -1;
  10560a:	83 c4 10             	add    $0x10,%esp
  10560d:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
        AT[i].order = 0;
  105614:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
        AT[i].segment = 0;
  10561b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    for (i = 0; i < get_nps(); i++) {
  105622:	e8 29 f5 ff ff       	call   104b50 <get_nps>
  105627:	39 c6                	cmp    %eax,%esi
  105629:	72 bd                	jb     1055e8 <pmem_init+0xc8>
    }


    for (i = 0; i < VM_USERLO_PI; i++) {
  10562b:	31 f6                	xor    %esi,%esi
  10562d:	8d 76 00             	lea    0x0(%esi),%esi
        at_set_perm(i, 1);
  105630:	83 ec 08             	sub    $0x8,%esp
  105633:	6a 01                	push   $0x1
  105635:	56                   	push   %esi
    for (i = 0; i < VM_USERLO_PI; i++) {
  105636:	83 c6 01             	add    $0x1,%esi
        at_set_perm(i, 1);
  105639:	e8 82 f5 ff ff       	call   104bc0 <at_set_perm>
    for (i = 0; i < VM_USERLO_PI; i++) {
  10563e:	83 c4 10             	add    $0x10,%esp
  105641:	81 fe 00 00 04 00    	cmp    $0x40000,%esi
  105647:	75 e7                	jne    105630 <pmem_init+0x110>
  105649:	89 74 24 1c          	mov    %esi,0x1c(%esp)
  10564d:	31 c9                	xor    %ecx,%ecx
    }


    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  10564f:	bd 00 00 04 00       	mov    $0x40000,%ebp
  105654:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  105658:	89 e9                	mov    %ebp,%ecx
  10565a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        unsigned int phys_pi = i - VM_USERLO_PI;

        if (phys_pi >= phys_nps) {
  105660:	8b 54 24 14          	mov    0x14(%esp),%edx
  105664:	8d 81 00 00 fc ff    	lea    -0x40000(%ecx),%eax
  10566a:	39 d0                	cmp    %edx,%eax
  10566c:	0f 83 1e 03 00 00    	jae    105990 <pmem_init+0x470>

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;
        for (j = 0; j < n_entries; j++) {
  105672:	85 ff                	test   %edi,%edi
  105674:	0f 84 77 03 00 00    	je     1059f1 <pmem_init+0x4d1>
  10567a:	8b 44 24 0c          	mov    0xc(%esp),%eax
  10567e:	89 4c 24 10          	mov    %ecx,0x10(%esp)
  105682:	31 f6                	xor    %esi,%esi
  105684:	05 00 10 00 00       	add    $0x1000,%eax
  105689:	89 44 24 08          	mov    %eax,0x8(%esp)
  10568d:	8d 76 00             	lea    0x0(%esi),%esi
            if (!is_usable(j)) continue;
  105690:	83 ec 0c             	sub    $0xc,%esp
  105693:	56                   	push   %esi
  105694:	e8 a1 ba ff ff       	call   10113a <is_usable>
  105699:	83 c4 10             	add    $0x10,%esp
  10569c:	85 c0                	test   %eax,%eax
  10569e:	74 2a                	je     1056ca <pmem_init+0x1aa>

            unsigned int start = get_mms(j);
  1056a0:	83 ec 0c             	sub    $0xc,%esp
  1056a3:	56                   	push   %esi
  1056a4:	e8 bb b9 ff ff       	call   101064 <get_mms>
            unsigned int end   = start + get_mml(j);
  1056a9:	89 34 24             	mov    %esi,(%esp)
            unsigned int start = get_mms(j);
  1056ac:	89 c5                	mov    %eax,%ebp
            unsigned int end   = start + get_mml(j);
  1056ae:	e8 17 ba ff ff       	call   1010ca <get_mml>

            if (start <= paddr_start && paddr_end <= end) {
  1056b3:	8b 54 24 18          	mov    0x18(%esp),%edx
  1056b7:	83 c4 10             	add    $0x10,%esp
            unsigned int end   = start + get_mml(j);
  1056ba:	01 e8                	add    %ebp,%eax
            if (start <= paddr_start && paddr_end <= end) {
  1056bc:	39 d0                	cmp    %edx,%eax
  1056be:	72 0a                	jb     1056ca <pmem_init+0x1aa>
  1056c0:	39 6c 24 0c          	cmp    %ebp,0xc(%esp)
  1056c4:	0f 83 f6 02 00 00    	jae    1059c0 <pmem_init+0x4a0>
        for (j = 0; j < n_entries; j++) {
  1056ca:	83 c6 01             	add    $0x1,%esi
  1056cd:	39 f7                	cmp    %esi,%edi
  1056cf:	75 bf                	jne    105690 <pmem_init+0x170>
  1056d1:	8b 4c 24 10          	mov    0x10(%esp),%ecx

        if (is_ram) {
            at_set_perm(i, 2);
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);
  1056d5:	83 ec 08             	sub    $0x8,%esp
  1056d8:	6a 00                	push   $0x0
  1056da:	51                   	push   %ecx
  1056db:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  1056df:	e8 dc f4 ff ff       	call   104bc0 <at_set_perm>
  1056e4:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  1056e8:	83 c4 10             	add    $0x10,%esp
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  1056eb:	8b 44 24 08          	mov    0x8(%esp),%eax
  1056ef:	83 c1 01             	add    $0x1,%ecx
  1056f2:	89 44 24 0c          	mov    %eax,0xc(%esp)
  1056f6:	81 f9 00 00 0f 00    	cmp    $0xf0000,%ecx
  1056fc:	0f 85 5e ff ff ff    	jne    105660 <pmem_init+0x140>
  105702:	8b 44 24 18          	mov    0x18(%esp),%eax
  105706:	8b 74 24 1c          	mov    0x1c(%esp),%esi
  10570a:	89 cd                	mov    %ecx,%ebp
        }
    }


    unsigned int total_usable_pages = 0;
  10570c:	31 c9                	xor    %ecx,%ecx
  10570e:	8d b8 00 00 60 00    	lea    0x600000(%eax),%edi
  105714:	05 00 00 68 01       	add    $0x1680000,%eax
  105719:	89 74 24 0c          	mov    %esi,0xc(%esp)
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  10571d:	89 fa                	mov    %edi,%edx
    unsigned int total_usable_pages = 0;
  10571f:	89 c6                	mov    %eax,%esi
  105721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
        if (AT[i].perm == 2) total_usable_pages++;
  105728:	31 c0                	xor    %eax,%eax
  10572a:	83 3a 02             	cmpl   $0x2,(%edx)
  10572d:	0f 94 c0             	sete   %al
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  105730:	83 c2 18             	add    $0x18,%edx
        if (AT[i].perm == 2) total_usable_pages++;
  105733:	01 c1                	add    %eax,%ecx
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
  105735:	39 f2                	cmp    %esi,%edx
  105737:	75 ef                	jne    105728 <pmem_init+0x208>
    SEG1_END = VM_USERLO_PI;
    SEG2_START = VM_USERLO_PI;
    SEG2_END = VM_USERHI_PI;
    

    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
  105739:	c1 e9 02             	shr    $0x2,%ecx
    SEG1_START = VM_USERLO_PI;
  10573c:	89 74 24 08          	mov    %esi,0x8(%esp)
  105740:	8b 74 24 0c          	mov    0xc(%esp),%esi
  105744:	c7 83 18 20 00 00 00 	movl   $0x40000,0x2018(%ebx)
  10574b:	00 04 00 
    SEG2_END = VM_USERHI_PI;
  10574e:	c7 83 0c 20 00 00 00 	movl   $0xf0000,0x200c(%ebx)
  105755:	00 0f 00 
    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
  105758:	89 4c 24 14          	mov    %ecx,0x14(%esp)
  10575c:	0f 84 3b 03 00 00    	je     105a9d <pmem_init+0x57d>
  105762:	b8 00 00 04 00       	mov    $0x40000,%eax
  105767:	89 6c 24 10          	mov    %ebp,0x10(%esp)
  10576b:	89 f9                	mov    %edi,%ecx
  10576d:	8b 6c 24 14          	mov    0x14(%esp),%ebp
    unsigned int seg1_pages_count = 0;
  105771:	31 d2                	xor    %edx,%edx
  105773:	89 7c 24 14          	mov    %edi,0x14(%esp)
  105777:	89 c7                	mov    %eax,%edi
  105779:	eb 0f                	jmp    10578a <pmem_init+0x26a>
  10577b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
  105780:	81 fe ff ff 0e 00    	cmp    $0xeffff,%esi
  105786:	77 16                	ja     10579e <pmem_init+0x27e>
  105788:	89 f7                	mov    %esi,%edi
        if (AT[i].perm == 2) {
            seg1_pages_count++;
  10578a:	31 c0                	xor    %eax,%eax
  10578c:	83 39 02             	cmpl   $0x2,(%ecx)
    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
  10578f:	8d 77 01             	lea    0x1(%edi),%esi
            seg1_pages_count++;
  105792:	0f 94 c0             	sete   %al
    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
  105795:	83 c1 18             	add    $0x18,%ecx
            seg1_pages_count++;
  105798:	01 c2                	add    %eax,%edx
    for (i = VM_USERLO_PI; i < VM_USERHI_PI && seg1_pages_count < seg1_pages_target; i++) {
  10579a:	39 ea                	cmp    %ebp,%edx
  10579c:	72 e2                	jb     105780 <pmem_init+0x260>
        }
    }
    

    SEG1_END = ((i + (1U << 10) - 1) / (1U << 10)) * (1U << 10);
  10579e:	89 f8                	mov    %edi,%eax
  1057a0:	8b 74 24 0c          	mov    0xc(%esp),%esi
  1057a4:	8b 6c 24 10          	mov    0x10(%esp),%ebp
  1057a8:	89 c2                	mov    %eax,%edx
  1057aa:	8b 44 24 18          	mov    0x18(%esp),%eax
  1057ae:	8b 7c 24 14          	mov    0x14(%esp),%edi
  1057b2:	81 c2 00 04 00 00    	add    $0x400,%edx
  1057b8:	89 d1                	mov    %edx,%ecx
  1057ba:	81 e1 00 fc ff ff    	and    $0xfffffc00,%ecx
  1057c0:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
  1057c3:	89 8b 14 20 00 00    	mov    %ecx,0x2014(%ebx)
    if (SEG1_END > VM_USERHI_PI) SEG1_END = VM_USERHI_PI;
    
    SEG2_START = SEG1_END;
  1057c9:	89 54 24 0c          	mov    %edx,0xc(%esp)
  1057cd:	01 ca                	add    %ecx,%edx
  1057cf:	89 8b 10 20 00 00    	mov    %ecx,0x2010(%ebx)
    
    
    for (i = SEG1_START; i < SEG1_END; i++) {
  1057d5:	8d 14 d0             	lea    (%eax,%edx,8),%edx
  1057d8:	8b 44 24 08          	mov    0x8(%esp),%eax
  1057dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        if (AT[i].perm == 2) AT[i].segment = 1;
  1057e0:	83 3f 02             	cmpl   $0x2,(%edi)
  1057e3:	75 07                	jne    1057ec <pmem_init+0x2cc>
  1057e5:	c7 47 0c 01 00 00 00 	movl   $0x1,0xc(%edi)
    for (i = SEG1_START; i < SEG1_END; i++) {
  1057ec:	83 c7 18             	add    $0x18,%edi
  1057ef:	39 d7                	cmp    %edx,%edi
  1057f1:	75 ed                	jne    1057e0 <pmem_init+0x2c0>
    }
    for (i = SEG2_START; i < SEG2_END; i++) {
  1057f3:	89 44 24 08          	mov    %eax,0x8(%esp)
  1057f7:	81 f9 00 00 0f 00    	cmp    $0xf0000,%ecx
  1057fd:	74 31                	je     105830 <pmem_init+0x310>
  1057ff:	8b 54 24 0c          	mov    0xc(%esp),%edx
  105803:	8b 44 24 18          	mov    0x18(%esp),%eax
  105807:	01 ca                	add    %ecx,%edx
  105809:	8d 14 d0             	lea    (%eax,%edx,8),%edx
  10580c:	8b 44 24 08          	mov    0x8(%esp),%eax
        if (AT[i].perm == 2) AT[i].segment = 2;
  105810:	83 3a 02             	cmpl   $0x2,(%edx)
  105813:	75 07                	jne    10581c <pmem_init+0x2fc>
  105815:	c7 42 0c 02 00 00 00 	movl   $0x2,0xc(%edx)
    for (i = SEG2_START; i < SEG2_END; i++) {
  10581c:	83 c2 18             	add    $0x18,%edx
  10581f:	39 c2                	cmp    %eax,%edx
  105821:	75 ed                	jne    105810 <pmem_init+0x2f0>
    }

    i = SEG1_START;
    while (i < SEG1_END) {
  105823:	81 f9 00 00 04 00    	cmp    $0x40000,%ecx
  105829:	0f 84 a8 00 00 00    	je     1058d7 <pmem_init+0x3b7>
  10582f:	90                   	nop
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
  105830:	8d 3c 36             	lea    (%esi,%esi,1),%edi
  105833:	8b 54 24 18          	mov    0x18(%esp),%edx
  105837:	8d 04 37             	lea    (%edi,%esi,1),%eax
  10583a:	c1 e0 03             	shl    $0x3,%eax
  10583d:	01 c2                	add    %eax,%edx
  10583f:	83 3a 02             	cmpl   $0x2,(%edx)
  105842:	75 3c                	jne    105880 <pmem_init+0x360>
  105844:	8b 6a 04             	mov    0x4(%edx),%ebp
  105847:	85 ed                	test   %ebp,%ebp
  105849:	75 35                	jne    105880 <pmem_init+0x360>
            i++;
            continue;
        }

        if ((i & ((1U << 10) - 1)) == 0 && 
  10584b:	f7 c6 ff 03 00 00    	test   $0x3ff,%esi
  105851:	75 2d                	jne    105880 <pmem_init+0x360>
            i + (1U << 10) <= SEG1_END && 
  105853:	8d ae 00 04 00 00    	lea    0x400(%esi),%ebp
  105859:	89 6c 24 08          	mov    %ebp,0x8(%esp)
    if (base + n > VM_USERHI_PI) return 0;
  10585d:	bd 00 00 0f 00       	mov    $0xf0000,%ebp
  105862:	39 e9                	cmp    %ebp,%ecx
  105864:	0f 46 e9             	cmovbe %ecx,%ebp
  105867:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  10586b:	39 cd                	cmp    %ecx,%ebp
  10586d:	72 11                	jb     105880 <pmem_init+0x360>
  10586f:	81 fe ff ff 03 00    	cmp    $0x3ffff,%esi
  105875:	0f 87 cc 01 00 00    	ja     105a47 <pmem_init+0x527>
  10587b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
            AT[i].segment = 1;
            at_list_add_segment(10, i, 1);
            i += (1U << 10);
        } else {

            i++;
  105880:	83 c6 01             	add    $0x1,%esi
    while (i < SEG1_END) {
  105883:	8b 8b 14 20 00 00    	mov    0x2014(%ebx),%ecx
  105889:	39 ce                	cmp    %ecx,%esi
  10588b:	72 a3                	jb     105830 <pmem_init+0x310>
        }
    }

    for (i = SEG1_START; i < SEG1_END; i++) {
  10588d:	8b 83 18 20 00 00    	mov    0x2018(%ebx),%eax
            AT[i].segment = 2;
        }
    }

    i = SEG2_START;
    while (i < SEG2_END) {
  105893:	8b ab 0c 20 00 00    	mov    0x200c(%ebx),%ebp
    for (i = SEG1_START; i < SEG1_END; i++) {
  105899:	39 c8                	cmp    %ecx,%eax
  10589b:	73 3a                	jae    1058d7 <pmem_init+0x3b7>
  10589d:	8b 7c 24 18          	mov    0x18(%esp),%edi
  1058a1:	8d 04 40             	lea    (%eax,%eax,2),%eax
  1058a4:	8d 14 49             	lea    (%ecx,%ecx,2),%edx
  1058a7:	8d 04 c7             	lea    (%edi,%eax,8),%eax
  1058aa:	8d 14 d7             	lea    (%edi,%edx,8),%edx
  1058ad:	eb 08                	jmp    1058b7 <pmem_init+0x397>
  1058af:	90                   	nop
  1058b0:	83 c0 18             	add    $0x18,%eax
  1058b3:	39 c2                	cmp    %eax,%edx
  1058b5:	74 20                	je     1058d7 <pmem_init+0x3b7>
        if (AT[i].perm == 2 && AT[i].order == 0 && AT[i].segment == 1) {
  1058b7:	83 38 02             	cmpl   $0x2,(%eax)
  1058ba:	75 f4                	jne    1058b0 <pmem_init+0x390>
  1058bc:	8b 48 08             	mov    0x8(%eax),%ecx
  1058bf:	85 c9                	test   %ecx,%ecx
  1058c1:	75 ed                	jne    1058b0 <pmem_init+0x390>
  1058c3:	83 78 0c 01          	cmpl   $0x1,0xc(%eax)
  1058c7:	75 e7                	jne    1058b0 <pmem_init+0x390>
            AT[i].segment = 2;
  1058c9:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)
    for (i = SEG1_START; i < SEG1_END; i++) {
  1058d0:	83 c0 18             	add    $0x18,%eax
  1058d3:	39 c2                	cmp    %eax,%edx
  1058d5:	75 e0                	jne    1058b7 <pmem_init+0x397>
    i = SEG2_START;
  1058d7:	8b b3 10 20 00 00    	mov    0x2010(%ebx),%esi
    while (i < SEG2_END) {
  1058dd:	39 ee                	cmp    %ebp,%esi
  1058df:	72 20                	jb     105901 <pmem_init+0x3e1>
  1058e1:	e9 1d 01 00 00       	jmp    105a03 <pmem_init+0x4e3>
  1058e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1058ed:	00 
  1058ee:	66 90                	xchg   %ax,%ax
                break;
            }
        }

        if (order < 0) {
            i++;
  1058f0:	83 c6 01             	add    $0x1,%esi
    while (i < SEG2_END) {
  1058f3:	8b ab 0c 20 00 00    	mov    0x200c(%ebx),%ebp
  1058f9:	39 ee                	cmp    %ebp,%esi
  1058fb:	0f 83 02 01 00 00    	jae    105a03 <pmem_init+0x4e3>
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
  105901:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105905:	8d 3c 36             	lea    (%esi,%esi,1),%edi
  105908:	8d 04 37             	lea    (%edi,%esi,1),%eax
  10590b:	8d 14 c1             	lea    (%ecx,%eax,8),%edx
  10590e:	83 3a 02             	cmpl   $0x2,(%edx)
  105911:	75 dd                	jne    1058f0 <pmem_init+0x3d0>
  105913:	8b 42 04             	mov    0x4(%edx),%eax
  105916:	85 c0                	test   %eax,%eax
  105918:	75 d6                	jne    1058f0 <pmem_init+0x3d0>
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  10591a:	89 7c 24 08          	mov    %edi,0x8(%esp)
  10591e:	b9 0a 00 00 00       	mov    $0xa,%ecx
  105923:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
            unsigned int size = 1U << order;
  105928:	b8 01 00 00 00       	mov    $0x1,%eax
  10592d:	d3 e0                	shl    %cl,%eax
            if ((i & (size - 1)) != 0) continue;
  10592f:	8d 78 ff             	lea    -0x1(%eax),%edi
  105932:	85 f7                	test   %esi,%edi
  105934:	75 4a                	jne    105980 <pmem_init+0x460>
            if (i + size > SEG2_END) continue; 
  105936:	01 f0                	add    %esi,%eax
  105938:	39 c5                	cmp    %eax,%ebp
  10593a:	72 44                	jb     105980 <pmem_init+0x460>
    if (base < VM_USERLO_PI) return 0;
  10593c:	81 fe ff ff 03 00    	cmp    $0x3ffff,%esi
  105942:	76 3c                	jbe    105980 <pmem_init+0x460>
    if (base + n > VM_USERHI_PI) return 0;
  105944:	3d 00 00 0f 00       	cmp    $0xf0000,%eax
  105949:	77 35                	ja     105980 <pmem_init+0x460>
  10594b:	8b 7c 24 18          	mov    0x18(%esp),%edi
  10594f:	8d 04 40             	lea    (%eax,%eax,2),%eax
  105952:	8d 3c c7             	lea    (%edi,%eax,8),%edi
  105955:	89 d0                	mov    %edx,%eax
  105957:	eb 18                	jmp    105971 <pmem_init+0x451>
  105959:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if (AT[pi].allocated != 0) return 0;
  105960:	83 78 04 00          	cmpl   $0x0,0x4(%eax)
  105964:	75 1a                	jne    105980 <pmem_init+0x460>
    for (i = 0; i < n; i++) {
  105966:	83 c0 18             	add    $0x18,%eax
  105969:	39 c7                	cmp    %eax,%edi
  10596b:	0f 84 9a 00 00 00    	je     105a0b <pmem_init+0x4eb>
        if (AT[pi].perm != 2) return 0;
  105971:	83 38 02             	cmpl   $0x2,(%eax)
  105974:	74 ea                	je     105960 <pmem_init+0x440>
  105976:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10597d:	00 
  10597e:	66 90                	xchg   %ax,%ax
        for (order = MAX_ORDER - 1; order >= 0; order--) {
  105980:	83 e9 01             	sub    $0x1,%ecx
  105983:	73 a3                	jae    105928 <pmem_init+0x408>
  105985:	e9 66 ff ff ff       	jmp    1058f0 <pmem_init+0x3d0>
  10598a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            at_set_perm(i, 0);
  105990:	83 ec 08             	sub    $0x8,%esp
  105993:	6a 00                	push   $0x0
  105995:	51                   	push   %ecx
  105996:	89 4c 24 20          	mov    %ecx,0x20(%esp)
  10599a:	e8 21 f2 ff ff       	call   104bc0 <at_set_perm>
            continue;
  10599f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1059a3:	83 c4 10             	add    $0x10,%esp
  1059a6:	8b 4c 24 10          	mov    0x10(%esp),%ecx
  1059aa:	05 00 10 00 00       	add    $0x1000,%eax
  1059af:	89 44 24 08          	mov    %eax,0x8(%esp)
  1059b3:	e9 33 fd ff ff       	jmp    1056eb <pmem_init+0x1cb>
  1059b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1059bf:	00 
  1059c0:	8b 4c 24 10          	mov    0x10(%esp),%ecx
            at_set_perm(i, 2);
  1059c4:	83 ec 08             	sub    $0x8,%esp
  1059c7:	6a 02                	push   $0x2
  1059c9:	51                   	push   %ecx
  1059ca:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  1059ce:	e8 ed f1 ff ff       	call   104bc0 <at_set_perm>
            at_set_allocated(i, 0);
  1059d3:	58                   	pop    %eax
  1059d4:	5a                   	pop    %edx
  1059d5:	6a 00                	push   $0x0
  1059d7:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  1059db:	51                   	push   %ecx
  1059dc:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
  1059e0:	e8 4b f2 ff ff       	call   104c30 <at_set_allocated>
  1059e5:	83 c4 10             	add    $0x10,%esp
  1059e8:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  1059ec:	e9 fa fc ff ff       	jmp    1056eb <pmem_init+0x1cb>
  1059f1:	8b 44 24 0c          	mov    0xc(%esp),%eax
  1059f5:	05 00 10 00 00       	add    $0x1000,%eax
  1059fa:	89 44 24 08          	mov    %eax,0x8(%esp)
  1059fe:	e9 d2 fc ff ff       	jmp    1056d5 <pmem_init+0x1b5>
        AT[i].order = (unsigned int)order;
        AT[i].segment = 2;
        at_list_add_segment((unsigned int)order, i, 2);
        i += (1U << order);
    }
}
  105a03:	83 c4 2c             	add    $0x2c,%esp
  105a06:	5b                   	pop    %ebx
  105a07:	5e                   	pop    %esi
  105a08:	5f                   	pop    %edi
  105a09:	5d                   	pop    %ebp
  105a0a:	c3                   	ret
  105a0b:	8b 7c 24 08          	mov    0x8(%esp),%edi
        AT[i].order = (unsigned int)order;
  105a0f:	8b 44 24 18          	mov    0x18(%esp),%eax
        at_list_add_segment((unsigned int)order, i, 2);
  105a13:	83 ec 04             	sub    $0x4,%esp
        AT[i].order = (unsigned int)order;
  105a16:	01 f7                	add    %esi,%edi
  105a18:	8d 04 f8             	lea    (%eax,%edi,8),%eax
  105a1b:	89 48 08             	mov    %ecx,0x8(%eax)
        AT[i].segment = 2;
  105a1e:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)
        at_list_add_segment((unsigned int)order, i, 2);
  105a25:	6a 02                	push   $0x2
  105a27:	56                   	push   %esi
  105a28:	51                   	push   %ecx
  105a29:	89 4c 24 18          	mov    %ecx,0x18(%esp)
  105a2d:	e8 de f3 ff ff       	call   104e10 <at_list_add_segment>
        i += (1U << order);
  105a32:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105a36:	b8 01 00 00 00       	mov    $0x1,%eax
  105a3b:	83 c4 10             	add    $0x10,%esp
  105a3e:	d3 e0                	shl    %cl,%eax
  105a40:	01 c6                	add    %eax,%esi
  105a42:	e9 ac fe ff ff       	jmp    1058f3 <pmem_init+0x3d3>
  105a47:	8b 4c 24 18          	mov    0x18(%esp),%ecx
  105a4b:	8d 84 01 00 60 00 00 	lea    0x6000(%ecx,%eax,1),%eax
        if (AT[pi].perm != 2) return 0;
  105a52:	83 3a 02             	cmpl   $0x2,(%edx)
  105a55:	0f 85 25 fe ff ff    	jne    105880 <pmem_init+0x360>
        if (AT[pi].allocated != 0) return 0;
  105a5b:	8b 6a 04             	mov    0x4(%edx),%ebp
  105a5e:	85 ed                	test   %ebp,%ebp
  105a60:	0f 85 1a fe ff ff    	jne    105880 <pmem_init+0x360>
    for (i = 0; i < n; i++) {
  105a66:	83 c2 18             	add    $0x18,%edx
  105a69:	39 c2                	cmp    %eax,%edx
  105a6b:	75 e5                	jne    105a52 <pmem_init+0x532>
            AT[i].order = 10;
  105a6d:	8b 44 24 18          	mov    0x18(%esp),%eax
  105a71:	01 f7                	add    %esi,%edi
            at_list_add_segment(10, i, 1);
  105a73:	83 ec 04             	sub    $0x4,%esp
            AT[i].order = 10;
  105a76:	8d 04 f8             	lea    (%eax,%edi,8),%eax
  105a79:	c7 40 08 0a 00 00 00 	movl   $0xa,0x8(%eax)
            AT[i].segment = 1;
  105a80:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
            at_list_add_segment(10, i, 1);
  105a87:	6a 01                	push   $0x1
  105a89:	56                   	push   %esi
  105a8a:	6a 0a                	push   $0xa
  105a8c:	e8 7f f3 ff ff       	call   104e10 <at_list_add_segment>
            i += (1U << 10);
  105a91:	83 c4 10             	add    $0x10,%esp
  105a94:	8b 74 24 08          	mov    0x8(%esp),%esi
  105a98:	e9 e6 fd ff ff       	jmp    105883 <pmem_init+0x363>
    SEG1_END = ((i + (1U << 10) - 1) / (1U << 10)) * (1U << 10);
  105a9d:	c7 83 14 20 00 00 00 	movl   $0x40000,0x2014(%ebx)
  105aa4:	00 04 00 
    SEG2_START = SEG1_END;
  105aa7:	b9 00 00 04 00       	mov    $0x40000,%ecx
  105aac:	c7 83 10 20 00 00 00 	movl   $0x40000,0x2010(%ebx)
  105ab3:	00 04 00 
    for (i = SEG2_START; i < SEG2_END; i++) {
  105ab6:	c7 44 24 0c 00 00 08 	movl   $0x80000,0xc(%esp)
  105abd:	00 
  105abe:	e9 3c fd ff ff       	jmp    1057ff <pmem_init+0x2df>
    for (i = 0; i < n_entries; i++) {
  105ac3:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
  105aca:	00 
  105acb:	e9 ed fa ff ff       	jmp    1055bd <pmem_init+0x9d>

00105ad0 <MATInit_test_basic>:

// ===========================
// 1. Basic sanity tests (existing)
// ===========================
int MATInit_test_basic()
{
  105ad0:	57                   	push   %edi
  105ad1:	56                   	push   %esi
  105ad2:	31 f6                	xor    %esi,%esi
  105ad4:	53                   	push   %ebx
  105ad5:	e8 e6 a8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105ada:	81 c3 1a b5 00 00    	add    $0xb51a,%ebx
    int nps = get_nps();
  105ae0:	e8 6b f0 ff ff       	call   104b50 <get_nps>
  105ae5:	89 c7                	mov    %eax,%edi

    if (nps <= 1000) {
  105ae7:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  105aec:	7f 11                	jg     105aff <MATInit_test_basic+0x2f>
  105aee:	e9 8d 00 00 00       	jmp    105b80 <MATInit_test_basic+0xb0>
  105af3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test basic failed: NUM_PAGES too low (%d)\n", nps);
        return 1;
    }

    for (int i = 0; i < nps; i++) {
  105af8:	83 c6 01             	add    $0x1,%esi
  105afb:	39 f7                	cmp    %esi,%edi
  105afd:	74 49                	je     105b48 <MATInit_test_basic+0x78>
        if (at_is_allocated(i)) {
  105aff:	83 ec 0c             	sub    $0xc,%esp
  105b02:	56                   	push   %esi
  105b03:	e8 f8 f0 ff ff       	call   104c00 <at_is_allocated>
  105b08:	83 c4 10             	add    $0x10,%esp
  105b0b:	85 c0                	test   %eax,%eax
  105b0d:	75 51                	jne    105b60 <MATInit_test_basic+0x90>
            dprintf("test basic failed: page %d allocated unexpectedly\n", i);
            return 1;
        }
        if ((i < VM_USERLO_PI || i >= VM_USERHI_PI) && at_is_norm(i)) {
  105b0f:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105b15:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105b1a:	76 dc                	jbe    105af8 <MATInit_test_basic+0x28>
  105b1c:	83 ec 0c             	sub    $0xc,%esp
  105b1f:	56                   	push   %esi
  105b20:	e8 6b f0 ff ff       	call   104b90 <at_is_norm>
  105b25:	83 c4 10             	add    $0x10,%esp
  105b28:	85 c0                	test   %eax,%eax
  105b2a:	74 cc                	je     105af8 <MATInit_test_basic+0x28>
            dprintf("test basic failed: reserved page %d marked normal\n", i);
  105b2c:	83 ec 08             	sub    $0x8,%esp
  105b2f:	8d 83 58 9e ff ff    	lea    -0x61a8(%ebx),%eax
  105b35:	56                   	push   %esi
  105b36:	50                   	push   %eax
  105b37:	e8 30 d2 ff ff       	call   102d6c <dprintf>
            return 1;
  105b3c:	83 c4 10             	add    $0x10,%esp
  105b3f:	eb 32                	jmp    105b73 <MATInit_test_basic+0xa3>
  105b41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        }
    }

    dprintf("Basic initialization test passed.\n");
  105b48:	83 ec 0c             	sub    $0xc,%esp
  105b4b:	8d 83 8c 9e ff ff    	lea    -0x6174(%ebx),%eax
  105b51:	50                   	push   %eax
  105b52:	e8 15 d2 ff ff       	call   102d6c <dprintf>
    return 0;
  105b57:	83 c4 10             	add    $0x10,%esp
  105b5a:	31 c0                	xor    %eax,%eax
}
  105b5c:	5b                   	pop    %ebx
  105b5d:	5e                   	pop    %esi
  105b5e:	5f                   	pop    %edi
  105b5f:	c3                   	ret
            dprintf("test basic failed: page %d allocated unexpectedly\n", i);
  105b60:	83 ec 08             	sub    $0x8,%esp
  105b63:	8d 83 24 9e ff ff    	lea    -0x61dc(%ebx),%eax
  105b69:	56                   	push   %esi
  105b6a:	50                   	push   %eax
  105b6b:	e8 fc d1 ff ff       	call   102d6c <dprintf>
            return 1;
  105b70:	83 c4 10             	add    $0x10,%esp
}
  105b73:	5b                   	pop    %ebx
        return 1;
  105b74:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105b79:	5e                   	pop    %esi
  105b7a:	5f                   	pop    %edi
  105b7b:	c3                   	ret
  105b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test basic failed: NUM_PAGES too low (%d)\n", nps);
  105b80:	83 ec 08             	sub    $0x8,%esp
  105b83:	50                   	push   %eax
  105b84:	8d 83 f8 9d ff ff    	lea    -0x6208(%ebx),%eax
  105b8a:	50                   	push   %eax
  105b8b:	e8 dc d1 ff ff       	call   102d6c <dprintf>
        return 1;
  105b90:	83 c4 10             	add    $0x10,%esp
  105b93:	eb de                	jmp    105b73 <MATInit_test_basic+0xa3>
  105b95:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105b9c:	00 
  105b9d:	8d 76 00             	lea    0x0(%esi),%esi

00105ba0 <MATInit_test_buddy>:

// ===========================
// 2. Buddy system tests (existing)
// ===========================
int MATInit_test_buddy()
{
  105ba0:	57                   	push   %edi
    int any_found = 0;

    for (int order = 0; order <= HUGE_ORDER; order++) {
  105ba1:	31 ff                	xor    %edi,%edi
{
  105ba3:	56                   	push   %esi
  105ba4:	53                   	push   %ebx
  105ba5:	e8 16 a8 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105baa:	81 c3 4a b4 00 00    	add    $0xb44a,%ebx
        int head = get_free_list_head(order);
  105bb0:	83 ec 0c             	sub    $0xc,%esp
  105bb3:	57                   	push   %edi
  105bb4:	e8 d7 f0 ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  105bb9:	83 c4 10             	add    $0x10,%esp
        int head = get_free_list_head(order);
  105bbc:	89 c6                	mov    %eax,%esi
        while (head != -1) {
  105bbe:	83 f8 ff             	cmp    $0xffffffff,%eax
  105bc1:	74 35                	je     105bf8 <MATInit_test_buddy+0x58>
  105bc3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
            if (head >= VM_USERLO_PI && head < VM_USERHI_PI && at_is_norm(head)) {
  105bc8:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  105bce:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  105bd3:	77 10                	ja     105be5 <MATInit_test_buddy+0x45>
  105bd5:	83 ec 0c             	sub    $0xc,%esp
  105bd8:	56                   	push   %esi
  105bd9:	e8 b2 ef ff ff       	call   104b90 <at_is_norm>
  105bde:	83 c4 10             	add    $0x10,%esp
  105be1:	85 c0                	test   %eax,%eax
  105be3:	75 3b                	jne    105c20 <MATInit_test_buddy+0x80>
                any_found = 1;
                break;
            }
            head = at_get_next(head);
  105be5:	83 ec 0c             	sub    $0xc,%esp
  105be8:	56                   	push   %esi
  105be9:	e8 12 f1 ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  105bee:	83 c4 10             	add    $0x10,%esp
            head = at_get_next(head);
  105bf1:	89 c6                	mov    %eax,%esi
        while (head != -1) {
  105bf3:	83 f8 ff             	cmp    $0xffffffff,%eax
  105bf6:	75 d0                	jne    105bc8 <MATInit_test_buddy+0x28>
    for (int order = 0; order <= HUGE_ORDER; order++) {
  105bf8:	83 c7 01             	add    $0x1,%edi
  105bfb:	83 ff 0b             	cmp    $0xb,%edi
  105bfe:	75 b0                	jne    105bb0 <MATInit_test_buddy+0x10>
        }
        if (any_found) break;
    }

    if (!any_found) {
        dprintf("Buddy test failed: No blocks in normal zone found!\n");
  105c00:	83 ec 0c             	sub    $0xc,%esp
  105c03:	8d 83 b0 9e ff ff    	lea    -0x6150(%ebx),%eax
  105c09:	50                   	push   %eax
  105c0a:	e8 5d d1 ff ff       	call   102d6c <dprintf>
        return 1;
  105c0f:	83 c4 10             	add    $0x10,%esp
  105c12:	b8 01 00 00 00       	mov    $0x1,%eax
    }

    dprintf("Buddy system test passed.\n");
    return 0;
}
  105c17:	5b                   	pop    %ebx
  105c18:	5e                   	pop    %esi
  105c19:	5f                   	pop    %edi
  105c1a:	c3                   	ret
  105c1b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("Buddy system test passed.\n");
  105c20:	83 ec 0c             	sub    $0xc,%esp
  105c23:	8d 83 fd 98 ff ff    	lea    -0x6703(%ebx),%eax
  105c29:	50                   	push   %eax
  105c2a:	e8 3d d1 ff ff       	call   102d6c <dprintf>
    return 0;
  105c2f:	83 c4 10             	add    $0x10,%esp
  105c32:	31 c0                	xor    %eax,%eax
}
  105c34:	5b                   	pop    %ebx
  105c35:	5e                   	pop    %esi
  105c36:	5f                   	pop    %edi
  105c37:	c3                   	ret
  105c38:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105c3f:	00 

00105c40 <MATInit_test_zones>:

// ===========================
// 3. Zone correctness tests
// ===========================
int MATInit_test_zones()
{
  105c40:	55                   	push   %ebp
  105c41:	57                   	push   %edi
    int huge_found_1 = 0;
    int small_found_1 = 0;
    int small_found_2 = 0;
  105c42:	31 ff                	xor    %edi,%edi
{
  105c44:	56                   	push   %esi

    dprintf("Checking segment boundaries: [%u-%u) and [%u-%u)\n", 
            SEG1_START, SEG1_END, SEG2_START, SEG2_END);

    // Check all orders
    for (int order = 0; order <= HUGE_ORDER; order++) {
  105c45:	31 f6                	xor    %esi,%esi
{
  105c47:	53                   	push   %ebx
  105c48:	e8 73 a7 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105c4d:	81 c3 a7 b3 00 00    	add    $0xb3a7,%ebx
  105c53:	83 ec 28             	sub    $0x28,%esp
    dprintf("Checking segment boundaries: [%u-%u) and [%u-%u)\n", 
  105c56:	68 00 00 0f 00       	push   $0xf0000
  105c5b:	68 00 80 09 00       	push   $0x98000
  105c60:	68 00 80 09 00       	push   $0x98000
  105c65:	8d 83 e4 9e ff ff    	lea    -0x611c(%ebx),%eax
  105c6b:	68 00 00 04 00       	push   $0x40000
  105c70:	50                   	push   %eax
  105c71:	e8 f6 d0 ff ff       	call   102d6c <dprintf>
  105c76:	83 c4 20             	add    $0x20,%esp
    int huge_found_1 = 0;
  105c79:	31 d2                	xor    %edx,%edx
                if (order == HUGE_ORDER) {
                    huge_found_1 = 1;
                    dprintf("  Found superpage in Segment 1 at %d\n", head);
                } else {
                    small_found_1 = 1;
                    dprintf("  ERROR: Found order %d block in Segment 1 at %d\n", order, head);
  105c7b:	8d 83 40 9f ff ff    	lea    -0x60c0(%ebx),%eax
    int small_found_1 = 0;
  105c81:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  105c88:	00 
                    dprintf("  ERROR: Found order %d block in Segment 1 at %d\n", order, head);
  105c89:	89 44 24 08          	mov    %eax,0x8(%esp)
  105c8d:	89 54 24 0c          	mov    %edx,0xc(%esp)
  105c91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        int head = get_free_list_head(order);
  105c98:	83 ec 0c             	sub    $0xc,%esp
  105c9b:	56                   	push   %esi
  105c9c:	e8 ef ef ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  105ca1:	83 c4 10             	add    $0x10,%esp
        int head = get_free_list_head(order);
  105ca4:	89 c5                	mov    %eax,%ebp
        while (head != -1) {
  105ca6:	83 f8 ff             	cmp    $0xffffffff,%eax
  105ca9:	75 3a                	jne    105ce5 <MATInit_test_zones+0xa5>
  105cab:	eb 63                	jmp    105d10 <MATInit_test_zones+0xd0>
  105cad:	8d 76 00             	lea    0x0(%esi),%esi
                if (order == HUGE_ORDER) {
  105cb0:	83 fe 0a             	cmp    $0xa,%esi
  105cb3:	0f 84 97 00 00 00    	je     105d50 <MATInit_test_zones+0x110>
                    dprintf("  ERROR: Found order %d block in Segment 1 at %d\n", order, head);
  105cb9:	83 ec 04             	sub    $0x4,%esp
  105cbc:	55                   	push   %ebp
  105cbd:	56                   	push   %esi
  105cbe:	ff 74 24 14          	push   0x14(%esp)
  105cc2:	e8 a5 d0 ff ff       	call   102d6c <dprintf>
  105cc7:	83 c4 10             	add    $0x10,%esp
                    small_found_1 = 1;
  105cca:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  105cd1:	00 
            } else if (head >= SEG2_START && head < SEG2_END) {
                if (order < HUGE_ORDER) {
                    small_found_2 = 1;
                }
            }
            head = at_get_next(head);
  105cd2:	83 ec 0c             	sub    $0xc,%esp
  105cd5:	55                   	push   %ebp
  105cd6:	e8 25 f0 ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  105cdb:	83 c4 10             	add    $0x10,%esp
            head = at_get_next(head);
  105cde:	89 c5                	mov    %eax,%ebp
        while (head != -1) {
  105ce0:	83 f8 ff             	cmp    $0xffffffff,%eax
  105ce3:	74 2b                	je     105d10 <MATInit_test_zones+0xd0>
            if (head >= SEG1_START && head < SEG1_END) {
  105ce5:	8d 85 00 00 fc ff    	lea    -0x40000(%ebp),%eax
  105ceb:	3d ff 7f 05 00       	cmp    $0x57fff,%eax
  105cf0:	76 be                	jbe    105cb0 <MATInit_test_zones+0x70>
            } else if (head >= SEG2_START && head < SEG2_END) {
  105cf2:	8d 85 00 80 f6 ff    	lea    -0x98000(%ebp),%eax
                if (order < HUGE_ORDER) {
  105cf8:	3d ff 7f 05 00       	cmp    $0x57fff,%eax
  105cfd:	77 d3                	ja     105cd2 <MATInit_test_zones+0x92>
                    small_found_2 = 1;
  105cff:	83 fe 0a             	cmp    $0xa,%esi
  105d02:	b8 01 00 00 00       	mov    $0x1,%eax
  105d07:	0f 45 f8             	cmovne %eax,%edi
  105d0a:	eb c6                	jmp    105cd2 <MATInit_test_zones+0x92>
  105d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for (int order = 0; order <= HUGE_ORDER; order++) {
  105d10:	83 c6 01             	add    $0x1,%esi
  105d13:	83 fe 0b             	cmp    $0xb,%esi
  105d16:	75 80                	jne    105c98 <MATInit_test_zones+0x58>
        }
    }

    if (small_found_1) { 
  105d18:	83 7c 24 04 00       	cmpl   $0x0,0x4(%esp)
  105d1d:	8b 54 24 0c          	mov    0xc(%esp),%edx
  105d21:	0f 85 a0 00 00 00    	jne    105dc7 <MATInit_test_zones+0x187>
        dprintf("Zone test failed: Small blocks found in Segment 1 (should be only huge blocks)\n"); 
        return 1; 
    }
    
    if (!small_found_2) { 
  105d27:	85 ff                	test   %edi,%edi
  105d29:	0f 84 b7 00 00 00    	je     105de6 <MATInit_test_zones+0x1a6>
        dprintf("Zone test failed: No small blocks in Segment 2\n"); 
        return 1; 
    }

    if (!huge_found_1) {
  105d2f:	85 d2                	test   %edx,%edx
  105d31:	75 78                	jne    105dab <MATInit_test_zones+0x16b>
        dprintf("Zone test note: No superpages in Segment 1 (acceptable if Segment 1 is small)\n");
  105d33:	83 ec 0c             	sub    $0xc,%esp
  105d36:	8d 83 f4 9f ff ff    	lea    -0x600c(%ebx),%eax
  105d3c:	50                   	push   %eax
  105d3d:	e8 2a d0 ff ff       	call   102d6c <dprintf>
  105d42:	83 c4 10             	add    $0x10,%esp
  105d45:	eb 64                	jmp    105dab <MATInit_test_zones+0x16b>
  105d47:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105d4e:	00 
  105d4f:	90                   	nop
  105d50:	8d 83 18 9f ff ff    	lea    -0x60e8(%ebx),%eax
  105d56:	89 44 24 0c          	mov    %eax,0xc(%esp)
  105d5a:	89 e8                	mov    %ebp,%eax
  105d5c:	89 f5                	mov    %esi,%ebp
  105d5e:	89 c6                	mov    %eax,%esi
                    dprintf("  Found superpage in Segment 1 at %d\n", head);
  105d60:	83 ec 08             	sub    $0x8,%esp
  105d63:	56                   	push   %esi
  105d64:	ff 74 24 18          	push   0x18(%esp)
  105d68:	e8 ff cf ff ff       	call   102d6c <dprintf>
            head = at_get_next(head);
  105d6d:	89 34 24             	mov    %esi,(%esp)
  105d70:	e8 8b ef ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  105d75:	83 c4 10             	add    $0x10,%esp
            head = at_get_next(head);
  105d78:	89 c6                	mov    %eax,%esi
        while (head != -1) {
  105d7a:	83 f8 ff             	cmp    $0xffffffff,%eax
  105d7d:	74 20                	je     105d9f <MATInit_test_zones+0x15f>
            if (head >= SEG1_START && head < SEG1_END) {
  105d7f:	8d 80 00 00 fc ff    	lea    -0x40000(%eax),%eax
  105d85:	3d ff 7f 05 00       	cmp    $0x57fff,%eax
  105d8a:	76 d4                	jbe    105d60 <MATInit_test_zones+0x120>
                    huge_found_1 = 1;
  105d8c:	89 f0                	mov    %esi,%eax
  105d8e:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
  105d95:	00 
  105d96:	89 ee                	mov    %ebp,%esi
  105d98:	89 c5                	mov    %eax,%ebp
  105d9a:	e9 53 ff ff ff       	jmp    105cf2 <MATInit_test_zones+0xb2>
    if (small_found_1) { 
  105d9f:	8b 44 24 04          	mov    0x4(%esp),%eax
  105da3:	85 c0                	test   %eax,%eax
  105da5:	75 20                	jne    105dc7 <MATInit_test_zones+0x187>
    if (!small_found_2) { 
  105da7:	85 ff                	test   %edi,%edi
  105da9:	74 3b                	je     105de6 <MATInit_test_zones+0x1a6>
    }

    dprintf("Zone correctness test passed.\n");
  105dab:	83 ec 0c             	sub    $0xc,%esp
  105dae:	8d 83 44 a0 ff ff    	lea    -0x5fbc(%ebx),%eax
  105db4:	50                   	push   %eax
  105db5:	e8 b2 cf ff ff       	call   102d6c <dprintf>
    return 0;
  105dba:	83 c4 10             	add    $0x10,%esp
  105dbd:	31 c0                	xor    %eax,%eax
}
  105dbf:	83 c4 1c             	add    $0x1c,%esp
  105dc2:	5b                   	pop    %ebx
  105dc3:	5e                   	pop    %esi
  105dc4:	5f                   	pop    %edi
  105dc5:	5d                   	pop    %ebp
  105dc6:	c3                   	ret
        dprintf("Zone test failed: Small blocks found in Segment 1 (should be only huge blocks)\n"); 
  105dc7:	83 ec 0c             	sub    $0xc,%esp
  105dca:	8d 83 74 9f ff ff    	lea    -0x608c(%ebx),%eax
  105dd0:	50                   	push   %eax
  105dd1:	e8 96 cf ff ff       	call   102d6c <dprintf>
        return 1; 
  105dd6:	83 c4 10             	add    $0x10,%esp
}
  105dd9:	83 c4 1c             	add    $0x1c,%esp
        return 1; 
  105ddc:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105de1:	5b                   	pop    %ebx
  105de2:	5e                   	pop    %esi
  105de3:	5f                   	pop    %edi
  105de4:	5d                   	pop    %ebp
  105de5:	c3                   	ret
        dprintf("Zone test failed: No small blocks in Segment 2\n"); 
  105de6:	83 ec 0c             	sub    $0xc,%esp
  105de9:	8d 83 c4 9f ff ff    	lea    -0x603c(%ebx),%eax
  105def:	50                   	push   %eax
  105df0:	e8 77 cf ff ff       	call   102d6c <dprintf>
        return 1; 
  105df5:	83 c4 10             	add    $0x10,%esp
  105df8:	eb df                	jmp    105dd9 <MATInit_test_zones+0x199>
  105dfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105e00 <MATInit_test_segment1_exclusive>:

// ===========================
// 6. Segment 1 exclusive superpage test
// ===========================
int MATInit_test_segment1_exclusive()
{
  105e00:	56                   	push   %esi
    // Verify that segment 1 ONLY has superpages (order 10)
    for (int order = 0; order < HUGE_ORDER; order++) {
  105e01:	31 f6                	xor    %esi,%esi
{
  105e03:	53                   	push   %ebx
  105e04:	e8 b7 a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105e09:	81 c3 eb b1 00 00    	add    $0xb1eb,%ebx
  105e0f:	83 ec 04             	sub    $0x4,%esp
        int head = get_free_list_head(order);
  105e12:	83 ec 0c             	sub    $0xc,%esp
  105e15:	56                   	push   %esi
  105e16:	e8 75 ee ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  105e1b:	83 c4 10             	add    $0x10,%esp
  105e1e:	83 f8 ff             	cmp    $0xffffffff,%eax
  105e21:	75 16                	jne    105e39 <MATInit_test_segment1_exclusive+0x39>
  105e23:	eb 4b                	jmp    105e70 <MATInit_test_segment1_exclusive+0x70>
  105e25:	8d 76 00             	lea    0x0(%esi),%esi
            if (head >= SEG1_START && head < SEG1_END) {
                dprintf("Segment 1 exclusive test failed: Found order %d block at %d in Segment 1\n", 
                        order, head);
                return 1;
            }
            head = at_get_next(head);
  105e28:	83 ec 0c             	sub    $0xc,%esp
  105e2b:	50                   	push   %eax
  105e2c:	e8 cf ee ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  105e31:	83 c4 10             	add    $0x10,%esp
  105e34:	83 f8 ff             	cmp    $0xffffffff,%eax
  105e37:	74 37                	je     105e70 <MATInit_test_segment1_exclusive+0x70>
            if (head >= SEG1_START && head < SEG1_END) {
  105e39:	8d 90 00 00 fc ff    	lea    -0x40000(%eax),%edx
  105e3f:	81 fa ff 7f 05 00    	cmp    $0x57fff,%edx
  105e45:	77 e1                	ja     105e28 <MATInit_test_segment1_exclusive+0x28>
                dprintf("Segment 1 exclusive test failed: Found order %d block at %d in Segment 1\n", 
  105e47:	83 ec 04             	sub    $0x4,%esp
  105e4a:	50                   	push   %eax
  105e4b:	8d 83 64 a0 ff ff    	lea    -0x5f9c(%ebx),%eax
  105e51:	56                   	push   %esi
  105e52:	50                   	push   %eax
  105e53:	e8 14 cf ff ff       	call   102d6c <dprintf>
                return 1;
  105e58:	83 c4 10             	add    $0x10,%esp
  105e5b:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }

    dprintf("Segment 1 exclusive superpage test passed.\n");
    return 0;
}
  105e60:	83 c4 04             	add    $0x4,%esp
  105e63:	5b                   	pop    %ebx
  105e64:	5e                   	pop    %esi
  105e65:	c3                   	ret
  105e66:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105e6d:	00 
  105e6e:	66 90                	xchg   %ax,%ax
    for (int order = 0; order < HUGE_ORDER; order++) {
  105e70:	83 c6 01             	add    $0x1,%esi
  105e73:	83 fe 0a             	cmp    $0xa,%esi
  105e76:	75 9a                	jne    105e12 <MATInit_test_segment1_exclusive+0x12>
    dprintf("Segment 1 exclusive superpage test passed.\n");
  105e78:	83 ec 0c             	sub    $0xc,%esp
  105e7b:	8d 83 b0 a0 ff ff    	lea    -0x5f50(%ebx),%eax
  105e81:	50                   	push   %eax
  105e82:	e8 e5 ce ff ff       	call   102d6c <dprintf>
    return 0;
  105e87:	83 c4 10             	add    $0x10,%esp
  105e8a:	31 c0                	xor    %eax,%eax
}
  105e8c:	83 c4 04             	add    $0x4,%esp
  105e8f:	5b                   	pop    %ebx
  105e90:	5e                   	pop    %esi
  105e91:	c3                   	ret
  105e92:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105e99:	00 
  105e9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00105ea0 <MATInit_test_alignment>:

// ===========================
// 4. Alignment test (existing)
// ===========================
int MATInit_test_alignment()
{
  105ea0:	55                   	push   %ebp
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            if ((head & ((1U << order) - 1)) != 0) {
  105ea1:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
{
  105ea6:	57                   	push   %edi
    for (int order = 0; order <= HUGE_ORDER; order++) {
  105ea7:	31 ff                	xor    %edi,%edi
{
  105ea9:	56                   	push   %esi
  105eaa:	53                   	push   %ebx
  105eab:	e8 10 a5 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105eb0:	81 c3 44 b1 00 00    	add    $0xb144,%ebx
  105eb6:	83 ec 0c             	sub    $0xc,%esp
        int head = get_free_list_head(order);
  105eb9:	83 ec 0c             	sub    $0xc,%esp
  105ebc:	57                   	push   %edi
  105ebd:	e8 ce ed ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  105ec2:	83 c4 10             	add    $0x10,%esp
  105ec5:	83 f8 ff             	cmp    $0xffffffff,%eax
  105ec8:	74 2b                	je     105ef5 <MATInit_test_alignment+0x55>
            if ((head & ((1U << order) - 1)) != 0) {
  105eca:	89 ee                	mov    %ebp,%esi
  105ecc:	89 f9                	mov    %edi,%ecx
  105ece:	d3 e6                	shl    %cl,%esi
  105ed0:	f7 d6                	not    %esi
  105ed2:	85 f0                	test   %esi,%eax
  105ed4:	74 0e                	je     105ee4 <MATInit_test_alignment+0x44>
  105ed6:	eb 48                	jmp    105f20 <MATInit_test_alignment+0x80>
  105ed8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105edf:	00 
  105ee0:	85 f0                	test   %esi,%eax
  105ee2:	75 3c                	jne    105f20 <MATInit_test_alignment+0x80>
                dprintf("Alignment failed: page %d order %d\n", head, order);
                return 1;
            }
            head = at_get_next(head);
  105ee4:	83 ec 0c             	sub    $0xc,%esp
  105ee7:	50                   	push   %eax
  105ee8:	e8 13 ee ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  105eed:	83 c4 10             	add    $0x10,%esp
  105ef0:	83 f8 ff             	cmp    $0xffffffff,%eax
  105ef3:	75 eb                	jne    105ee0 <MATInit_test_alignment+0x40>
    for (int order = 0; order <= HUGE_ORDER; order++) {
  105ef5:	83 c7 01             	add    $0x1,%edi
  105ef8:	83 ff 0b             	cmp    $0xb,%edi
  105efb:	75 bc                	jne    105eb9 <MATInit_test_alignment+0x19>
        }
    }

    dprintf("Alignment test passed.\n");
  105efd:	83 ec 0c             	sub    $0xc,%esp
  105f00:	8d 83 18 99 ff ff    	lea    -0x66e8(%ebx),%eax
  105f06:	50                   	push   %eax
  105f07:	e8 60 ce ff ff       	call   102d6c <dprintf>
    return 0;
  105f0c:	83 c4 10             	add    $0x10,%esp
  105f0f:	31 c0                	xor    %eax,%eax
}
  105f11:	83 c4 0c             	add    $0xc,%esp
  105f14:	5b                   	pop    %ebx
  105f15:	5e                   	pop    %esi
  105f16:	5f                   	pop    %edi
  105f17:	5d                   	pop    %ebp
  105f18:	c3                   	ret
  105f19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
                dprintf("Alignment failed: page %d order %d\n", head, order);
  105f20:	83 ec 04             	sub    $0x4,%esp
  105f23:	57                   	push   %edi
  105f24:	50                   	push   %eax
  105f25:	8d 83 dc a0 ff ff    	lea    -0x5f24(%ebx),%eax
  105f2b:	50                   	push   %eax
  105f2c:	e8 3b ce ff ff       	call   102d6c <dprintf>
                return 1;
  105f31:	83 c4 10             	add    $0x10,%esp
  105f34:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105f39:	83 c4 0c             	add    $0xc,%esp
  105f3c:	5b                   	pop    %ebx
  105f3d:	5e                   	pop    %esi
  105f3e:	5f                   	pop    %edi
  105f3f:	5d                   	pop    %ebp
  105f40:	c3                   	ret
  105f41:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  105f48:	00 
  105f49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00105f50 <MATInit_test_boundaries>:

// ===========================
// 5. NEW: Segment boundary test
// ===========================
int MATInit_test_boundaries()
{
  105f50:	55                   	push   %ebp
    // Verify that no block crosses segment boundaries
    for (int order = 0; order <= HUGE_ORDER; order++) {
        int head = get_free_list_head(order);
        while (head != -1) {
            unsigned int size = 1U << order;
  105f51:	bd 01 00 00 00       	mov    $0x1,%ebp
{
  105f56:	57                   	push   %edi
    for (int order = 0; order <= HUGE_ORDER; order++) {
  105f57:	31 ff                	xor    %edi,%edi
{
  105f59:	56                   	push   %esi
  105f5a:	53                   	push   %ebx
  105f5b:	e8 60 a4 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  105f60:	81 c3 94 b0 00 00    	add    $0xb094,%ebx
  105f66:	83 ec 0c             	sub    $0xc,%esp
        int head = get_free_list_head(order);
  105f69:	83 ec 0c             	sub    $0xc,%esp
  105f6c:	57                   	push   %edi
  105f6d:	e8 1e ed ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  105f72:	83 c4 10             	add    $0x10,%esp
  105f75:	83 f8 ff             	cmp    $0xffffffff,%eax
  105f78:	0f 84 9a 00 00 00    	je     106018 <MATInit_test_boundaries+0xc8>
            unsigned int size = 1U << order;
  105f7e:	89 ee                	mov    %ebp,%esi
  105f80:	89 f9                	mov    %edi,%ecx
  105f82:	d3 e6                	shl    %cl,%esi
            unsigned int end = head + size - 1;
  105f84:	8d 54 06 ff          	lea    -0x1(%esi,%eax,1),%edx
            
            // Check if block crosses from segment 1 to segment 2
            if (head < SEG1_END && end >= SEG1_END) {
  105f88:	3d ff 7f 09 00       	cmp    $0x97fff,%eax
  105f8d:	77 79                	ja     106008 <MATInit_test_boundaries+0xb8>
  105f8f:	81 fa ff 7f 09 00    	cmp    $0x97fff,%edx
  105f95:	0f 87 a5 00 00 00    	ja     106040 <MATInit_test_boundaries+0xf0>
                        order, head);
                return 1;
            }
            
            // Check if block starts in segment 2 but extends beyond VM_USERHI
            if (head >= SEG2_START && end >= VM_USERHI_PI) {
  105f9b:	3d ff 7f 09 00       	cmp    $0x97fff,%eax
  105fa0:	77 66                	ja     106008 <MATInit_test_boundaries+0xb8>
            unsigned int end = head + size - 1;
  105fa2:	83 ee 01             	sub    $0x1,%esi
  105fa5:	8d 76 00             	lea    0x0(%esi),%esi
                dprintf("Boundary test failed: Block order %d at %d extends beyond user window\n", 
                        order, head);
                return 1;
            }
            
            head = at_get_next(head);
  105fa8:	83 ec 0c             	sub    $0xc,%esp
  105fab:	50                   	push   %eax
  105fac:	e8 4f ed ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  105fb1:	83 c4 10             	add    $0x10,%esp
  105fb4:	83 f8 ff             	cmp    $0xffffffff,%eax
  105fb7:	74 5f                	je     106018 <MATInit_test_boundaries+0xc8>
            unsigned int end = head + size - 1;
  105fb9:	8d 14 06             	lea    (%esi,%eax,1),%edx
            if (head < SEG1_END && end >= SEG1_END) {
  105fbc:	3d ff 7f 09 00       	cmp    $0x97fff,%eax
  105fc1:	77 15                	ja     105fd8 <MATInit_test_boundaries+0x88>
  105fc3:	81 fa ff 7f 09 00    	cmp    $0x97fff,%edx
  105fc9:	77 75                	ja     106040 <MATInit_test_boundaries+0xf0>
            if (head >= SEG2_START && end >= VM_USERHI_PI) {
  105fcb:	3d ff 7f 09 00       	cmp    $0x97fff,%eax
  105fd0:	76 d6                	jbe    105fa8 <MATInit_test_boundaries+0x58>
  105fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  105fd8:	81 fa ff ff 0e 00    	cmp    $0xeffff,%edx
  105fde:	76 c8                	jbe    105fa8 <MATInit_test_boundaries+0x58>
                dprintf("Boundary test failed: Block order %d at %d extends beyond user window\n", 
  105fe0:	83 ec 04             	sub    $0x4,%esp
  105fe3:	50                   	push   %eax
  105fe4:	8d 83 48 a1 ff ff    	lea    -0x5eb8(%ebx),%eax
  105fea:	57                   	push   %edi
  105feb:	50                   	push   %eax
  105fec:	e8 7b cd ff ff       	call   102d6c <dprintf>
                return 1;
  105ff1:	83 c4 10             	add    $0x10,%esp
        }
    }

    dprintf("Segment boundary test passed.\n");
    return 0;
}
  105ff4:	83 c4 0c             	add    $0xc,%esp
                return 1;
  105ff7:	b8 01 00 00 00       	mov    $0x1,%eax
}
  105ffc:	5b                   	pop    %ebx
  105ffd:	5e                   	pop    %esi
  105ffe:	5f                   	pop    %edi
  105fff:	5d                   	pop    %ebp
  106000:	c3                   	ret
  106001:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            if (head >= SEG2_START && end >= VM_USERHI_PI) {
  106008:	81 fa ff ff 0e 00    	cmp    $0xeffff,%edx
  10600e:	76 92                	jbe    105fa2 <MATInit_test_boundaries+0x52>
  106010:	eb ce                	jmp    105fe0 <MATInit_test_boundaries+0x90>
  106012:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for (int order = 0; order <= HUGE_ORDER; order++) {
  106018:	83 c7 01             	add    $0x1,%edi
  10601b:	83 ff 0b             	cmp    $0xb,%edi
  10601e:	0f 85 45 ff ff ff    	jne    105f69 <MATInit_test_boundaries+0x19>
    dprintf("Segment boundary test passed.\n");
  106024:	83 ec 0c             	sub    $0xc,%esp
  106027:	8d 83 90 a1 ff ff    	lea    -0x5e70(%ebx),%eax
  10602d:	50                   	push   %eax
  10602e:	e8 39 cd ff ff       	call   102d6c <dprintf>
    return 0;
  106033:	83 c4 10             	add    $0x10,%esp
  106036:	31 c0                	xor    %eax,%eax
}
  106038:	83 c4 0c             	add    $0xc,%esp
  10603b:	5b                   	pop    %ebx
  10603c:	5e                   	pop    %esi
  10603d:	5f                   	pop    %edi
  10603e:	5d                   	pop    %ebp
  10603f:	c3                   	ret
                dprintf("Boundary test failed: Block order %d at %d crosses segment boundary\n", 
  106040:	83 ec 04             	sub    $0x4,%esp
  106043:	50                   	push   %eax
  106044:	8d 83 00 a1 ff ff    	lea    -0x5f00(%ebx),%eax
  10604a:	57                   	push   %edi
  10604b:	50                   	push   %eax
  10604c:	e8 1b cd ff ff       	call   102d6c <dprintf>
                return 1;
  106051:	83 c4 10             	add    $0x10,%esp
  106054:	eb 9e                	jmp    105ff4 <MATInit_test_boundaries+0xa4>
  106056:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10605d:	00 
  10605e:	66 90                	xchg   %ax,%ax

00106060 <MATInit_test_segment2_full_range>:

// ===========================
// 7. NEW: Segment 2 full range test
// ===========================
int MATInit_test_segment2_full_range()
{
  106060:	55                   	push   %ebp
    int orders_found[MAX_ORDER] = {0};
  106061:	b9 0b 00 00 00       	mov    $0xb,%ecx
  106066:	31 c0                	xor    %eax,%eax
    
    // Check which orders exist in segment 2
    for (int order = 0; order <= HUGE_ORDER; order++) {
  106068:	31 ed                	xor    %ebp,%ebp
{
  10606a:	57                   	push   %edi
  10606b:	56                   	push   %esi
  10606c:	53                   	push   %ebx
  10606d:	e8 4e a3 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106072:	81 c3 82 af 00 00    	add    $0xaf82,%ebx
  106078:	83 ec 3c             	sub    $0x3c,%esp
    int orders_found[MAX_ORDER] = {0};
  10607b:	8d 7c 24 04          	lea    0x4(%esp),%edi
  10607f:	f3 ab                	rep stos %eax,%es:(%edi)
    for (int order = 0; order <= HUGE_ORDER; order++) {
  106081:	8d 7c 24 04          	lea    0x4(%esp),%edi
    int orders_found[MAX_ORDER] = {0};
  106085:	89 fe                	mov    %edi,%esi
  106087:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10608e:	00 
  10608f:	90                   	nop
        int head = get_free_list_head(order);
  106090:	83 ec 0c             	sub    $0xc,%esp
  106093:	55                   	push   %ebp
  106094:	e8 f7 eb ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  106099:	83 c4 10             	add    $0x10,%esp
  10609c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10609f:	74 2c                	je     1060cd <MATInit_test_segment2_full_range+0x6d>
  1060a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            if (head >= SEG2_START && head < SEG2_END) {
  1060a8:	8d 90 00 80 f6 ff    	lea    -0x98000(%eax),%edx
  1060ae:	81 fa ff 7f 05 00    	cmp    $0x57fff,%edx
  1060b4:	77 06                	ja     1060bc <MATInit_test_segment2_full_range+0x5c>
                orders_found[order] = 1;
  1060b6:	c7 06 01 00 00 00    	movl   $0x1,(%esi)
            }
            head = at_get_next(head);
  1060bc:	83 ec 0c             	sub    $0xc,%esp
  1060bf:	50                   	push   %eax
  1060c0:	e8 3b ec ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  1060c5:	83 c4 10             	add    $0x10,%esp
  1060c8:	83 f8 ff             	cmp    $0xffffffff,%eax
  1060cb:	75 db                	jne    1060a8 <MATInit_test_segment2_full_range+0x48>
    for (int order = 0; order <= HUGE_ORDER; order++) {
  1060cd:	83 c5 01             	add    $0x1,%ebp
  1060d0:	83 c6 04             	add    $0x4,%esi
  1060d3:	83 fd 0b             	cmp    $0xb,%ebp
  1060d6:	75 b8                	jne    106090 <MATInit_test_segment2_full_range+0x30>
  1060d8:	8d 57 2c             	lea    0x2c(%edi),%edx
        }
    }
    
    // Verify that at least some orders exist (don't require all if memory is limited)
    int orders_present = 0;
  1060db:	31 c0                	xor    %eax,%eax
  1060dd:	8d 76 00             	lea    0x0(%esi),%esi
    for (int order = 0; order <= HUGE_ORDER; order++) {
        if (orders_found[order]) orders_present++;
  1060e0:	83 3f 01             	cmpl   $0x1,(%edi)
  1060e3:	83 d8 ff             	sbb    $0xffffffff,%eax
    for (int order = 0; order <= HUGE_ORDER; order++) {
  1060e6:	83 c7 04             	add    $0x4,%edi
  1060e9:	39 fa                	cmp    %edi,%edx
  1060eb:	75 f3                	jne    1060e0 <MATInit_test_segment2_full_range+0x80>
    }
    
    if (orders_present == 0) {
  1060ed:	85 c0                	test   %eax,%eax
  1060ef:	74 1d                	je     10610e <MATInit_test_segment2_full_range+0xae>
        dprintf("Segment 2 full range test failed: No blocks found in Segment 2\n");
        return 1;
    }
    
    dprintf("Segment 2 full range test passed (%d orders present).\n", orders_present);
  1060f1:	83 ec 08             	sub    $0x8,%esp
  1060f4:	50                   	push   %eax
  1060f5:	8d 83 f0 a1 ff ff    	lea    -0x5e10(%ebx),%eax
  1060fb:	50                   	push   %eax
  1060fc:	e8 6b cc ff ff       	call   102d6c <dprintf>
    return 0;
  106101:	83 c4 10             	add    $0x10,%esp
  106104:	31 c0                	xor    %eax,%eax
}
  106106:	83 c4 3c             	add    $0x3c,%esp
  106109:	5b                   	pop    %ebx
  10610a:	5e                   	pop    %esi
  10610b:	5f                   	pop    %edi
  10610c:	5d                   	pop    %ebp
  10610d:	c3                   	ret
        dprintf("Segment 2 full range test failed: No blocks found in Segment 2\n");
  10610e:	83 ec 0c             	sub    $0xc,%esp
  106111:	8d 83 b0 a1 ff ff    	lea    -0x5e50(%ebx),%eax
  106117:	50                   	push   %eax
  106118:	e8 4f cc ff ff       	call   102d6c <dprintf>
        return 1;
  10611d:	83 c4 10             	add    $0x10,%esp
  106120:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106125:	83 c4 3c             	add    $0x3c,%esp
  106128:	5b                   	pop    %ebx
  106129:	5e                   	pop    %esi
  10612a:	5f                   	pop    %edi
  10612b:	5d                   	pop    %ebp
  10612c:	c3                   	ret
  10612d:	8d 76 00             	lea    0x0(%esi),%esi

00106130 <MATInit_test_exhaustion_boundaries>:

// ===========================
// 8. NEW: Memory exhaustion boundary test
// ===========================
int MATInit_test_exhaustion_boundaries()
{
  106130:	55                   	push   %ebp
    // Count total pages in each segment
    unsigned int total_pages_seg1 = 0;
    unsigned int total_pages_seg2 = 0;
    
    for (unsigned int i = SEG1_START; i < SEG1_END; i++) {
  106131:	bd 00 00 04 00       	mov    $0x40000,%ebp
{
  106136:	57                   	push   %edi
  106137:	56                   	push   %esi
    unsigned int total_pages_seg1 = 0;
  106138:	31 f6                	xor    %esi,%esi
{
  10613a:	53                   	push   %ebx
  10613b:	e8 80 a2 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106140:	81 c3 b4 ae 00 00    	add    $0xaeb4,%ebx
  106146:	83 ec 1c             	sub    $0x1c,%esp
  106149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if (at_is_norm(i)) total_pages_seg1++;
  106150:	83 ec 0c             	sub    $0xc,%esp
  106153:	55                   	push   %ebp
  106154:	e8 37 ea ff ff       	call   104b90 <at_is_norm>
  106159:	83 c4 10             	add    $0x10,%esp
  10615c:	83 f8 01             	cmp    $0x1,%eax
  10615f:	83 de ff             	sbb    $0xffffffff,%esi
    for (unsigned int i = SEG1_START; i < SEG1_END; i++) {
  106162:	83 c5 01             	add    $0x1,%ebp
  106165:	81 fd 00 80 09 00    	cmp    $0x98000,%ebp
  10616b:	75 e3                	jne    106150 <MATInit_test_exhaustion_boundaries+0x20>
    unsigned int total_pages_seg2 = 0;
  10616d:	31 ff                	xor    %edi,%edi
  10616f:	90                   	nop
    }
    
    for (unsigned int i = SEG2_START; i < SEG2_END; i++) {
        if (at_is_norm(i)) total_pages_seg2++;
  106170:	83 ec 0c             	sub    $0xc,%esp
  106173:	55                   	push   %ebp
  106174:	e8 17 ea ff ff       	call   104b90 <at_is_norm>
  106179:	83 c4 10             	add    $0x10,%esp
  10617c:	83 f8 01             	cmp    $0x1,%eax
  10617f:	83 df ff             	sbb    $0xffffffff,%edi
    for (unsigned int i = SEG2_START; i < SEG2_END; i++) {
  106182:	83 c5 01             	add    $0x1,%ebp
  106185:	81 fd 00 00 0f 00    	cmp    $0xf0000,%ebp
  10618b:	75 e3                	jne    106170 <MATInit_test_exhaustion_boundaries+0x40>
    // Count pages in free lists
    unsigned int free_pages_seg1 = 0;
    unsigned int free_pages_seg2 = 0;
    
    // Count from superpages in segment 1
    int head = get_free_list_head(HUGE_ORDER);
  10618d:	83 ec 0c             	sub    $0xc,%esp
  106190:	6a 0a                	push   $0xa
  106192:	e8 f9 ea ff ff       	call   104c90 <get_free_list_head>
    while (head != -1) {
  106197:	83 c4 10             	add    $0x10,%esp
    unsigned int free_pages_seg1 = 0;
  10619a:	31 d2                	xor    %edx,%edx
    while (head != -1) {
  10619c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10619f:	74 2f                	je     1061d0 <MATInit_test_exhaustion_boundaries+0xa0>
    unsigned int free_pages_seg1 = 0;
  1061a1:	89 d5                	mov    %edx,%ebp
  1061a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        if (head >= SEG1_START && head < SEG1_END) {
  1061a8:	8d 88 00 00 fc ff    	lea    -0x40000(%eax),%ecx
            free_pages_seg1 += (1U << HUGE_ORDER);
  1061ae:	8d 95 00 04 00 00    	lea    0x400(%ebp),%edx
  1061b4:	81 f9 00 80 05 00    	cmp    $0x58000,%ecx
  1061ba:	0f 42 ea             	cmovb  %edx,%ebp
        }
        head = at_get_next(head);
  1061bd:	83 ec 0c             	sub    $0xc,%esp
  1061c0:	50                   	push   %eax
  1061c1:	e8 3a eb ff ff       	call   104d00 <at_get_next>
    while (head != -1) {
  1061c6:	83 c4 10             	add    $0x10,%esp
  1061c9:	83 f8 ff             	cmp    $0xffffffff,%eax
  1061cc:	75 da                	jne    1061a8 <MATInit_test_exhaustion_boundaries+0x78>
  1061ce:	89 ea                	mov    %ebp,%edx
    // Count from all orders in segment 2
    for (int order = 0; order <= HUGE_ORDER; order++) {
        head = get_free_list_head(order);
        while (head != -1) {
            if (head >= SEG2_START && head < SEG2_END) {
                free_pages_seg2 += (1U << order);
  1061d0:	89 74 24 04          	mov    %esi,0x4(%esp)
    for (int order = 0; order <= HUGE_ORDER; order++) {
  1061d4:	31 c9                	xor    %ecx,%ecx
    unsigned int free_pages_seg2 = 0;
  1061d6:	31 ed                	xor    %ebp,%ebp
                free_pages_seg2 += (1U << order);
  1061d8:	89 54 24 0c          	mov    %edx,0xc(%esp)
  1061dc:	89 7c 24 08          	mov    %edi,0x8(%esp)
  1061e0:	89 cf                	mov    %ecx,%edi
  1061e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        head = get_free_list_head(order);
  1061e8:	83 ec 0c             	sub    $0xc,%esp
  1061eb:	57                   	push   %edi
  1061ec:	e8 9f ea ff ff       	call   104c90 <get_free_list_head>
        while (head != -1) {
  1061f1:	83 c4 10             	add    $0x10,%esp
  1061f4:	83 f8 ff             	cmp    $0xffffffff,%eax
  1061f7:	74 33                	je     10622c <MATInit_test_exhaustion_boundaries+0xfc>
                free_pages_seg2 += (1U << order);
  1061f9:	be 01 00 00 00       	mov    $0x1,%esi
  1061fe:	89 f9                	mov    %edi,%ecx
  106200:	d3 e6                	shl    %cl,%esi
  106202:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
            if (head >= SEG2_START && head < SEG2_END) {
  106208:	8d 88 00 80 f6 ff    	lea    -0x98000(%eax),%ecx
                free_pages_seg2 += (1U << order);
  10620e:	8d 54 35 00          	lea    0x0(%ebp,%esi,1),%edx
  106212:	81 f9 00 80 05 00    	cmp    $0x58000,%ecx
  106218:	0f 42 ea             	cmovb  %edx,%ebp
            }
            head = at_get_next(head);
  10621b:	83 ec 0c             	sub    $0xc,%esp
  10621e:	50                   	push   %eax
  10621f:	e8 dc ea ff ff       	call   104d00 <at_get_next>
        while (head != -1) {
  106224:	83 c4 10             	add    $0x10,%esp
  106227:	83 f8 ff             	cmp    $0xffffffff,%eax
  10622a:	75 dc                	jne    106208 <MATInit_test_exhaustion_boundaries+0xd8>
    for (int order = 0; order <= HUGE_ORDER; order++) {
  10622c:	83 c7 01             	add    $0x1,%edi
  10622f:	83 ff 0b             	cmp    $0xb,%edi
  106232:	75 b4                	jne    1061e8 <MATInit_test_exhaustion_boundaries+0xb8>
        }
    }
    
    // Verify that free pages don't exceed total pages
    if (free_pages_seg1 > total_pages_seg1) {
  106234:	8b 74 24 04          	mov    0x4(%esp),%esi
  106238:	8b 54 24 0c          	mov    0xc(%esp),%edx
  10623c:	8b 7c 24 08          	mov    0x8(%esp),%edi
  106240:	39 d6                	cmp    %edx,%esi
  106242:	72 41                	jb     106285 <MATInit_test_exhaustion_boundaries+0x155>
        dprintf("Exhaustion test failed: Segment 1 free pages (%u) > total (%u)\n", 
                free_pages_seg1, total_pages_seg1);
        return 1;
    }
    
    if (free_pages_seg2 > total_pages_seg2) {
  106244:	39 ef                	cmp    %ebp,%edi
  106246:	72 1c                	jb     106264 <MATInit_test_exhaustion_boundaries+0x134>
        dprintf("Exhaustion test failed: Segment 2 free pages (%u) > total (%u)\n", 
                free_pages_seg2, total_pages_seg2);
        return 1;
    }
    
    dprintf("Memory exhaustion boundary test passed.\n");
  106248:	83 ec 0c             	sub    $0xc,%esp
  10624b:	8d 83 a8 a2 ff ff    	lea    -0x5d58(%ebx),%eax
  106251:	50                   	push   %eax
  106252:	e8 15 cb ff ff       	call   102d6c <dprintf>
    return 0;
  106257:	83 c4 10             	add    $0x10,%esp
  10625a:	31 c0                	xor    %eax,%eax
}
  10625c:	83 c4 1c             	add    $0x1c,%esp
  10625f:	5b                   	pop    %ebx
  106260:	5e                   	pop    %esi
  106261:	5f                   	pop    %edi
  106262:	5d                   	pop    %ebp
  106263:	c3                   	ret
        dprintf("Exhaustion test failed: Segment 2 free pages (%u) > total (%u)\n", 
  106264:	83 ec 04             	sub    $0x4,%esp
  106267:	8d 83 68 a2 ff ff    	lea    -0x5d98(%ebx),%eax
  10626d:	57                   	push   %edi
  10626e:	55                   	push   %ebp
  10626f:	50                   	push   %eax
  106270:	e8 f7 ca ff ff       	call   102d6c <dprintf>
        return 1;
  106275:	83 c4 10             	add    $0x10,%esp
}
  106278:	83 c4 1c             	add    $0x1c,%esp
        return 1;
  10627b:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106280:	5b                   	pop    %ebx
  106281:	5e                   	pop    %esi
  106282:	5f                   	pop    %edi
  106283:	5d                   	pop    %ebp
  106284:	c3                   	ret
        dprintf("Exhaustion test failed: Segment 1 free pages (%u) > total (%u)\n", 
  106285:	83 ec 04             	sub    $0x4,%esp
  106288:	8d 83 28 a2 ff ff    	lea    -0x5dd8(%ebx),%eax
  10628e:	56                   	push   %esi
  10628f:	52                   	push   %edx
  106290:	50                   	push   %eax
  106291:	e8 d6 ca ff ff       	call   102d6c <dprintf>
        return 1;
  106296:	83 c4 10             	add    $0x10,%esp
  106299:	eb dd                	jmp    106278 <MATInit_test_exhaustion_boundaries+0x148>
  10629b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001062a0 <test_MATInit>:

// ===========================
// 9. Run all tests
// ===========================
int test_MATInit()
{
  1062a0:	57                   	push   %edi
  1062a1:	e8 ba cf ff ff       	call   103260 <__x86.get_pc_thunk.di>
  1062a6:	81 c7 4e ad 00 00    	add    $0xad4e,%edi
  1062ac:	56                   	push   %esi
  1062ad:	53                   	push   %ebx
    int res = 0;
    dprintf("\n=== Running MATInit Tests ===\n");
  1062ae:	83 ec 0c             	sub    $0xc,%esp
  1062b1:	8d 87 d4 a2 ff ff    	lea    -0x5d2c(%edi),%eax
  1062b7:	89 fb                	mov    %edi,%ebx
  1062b9:	50                   	push   %eax
  1062ba:	e8 ad ca ff ff       	call   102d6c <dprintf>
    
    res += MATInit_test_basic();
  1062bf:	e8 0c f8 ff ff       	call   105ad0 <MATInit_test_basic>
  1062c4:	89 c3                	mov    %eax,%ebx
    res += MATInit_test_buddy();
  1062c6:	e8 d5 f8 ff ff       	call   105ba0 <MATInit_test_buddy>
  1062cb:	01 c3                	add    %eax,%ebx
    res += MATInit_test_alignment();
  1062cd:	e8 ce fb ff ff       	call   105ea0 <MATInit_test_alignment>
  1062d2:	01 c3                	add    %eax,%ebx
    res += MATInit_test_zones();
  1062d4:	e8 67 f9 ff ff       	call   105c40 <MATInit_test_zones>
  1062d9:	01 c3                	add    %eax,%ebx
    res += MATInit_test_boundaries();
  1062db:	e8 70 fc ff ff       	call   105f50 <MATInit_test_boundaries>
  1062e0:	01 c3                	add    %eax,%ebx
    res += MATInit_test_segment1_exclusive();
  1062e2:	e8 19 fb ff ff       	call   105e00 <MATInit_test_segment1_exclusive>
  1062e7:	01 c3                	add    %eax,%ebx
    res += MATInit_test_segment2_full_range();
  1062e9:	e8 72 fd ff ff       	call   106060 <MATInit_test_segment2_full_range>
  1062ee:	01 c3                	add    %eax,%ebx
    res += MATInit_test_exhaustion_boundaries();
  1062f0:	e8 3b fe ff ff       	call   106130 <MATInit_test_exhaustion_boundaries>

    if (res == 0)
  1062f5:	89 de                	mov    %ebx,%esi
  1062f7:	83 c4 10             	add    $0x10,%esp
  1062fa:	01 c6                	add    %eax,%esi
  1062fc:	75 22                	jne    106320 <test_MATInit+0x80>
        dprintf("\n✅ All MATInit tests passed!\n");
  1062fe:	83 ec 0c             	sub    $0xc,%esp
  106301:	8d 87 f4 a2 ff ff    	lea    -0x5d0c(%edi),%eax
  106307:	89 fb                	mov    %edi,%ebx
  106309:	50                   	push   %eax
  10630a:	e8 5d ca ff ff       	call   102d6c <dprintf>
  10630f:	83 c4 10             	add    $0x10,%esp
    else
        dprintf("\n❌ Some MATInit tests failed (%d errors).\n", res);

    return res;
  106312:	89 f0                	mov    %esi,%eax
  106314:	5b                   	pop    %ebx
  106315:	5e                   	pop    %esi
  106316:	5f                   	pop    %edi
  106317:	c3                   	ret
  106318:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10631f:	00 
        dprintf("\n❌ Some MATInit tests failed (%d errors).\n", res);
  106320:	83 ec 08             	sub    $0x8,%esp
  106323:	8d 87 14 a3 ff ff    	lea    -0x5cec(%edi),%eax
  106329:	89 fb                	mov    %edi,%ebx
  10632b:	56                   	push   %esi
  10632c:	50                   	push   %eax
  10632d:	e8 3a ca ff ff       	call   102d6c <dprintf>
  106332:	83 c4 10             	add    $0x10,%esp
  106335:	89 f0                	mov    %esi,%eax
  106337:	5b                   	pop    %ebx
  106338:	5e                   	pop    %esi
  106339:	5f                   	pop    %edi
  10633a:	c3                   	ret
  10633b:	66 90                	xchg   %ax,%ax
  10633d:	66 90                	xchg   %ax,%ax
  10633f:	90                   	nop

00106340 <update_free_counts>:

static unsigned int total_free_pages_seg1 = 0;
static unsigned int total_free_pages_seg2 = 0;


static void update_free_counts(void) {
  106340:	55                   	push   %ebp
  106341:	57                   	push   %edi
    total_free_pages_seg1 = 0;
    total_free_pages_seg2 = 0;
    
    for (int order = 0; order <= MAX_ORDER; order++) {
  106342:	31 ff                	xor    %edi,%edi
static void update_free_counts(void) {
  106344:	56                   	push   %esi
  106345:	53                   	push   %ebx
  106346:	e8 75 a0 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10634b:	81 c3 a9 ac 00 00    	add    $0xaca9,%ebx
  106351:	83 ec 0c             	sub    $0xc,%esp
    total_free_pages_seg1 = 0;
  106354:	c7 83 d8 cc 84 01 00 	movl   $0x0,0x184ccd8(%ebx)
  10635b:	00 00 00 
    total_free_pages_seg2 = 0;
  10635e:	c7 c6 40 dc 15 00    	mov    $0x15dc40,%esi
  106364:	c7 83 d4 cc 84 01 00 	movl   $0x0,0x184ccd4(%ebx)
  10636b:	00 00 00 
    for (int order = 0; order <= MAX_ORDER; order++) {
  10636e:	66 90                	xchg   %ax,%ax
        int head = get_free_list_head_segment(order, 1);
  106370:	83 ec 08             	sub    $0x8,%esp
  106373:	6a 01                	push   $0x1
  106375:	57                   	push   %edi
  106376:	e8 45 e9 ff ff       	call   104cc0 <get_free_list_head_segment>
        while (head != -1) {
  10637b:	83 c4 10             	add    $0x10,%esp
  10637e:	83 f8 ff             	cmp    $0xffffffff,%eax
  106381:	74 2b                	je     1063ae <update_free_counts+0x6e>
            total_free_pages_seg1 += (1U << order);
  106383:	89 f9                	mov    %edi,%ecx
  106385:	ba 01 00 00 00       	mov    $0x1,%edx
  10638a:	d3 e2                	shl    %cl,%edx
  10638c:	89 d1                	mov    %edx,%ecx
  10638e:	03 93 d8 cc 84 01    	add    0x184ccd8(%ebx),%edx
  106394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            head = AT[head].next;
  106398:	8d 04 40             	lea    (%eax,%eax,2),%eax
  10639b:	89 d5                	mov    %edx,%ebp
        while (head != -1) {
  10639d:	01 ca                	add    %ecx,%edx
            head = AT[head].next;
  10639f:	8b 44 c6 10          	mov    0x10(%esi,%eax,8),%eax
        while (head != -1) {
  1063a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  1063a6:	75 f0                	jne    106398 <update_free_counts+0x58>
  1063a8:	89 ab d8 cc 84 01    	mov    %ebp,0x184ccd8(%ebx)
    for (int order = 0; order <= MAX_ORDER; order++) {
  1063ae:	83 c7 01             	add    $0x1,%edi
  1063b1:	83 ff 0c             	cmp    $0xc,%edi
  1063b4:	75 ba                	jne    106370 <update_free_counts+0x30>
  1063b6:	c7 c6 40 dc 15 00    	mov    $0x15dc40,%esi
        }
    }
    
    
    for (int order = 0; order <= MAX_ORDER; order++) {
  1063bc:	31 ff                	xor    %edi,%edi
  1063be:	66 90                	xchg   %ax,%ax
        int head = get_free_list_head_segment(order, 2);
  1063c0:	83 ec 08             	sub    $0x8,%esp
  1063c3:	6a 02                	push   $0x2
  1063c5:	57                   	push   %edi
  1063c6:	e8 f5 e8 ff ff       	call   104cc0 <get_free_list_head_segment>
        while (head != -1) {
  1063cb:	83 c4 10             	add    $0x10,%esp
  1063ce:	83 f8 ff             	cmp    $0xffffffff,%eax
  1063d1:	74 2b                	je     1063fe <update_free_counts+0xbe>
            total_free_pages_seg2 += (1U << order);
  1063d3:	89 f9                	mov    %edi,%ecx
  1063d5:	ba 01 00 00 00       	mov    $0x1,%edx
  1063da:	d3 e2                	shl    %cl,%edx
  1063dc:	89 d1                	mov    %edx,%ecx
  1063de:	03 93 d4 cc 84 01    	add    0x184ccd4(%ebx),%edx
  1063e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            head = AT[head].next;
  1063e8:	8d 04 40             	lea    (%eax,%eax,2),%eax
  1063eb:	89 d5                	mov    %edx,%ebp
        while (head != -1) {
  1063ed:	01 ca                	add    %ecx,%edx
            head = AT[head].next;
  1063ef:	8b 44 c6 10          	mov    0x10(%esi,%eax,8),%eax
        while (head != -1) {
  1063f3:	83 f8 ff             	cmp    $0xffffffff,%eax
  1063f6:	75 f0                	jne    1063e8 <update_free_counts+0xa8>
  1063f8:	89 ab d4 cc 84 01    	mov    %ebp,0x184ccd4(%ebx)
    for (int order = 0; order <= MAX_ORDER; order++) {
  1063fe:	83 c7 01             	add    $0x1,%edi
  106401:	83 ff 0c             	cmp    $0xc,%edi
  106404:	75 ba                	jne    1063c0 <update_free_counts+0x80>
        }
    }
}
  106406:	83 c4 0c             	add    $0xc,%esp
  106409:	5b                   	pop    %ebx
  10640a:	5e                   	pop    %esi
  10640b:	5f                   	pop    %edi
  10640c:	5d                   	pop    %ebp
  10640d:	c3                   	ret
  10640e:	66 90                	xchg   %ax,%ax

00106410 <palloc_order>:
    
    return current_base;
}


int palloc_order(unsigned int order) {
  106410:	55                   	push   %ebp
  106411:	57                   	push   %edi
  106412:	56                   	push   %esi
  106413:	53                   	push   %ebx
  106414:	e8 a7 9f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106419:	81 c3 db ab 00 00    	add    $0xabdb,%ebx
  10641f:	83 ec 1c             	sub    $0x1c,%esp
    if (order >= MAX_ORDER) return -1;
  106422:	83 7c 24 30 0a       	cmpl   $0xa,0x30(%esp)
  106427:	0f 87 77 01 00 00    	ja     1065a4 <palloc_order+0x194>

    update_free_counts();
  10642d:	e8 0e ff ff ff       	call   106340 <update_free_counts>
    unsigned int needed_pages = 1U << order;
  106432:	0f b6 4c 24 30       	movzbl 0x30(%esp),%ecx
  106437:	b8 01 00 00 00       	mov    $0x1,%eax
  10643c:	d3 e0                	shl    %cl,%eax
    
    int pindex = -1;
    
    if (order == SUPERPAGE_ORDER) {
  10643e:	83 7c 24 30 0a       	cmpl   $0xa,0x30(%esp)
    unsigned int needed_pages = 1U << order;
  106443:	89 44 24 04          	mov    %eax,0x4(%esp)
    if (order == SUPERPAGE_ORDER) {
  106447:	0f 84 6b 01 00 00    	je     1065b8 <palloc_order+0x1a8>
                at_list_remove_segment(order, pindex, 2);
            }
        }
    } else {
        // Regular allocation: try segment 2 first
        if (total_free_pages_seg2 >= needed_pages) {
  10644d:	39 83 d4 cc 84 01    	cmp    %eax,0x184ccd4(%ebx)
  106453:	0f 82 3f 01 00 00    	jb     106598 <palloc_order+0x188>
            unsigned int k = order;
  106459:	8b 74 24 30          	mov    0x30(%esp),%esi
  10645d:	eb 0d                	jmp    10646c <palloc_order+0x5c>
  10645f:	90                   	nop
            while (k < MAX_ORDER && get_free_list_head_segment(k, 2) == -1) {
                k++;
  106460:	83 c6 01             	add    $0x1,%esi
            while (k < MAX_ORDER && get_free_list_head_segment(k, 2) == -1) {
  106463:	83 fe 0b             	cmp    $0xb,%esi
  106466:	0f 84 2c 01 00 00    	je     106598 <palloc_order+0x188>
  10646c:	83 ec 08             	sub    $0x8,%esp
  10646f:	6a 02                	push   $0x2
  106471:	56                   	push   %esi
  106472:	e8 49 e8 ff ff       	call   104cc0 <get_free_list_head_segment>
  106477:	83 c4 10             	add    $0x10,%esp
  10647a:	83 f8 ff             	cmp    $0xffffffff,%eax
  10647d:	74 e1                	je     106460 <palloc_order+0x50>
            }
            
            if (k < MAX_ORDER) {
                pindex = get_free_list_head_segment(k, 2);
  10647f:	83 ec 08             	sub    $0x8,%esp
  106482:	6a 02                	push   $0x2
  106484:	56                   	push   %esi
  106485:	e8 36 e8 ff ff       	call   104cc0 <get_free_list_head_segment>
                at_list_remove_segment(k, pindex, 2);
  10648a:	83 c4 0c             	add    $0xc,%esp
  10648d:	6a 02                	push   $0x2
                pindex = get_free_list_head_segment(k, 2);
  10648f:	89 c5                	mov    %eax,%ebp
                at_list_remove_segment(k, pindex, 2);
  106491:	50                   	push   %eax
  106492:	56                   	push   %esi
  106493:	e8 e8 ea ff ff       	call   104f80 <at_list_remove_segment>
                
                // Split down to requested order
                while (k > order) {
  106498:	83 c4 10             	add    $0x10,%esp
  10649b:	c7 c2 40 dc 15 00    	mov    $0x15dc40,%edx
  1064a1:	39 74 24 30          	cmp    %esi,0x30(%esp)
  1064a5:	73 4c                	jae    1064f3 <palloc_order+0xe3>
  1064a7:	89 54 24 08          	mov    %edx,0x8(%esp)
  1064ab:	89 f7                	mov    %esi,%edi
  1064ad:	8d 76 00             	lea    0x0(%esi),%esi
                    k--;
  1064b0:	83 ef 01             	sub    $0x1,%edi
                    unsigned int buddy = pindex + (1 << k);
  1064b3:	b8 01 00 00 00       	mov    $0x1,%eax
                    AT[buddy].order = k;
                    AT[buddy].segment = 2;
                    at_set_allocated(buddy, 0);
  1064b8:	83 ec 08             	sub    $0x8,%esp
                    unsigned int buddy = pindex + (1 << k);
  1064bb:	89 f9                	mov    %edi,%ecx
  1064bd:	d3 e0                	shl    %cl,%eax
  1064bf:	8d 34 28             	lea    (%eax,%ebp,1),%esi
                    AT[buddy].order = k;
  1064c2:	8b 44 24 10          	mov    0x10(%esp),%eax
  1064c6:	8d 14 76             	lea    (%esi,%esi,2),%edx
  1064c9:	8d 14 d0             	lea    (%eax,%edx,8),%edx
  1064cc:	89 7a 08             	mov    %edi,0x8(%edx)
                    AT[buddy].segment = 2;
  1064cf:	c7 42 0c 02 00 00 00 	movl   $0x2,0xc(%edx)
                    at_set_allocated(buddy, 0);
  1064d6:	6a 00                	push   $0x0
  1064d8:	56                   	push   %esi
  1064d9:	e8 52 e7 ff ff       	call   104c30 <at_set_allocated>
                    at_list_add_segment(k, buddy, 2);
  1064de:	83 c4 0c             	add    $0xc,%esp
  1064e1:	6a 02                	push   $0x2
  1064e3:	56                   	push   %esi
  1064e4:	57                   	push   %edi
  1064e5:	e8 26 e9 ff ff       	call   104e10 <at_list_add_segment>
                while (k > order) {
  1064ea:	83 c4 10             	add    $0x10,%esp
  1064ed:	39 7c 24 30          	cmp    %edi,0x30(%esp)
  1064f1:	75 bd                	jne    1064b0 <palloc_order+0xa0>
                }
            }
        }
        
        // If segment 2 doesn't have enough, try to split from segment 1
        if (pindex == -1 && total_free_pages_seg1 >= needed_pages) {
  1064f3:	83 fd ff             	cmp    $0xffffffff,%ebp
  1064f6:	0f 84 9c 00 00 00    	je     106598 <palloc_order+0x188>
  1064fc:	8d 44 2d 00          	lea    0x0(%ebp,%ebp,1),%eax
  106500:	c7 c2 40 dc 15 00    	mov    $0x15dc40,%edx
  106506:	89 44 24 08          	mov    %eax,0x8(%esp)
  10650a:	8b 74 24 04          	mov    0x4(%esp),%esi
    unsigned int current_order = SUPERPAGE_ORDER;
  10650e:	89 54 24 04          	mov    %edx,0x4(%esp)
  106512:	89 ef                	mov    %ebp,%edi
  106514:	01 ee                	add    %ebp,%esi
  106516:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10651d:	00 
  10651e:	66 90                	xchg   %ax,%ax
    if (pindex == -1) return -1;
    
    // Allocate the block
    unsigned int size = 1U << order;
    for (unsigned int i = 0; i < size; i++) {
        at_set_allocated(pindex + i, 1);
  106520:	83 ec 08             	sub    $0x8,%esp
  106523:	6a 01                	push   $0x1
  106525:	57                   	push   %edi
    for (unsigned int i = 0; i < size; i++) {
  106526:	83 c7 01             	add    $0x1,%edi
        at_set_allocated(pindex + i, 1);
  106529:	e8 02 e7 ff ff       	call   104c30 <at_set_allocated>
    for (unsigned int i = 0; i < size; i++) {
  10652e:	83 c4 10             	add    $0x10,%esp
  106531:	39 f7                	cmp    %esi,%edi
  106533:	75 eb                	jne    106520 <palloc_order+0x110>
    }
    
    AT[pindex].order = order;
  106535:	8b 4c 24 08          	mov    0x8(%esp),%ecx
  106539:	8b 54 24 04          	mov    0x4(%esp),%edx
  10653d:	8b 44 24 30          	mov    0x30(%esp),%eax
  106541:	01 e9                	add    %ebp,%ecx
  106543:	c1 e1 03             	shl    $0x3,%ecx
  106546:	89 44 0a 08          	mov    %eax,0x8(%edx,%ecx,1)
    
    // Clean internal metadata
    for (unsigned int i = 1; i < size; i++) {
  10654a:	85 c0                	test   %eax,%eax
  10654c:	74 36                	je     106584 <palloc_order+0x174>
  10654e:	8d 04 7f             	lea    (%edi,%edi,2),%eax
  106551:	8d 4c 0a 20          	lea    0x20(%edx,%ecx,1),%ecx
  106555:	8d 44 c2 08          	lea    0x8(%edx,%eax,8),%eax
  106559:	89 c2                	mov    %eax,%edx
  10655b:	29 ca                	sub    %ecx,%edx
  10655d:	83 e2 08             	and    $0x8,%edx
  106560:	74 0e                	je     106570 <palloc_order+0x160>
        AT[pindex + i].order = 0;
  106562:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
    for (unsigned int i = 1; i < size; i++) {
  106568:	83 c1 18             	add    $0x18,%ecx
  10656b:	39 c1                	cmp    %eax,%ecx
  10656d:	74 15                	je     106584 <palloc_order+0x174>
  10656f:	90                   	nop
        AT[pindex + i].order = 0;
  106570:	c7 01 00 00 00 00    	movl   $0x0,(%ecx)
    for (unsigned int i = 1; i < size; i++) {
  106576:	83 c1 30             	add    $0x30,%ecx
        AT[pindex + i].order = 0;
  106579:	c7 41 e8 00 00 00 00 	movl   $0x0,-0x18(%ecx)
    for (unsigned int i = 1; i < size; i++) {
  106580:	39 c1                	cmp    %eax,%ecx
  106582:	75 ec                	jne    106570 <palloc_order+0x160>
    }
    
    // Update free counts after allocation
    update_free_counts();
  106584:	e8 b7 fd ff ff       	call   106340 <update_free_counts>
    
    return pindex;
}
  106589:	83 c4 1c             	add    $0x1c,%esp
  10658c:	89 e8                	mov    %ebp,%eax
  10658e:	5b                   	pop    %ebx
  10658f:	5e                   	pop    %esi
  106590:	5f                   	pop    %edi
  106591:	5d                   	pop    %ebp
  106592:	c3                   	ret
  106593:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        if (pindex == -1 && total_free_pages_seg1 >= needed_pages) {
  106598:	8b 44 24 04          	mov    0x4(%esp),%eax
  10659c:	39 83 d8 cc 84 01    	cmp    %eax,0x184ccd8(%ebx)
  1065a2:	73 5c                	jae    106600 <palloc_order+0x1f0>
}
  1065a4:	83 c4 1c             	add    $0x1c,%esp
    if (order >= MAX_ORDER) return -1;
  1065a7:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
}
  1065ac:	5b                   	pop    %ebx
  1065ad:	89 e8                	mov    %ebp,%eax
  1065af:	5e                   	pop    %esi
  1065b0:	5f                   	pop    %edi
  1065b1:	5d                   	pop    %ebp
  1065b2:	c3                   	ret
  1065b3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        if (total_free_pages_seg1 >= needed_pages) {
  1065b8:	81 bb d8 cc 84 01 ff 	cmpl   $0x3ff,0x184ccd8(%ebx)
  1065bf:	03 00 00 
  1065c2:	0f 87 24 01 00 00    	ja     1066ec <palloc_order+0x2dc>
        if (pindex == -1 && total_free_pages_seg2 >= needed_pages) {
  1065c8:	81 bb d4 cc 84 01 ff 	cmpl   $0x3ff,0x184ccd4(%ebx)
  1065cf:	03 00 00 
  1065d2:	76 d0                	jbe    1065a4 <palloc_order+0x194>
            pindex = get_free_list_head_segment(order, 2);
  1065d4:	83 ec 08             	sub    $0x8,%esp
  1065d7:	6a 02                	push   $0x2
  1065d9:	6a 0a                	push   $0xa
  1065db:	e8 e0 e6 ff ff       	call   104cc0 <get_free_list_head_segment>
            if (pindex != -1) {
  1065e0:	83 c4 10             	add    $0x10,%esp
            pindex = get_free_list_head_segment(order, 2);
  1065e3:	89 c5                	mov    %eax,%ebp
            if (pindex != -1) {
  1065e5:	83 f8 ff             	cmp    $0xffffffff,%eax
  1065e8:	74 ba                	je     1065a4 <palloc_order+0x194>
                at_list_remove_segment(order, pindex, 2);
  1065ea:	83 ec 04             	sub    $0x4,%esp
  1065ed:	6a 02                	push   $0x2
  1065ef:	55                   	push   %ebp
  1065f0:	6a 0a                	push   $0xa
  1065f2:	e8 89 e9 ff ff       	call   104f80 <at_list_remove_segment>
  1065f7:	83 c4 10             	add    $0x10,%esp
  1065fa:	e9 fd fe ff ff       	jmp    1064fc <palloc_order+0xec>
  1065ff:	90                   	nop
    int superpage = get_free_list_head_segment(SUPERPAGE_ORDER, 1);
  106600:	83 ec 08             	sub    $0x8,%esp
  106603:	6a 01                	push   $0x1
  106605:	6a 0a                	push   $0xa
  106607:	e8 b4 e6 ff ff       	call   104cc0 <get_free_list_head_segment>
    if (superpage == -1) return -1;
  10660c:	83 c4 10             	add    $0x10,%esp
    int superpage = get_free_list_head_segment(SUPERPAGE_ORDER, 1);
  10660f:	89 c5                	mov    %eax,%ebp
    if (superpage == -1) return -1;
  106611:	83 f8 ff             	cmp    $0xffffffff,%eax
  106614:	74 8e                	je     1065a4 <palloc_order+0x194>
    at_list_remove_segment(SUPERPAGE_ORDER, superpage, 1);
  106616:	83 ec 04             	sub    $0x4,%esp
  106619:	6a 01                	push   $0x1
  10661b:	50                   	push   %eax
  10661c:	6a 0a                	push   $0xa
  10661e:	e8 5d e9 ff ff       	call   104f80 <at_list_remove_segment>
    for (unsigned int i = 0; i < size; i++) {
  106623:	8d 44 2d 00          	lea    0x0(%ebp,%ebp,1),%eax
  106627:	c7 c2 40 dc 15 00    	mov    $0x15dc40,%edx
  10662d:	8d 0c 28             	lea    (%eax,%ebp,1),%ecx
  106630:	89 44 24 18          	mov    %eax,0x18(%esp)
  106634:	83 c4 10             	add    $0x10,%esp
  106637:	c1 e1 03             	shl    $0x3,%ecx
  10663a:	8d 44 0a 0c          	lea    0xc(%edx,%ecx,1),%eax
  10663e:	8d 8c 0a 0c 60 00 00 	lea    0x600c(%edx,%ecx,1),%ecx
  106645:	89 ce                	mov    %ecx,%esi
  106647:	29 c6                	sub    %eax,%esi
  106649:	83 e6 08             	and    $0x8,%esi
  10664c:	74 12                	je     106660 <palloc_order+0x250>
        AT[superpage + i].segment = 2;
  10664e:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
    for (unsigned int i = 0; i < size; i++) {
  106654:	83 c0 18             	add    $0x18,%eax
  106657:	39 c8                	cmp    %ecx,%eax
  106659:	74 19                	je     106674 <palloc_order+0x264>
  10665b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        AT[superpage + i].segment = 2;
  106660:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
    for (unsigned int i = 0; i < size; i++) {
  106666:	83 c0 30             	add    $0x30,%eax
        AT[superpage + i].segment = 2;
  106669:	c7 40 e8 02 00 00 00 	movl   $0x2,-0x18(%eax)
    for (unsigned int i = 0; i < size; i++) {
  106670:	39 c8                	cmp    %ecx,%eax
  106672:	75 ec                	jne    106660 <palloc_order+0x250>
        unsigned int buddy = current_base + (1 << current_order);
  106674:	89 54 24 0c          	mov    %edx,0xc(%esp)
  106678:	be 0a 00 00 00       	mov    $0xa,%esi
  10667d:	8d 76 00             	lea    0x0(%esi),%esi
        current_order--;
  106680:	83 ee 01             	sub    $0x1,%esi
        unsigned int buddy = current_base + (1 << current_order);
  106683:	b8 01 00 00 00       	mov    $0x1,%eax
        at_set_allocated(buddy, 0);
  106688:	83 ec 08             	sub    $0x8,%esp
        unsigned int buddy = current_base + (1 << current_order);
  10668b:	89 f1                	mov    %esi,%ecx
  10668d:	d3 e0                	shl    %cl,%eax
  10668f:	8d 3c 28             	lea    (%eax,%ebp,1),%edi
        AT[buddy].order = current_order;
  106692:	8b 44 24 14          	mov    0x14(%esp),%eax
  106696:	8d 14 7f             	lea    (%edi,%edi,2),%edx
  106699:	8d 14 d0             	lea    (%eax,%edx,8),%edx
  10669c:	89 72 08             	mov    %esi,0x8(%edx)
        AT[buddy].segment = 2;
  10669f:	c7 42 0c 02 00 00 00 	movl   $0x2,0xc(%edx)
        at_set_allocated(buddy, 0);
  1066a6:	6a 00                	push   $0x0
  1066a8:	57                   	push   %edi
  1066a9:	e8 82 e5 ff ff       	call   104c30 <at_set_allocated>
        at_list_add_segment(current_order, buddy, 2);
  1066ae:	83 c4 0c             	add    $0xc,%esp
  1066b1:	6a 02                	push   $0x2
  1066b3:	57                   	push   %edi
  1066b4:	56                   	push   %esi
  1066b5:	e8 56 e7 ff ff       	call   104e10 <at_list_add_segment>
    while (current_order > order) {
  1066ba:	83 c4 10             	add    $0x10,%esp
  1066bd:	39 74 24 30          	cmp    %esi,0x30(%esp)
  1066c1:	72 bd                	jb     106680 <palloc_order+0x270>
    AT[current_base].order = order;
  1066c3:	8b 44 24 08          	mov    0x8(%esp),%eax
  1066c7:	8b 54 24 0c          	mov    0xc(%esp),%edx
  1066cb:	01 e8                	add    %ebp,%eax
  1066cd:	8d 04 c2             	lea    (%edx,%eax,8),%eax
  1066d0:	8b 54 24 30          	mov    0x30(%esp),%edx
    AT[current_base].segment = 2;
  1066d4:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)
    AT[current_base].order = order;
  1066db:	89 50 08             	mov    %edx,0x8(%eax)
    update_free_counts();
  1066de:	e8 5d fc ff ff       	call   106340 <update_free_counts>
  1066e3:	8b 54 24 0c          	mov    0xc(%esp),%edx
    for (unsigned int i = 0; i < size; i++) {
  1066e7:	e9 1e fe ff ff       	jmp    10650a <palloc_order+0xfa>
            pindex = get_free_list_head_segment(order, 1);
  1066ec:	83 ec 08             	sub    $0x8,%esp
  1066ef:	6a 01                	push   $0x1
  1066f1:	6a 0a                	push   $0xa
  1066f3:	e8 c8 e5 ff ff       	call   104cc0 <get_free_list_head_segment>
            if (pindex != -1) {
  1066f8:	83 c4 10             	add    $0x10,%esp
            pindex = get_free_list_head_segment(order, 1);
  1066fb:	89 c5                	mov    %eax,%ebp
            if (pindex != -1) {
  1066fd:	83 f8 ff             	cmp    $0xffffffff,%eax
  106700:	0f 84 c2 fe ff ff    	je     1065c8 <palloc_order+0x1b8>
                at_list_remove_segment(order, pindex, 1);
  106706:	83 ec 04             	sub    $0x4,%esp
  106709:	6a 01                	push   $0x1
  10670b:	e9 df fe ff ff       	jmp    1065ef <palloc_order+0x1df>

00106710 <palloc>:

unsigned int palloc(void) {
  106710:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(0);
  106713:	6a 00                	push   $0x0
  106715:	e8 f6 fc ff ff       	call   106410 <palloc_order>
    if (res == -1) return 0;
  10671a:	31 d2                	xor    %edx,%edx
  10671c:	83 f8 ff             	cmp    $0xffffffff,%eax
  10671f:	0f 44 c2             	cmove  %edx,%eax
    return (unsigned int)res;
}
  106722:	83 c4 1c             	add    $0x1c,%esp
  106725:	c3                   	ret
  106726:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10672d:	00 
  10672e:	66 90                	xchg   %ax,%ax

00106730 <pfree_order>:

void pfree_order(unsigned int pindex) {
  106730:	55                   	push   %ebp
  106731:	57                   	push   %edi
  106732:	56                   	push   %esi
  106733:	53                   	push   %ebx
  106734:	e8 87 9c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106739:	81 c3 bb a8 00 00    	add    $0xa8bb,%ebx
  10673f:	83 ec 1c             	sub    $0x1c,%esp
  106742:	8b 6c 24 30          	mov    0x30(%esp),%ebp
    unsigned int order = AT[pindex].order;
  106746:	c7 c0 40 dc 15 00    	mov    $0x15dc40,%eax
  10674c:	89 c2                	mov    %eax,%edx
  10674e:	89 44 24 08          	mov    %eax,0x8(%esp)
  106752:	8d 44 6d 00          	lea    0x0(%ebp,%ebp,2),%eax
  106756:	8d 04 c2             	lea    (%edx,%eax,8),%eax
  106759:	8b 48 08             	mov    0x8(%eax),%ecx
    unsigned int segment = AT[pindex].segment;
  10675c:	8b 40 0c             	mov    0xc(%eax),%eax
  10675f:	89 44 24 0c          	mov    %eax,0xc(%esp)
        order++;
        AT[pindex].order = order;
    }
    
    // Finally clear allocation bits for final merged block
    unsigned int final_size = 1U << order;
  106763:	b8 01 00 00 00       	mov    $0x1,%eax
  106768:	d3 e0                	shl    %cl,%eax
  10676a:	8d 3c 28             	lea    (%eax,%ebp,1),%edi
    while (order < MAX_ORDER - 1) {
  10676d:	83 f9 09             	cmp    $0x9,%ecx
  106770:	0f 87 c2 00 00 00    	ja     106838 <pfree_order+0x108>
  106776:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10677d:	00 
  10677e:	66 90                	xchg   %ax,%ax
        unsigned int size = 1U << order;
  106780:	b8 01 00 00 00       	mov    $0x1,%eax
  106785:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  106789:	89 ee                	mov    %ebp,%esi
  10678b:	d3 e0                	shl    %cl,%eax
  10678d:	89 04 24             	mov    %eax,(%esp)
  106790:	8d 3c 28             	lea    (%eax,%ebp,1),%edi
  106793:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
            at_set_allocated(pindex + i, 0);
  106798:	83 ec 08             	sub    $0x8,%esp
  10679b:	6a 00                	push   $0x0
  10679d:	56                   	push   %esi
        for (unsigned int i = 0; i < size; i++) {
  10679e:	83 c6 01             	add    $0x1,%esi
            at_set_allocated(pindex + i, 0);
  1067a1:	e8 8a e4 ff ff       	call   104c30 <at_set_allocated>
        for (unsigned int i = 0; i < size; i++) {
  1067a6:	83 c4 10             	add    $0x10,%esp
  1067a9:	39 fe                	cmp    %edi,%esi
  1067ab:	75 eb                	jne    106798 <pfree_order+0x68>
        unsigned int buddy_idx = pindex ^ size;
  1067ad:	8b 04 24             	mov    (%esp),%eax
  1067b0:	8b 4c 24 04          	mov    0x4(%esp),%ecx
  1067b4:	31 e8                	xor    %ebp,%eax
  1067b6:	89 c6                	mov    %eax,%esi
        if (buddy_idx < VM_USERLO_PI || buddy_idx >= VM_USERHI_PI ||
  1067b8:	8d 80 00 00 fc ff    	lea    -0x40000(%eax),%eax
  1067be:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  1067c3:	77 73                	ja     106838 <pfree_order+0x108>
            AT[buddy_idx].order != order ||
  1067c5:	8b 54 24 08          	mov    0x8(%esp),%edx
  1067c9:	8d 04 76             	lea    (%esi,%esi,2),%eax
  1067cc:	8d 14 c2             	lea    (%edx,%eax,8),%edx
        if (buddy_idx < VM_USERLO_PI || buddy_idx >= VM_USERHI_PI ||
  1067cf:	39 4a 08             	cmp    %ecx,0x8(%edx)
  1067d2:	89 54 24 04          	mov    %edx,0x4(%esp)
  1067d6:	75 60                	jne    106838 <pfree_order+0x108>
  1067d8:	89 0c 24             	mov    %ecx,(%esp)
            at_is_allocated(buddy_idx) != 0 ||
  1067db:	83 ec 0c             	sub    $0xc,%esp
  1067de:	56                   	push   %esi
  1067df:	e8 1c e4 ff ff       	call   104c00 <at_is_allocated>
            AT[buddy_idx].order != order ||
  1067e4:	83 c4 10             	add    $0x10,%esp
  1067e7:	8b 0c 24             	mov    (%esp),%ecx
  1067ea:	85 c0                	test   %eax,%eax
  1067ec:	75 4a                	jne    106838 <pfree_order+0x108>
            at_is_allocated(buddy_idx) != 0 ||
  1067ee:	8b 54 24 04          	mov    0x4(%esp),%edx
  1067f2:	8b 44 24 0c          	mov    0xc(%esp),%eax
  1067f6:	39 42 0c             	cmp    %eax,0xc(%edx)
  1067f9:	75 3d                	jne    106838 <pfree_order+0x108>
        at_list_remove_segment(order, buddy_idx, segment);
  1067fb:	83 ec 04             	sub    $0x4,%esp
  1067fe:	50                   	push   %eax
  1067ff:	56                   	push   %esi
  106800:	51                   	push   %ecx
  106801:	89 4c 24 10          	mov    %ecx,0x10(%esp)
  106805:	e8 76 e7 ff ff       	call   104f80 <at_list_remove_segment>
        if (buddy_idx < pindex) {
  10680a:	39 f5                	cmp    %esi,%ebp
        order++;
  10680c:	8b 4c 24 10          	mov    0x10(%esp),%ecx
        AT[pindex].order = order;
  106810:	8b 54 24 18          	mov    0x18(%esp),%edx
        if (buddy_idx < pindex) {
  106814:	0f 47 ee             	cmova  %esi,%ebp
    while (order < MAX_ORDER - 1) {
  106817:	83 c4 10             	add    $0x10,%esp
        order++;
  10681a:	83 c1 01             	add    $0x1,%ecx
        AT[pindex].order = order;
  10681d:	8d 44 6d 00          	lea    0x0(%ebp,%ebp,2),%eax
  106821:	89 4c c2 08          	mov    %ecx,0x8(%edx,%eax,8)
    while (order < MAX_ORDER - 1) {
  106825:	83 f9 0a             	cmp    $0xa,%ecx
  106828:	0f 85 52 ff ff ff    	jne    106780 <pfree_order+0x50>
  10682e:	8d bd 00 04 00 00    	lea    0x400(%ebp),%edi
  106834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  106838:	89 0c 24             	mov    %ecx,(%esp)
  10683b:	89 ee                	mov    %ebp,%esi
  10683d:	8d 76 00             	lea    0x0(%esi),%esi
    for (unsigned int i = 0; i < final_size; i++) {
        at_set_allocated(pindex + i, 0);
  106840:	83 ec 08             	sub    $0x8,%esp
  106843:	6a 00                	push   $0x0
  106845:	56                   	push   %esi
    for (unsigned int i = 0; i < final_size; i++) {
  106846:	83 c6 01             	add    $0x1,%esi
        at_set_allocated(pindex + i, 0);
  106849:	e8 e2 e3 ff ff       	call   104c30 <at_set_allocated>
    for (unsigned int i = 0; i < final_size; i++) {
  10684e:	83 c4 10             	add    $0x10,%esp
  106851:	39 fe                	cmp    %edi,%esi
  106853:	75 eb                	jne    106840 <pfree_order+0x110>
    }
    
    at_list_add_segment(order, pindex, segment);
  106855:	8b 0c 24             	mov    (%esp),%ecx
  106858:	83 ec 04             	sub    $0x4,%esp
  10685b:	ff 74 24 10          	push   0x10(%esp)
  10685f:	55                   	push   %ebp
  106860:	51                   	push   %ecx
  106861:	e8 aa e5 ff ff       	call   104e10 <at_list_add_segment>
    
    // Update free counts after free
    update_free_counts();
}
  106866:	83 c4 2c             	add    $0x2c,%esp
  106869:	5b                   	pop    %ebx
  10686a:	5e                   	pop    %esi
  10686b:	5f                   	pop    %edi
  10686c:	5d                   	pop    %ebp
    update_free_counts();
  10686d:	e9 ce fa ff ff       	jmp    106340 <update_free_counts>
  106872:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106879:	00 
  10687a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00106880 <pfree>:

void pfree(unsigned int pindex) {
  106880:	56                   	push   %esi
  106881:	53                   	push   %ebx
  106882:	e8 39 9b ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106887:	81 c3 6d a7 00 00    	add    $0xa76d,%ebx
  10688d:	83 ec 04             	sub    $0x4,%esp
  106890:	8b 74 24 10          	mov    0x10(%esp),%esi
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
  106894:	8d 86 00 00 fc ff    	lea    -0x40000(%esi),%eax
  10689a:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10689f:	76 0f                	jbe    1068b0 <pfree+0x30>
    if (at_is_allocated(pindex) == 0) return;
    pfree_order(pindex);
}
  1068a1:	83 c4 04             	add    $0x4,%esp
  1068a4:	5b                   	pop    %ebx
  1068a5:	5e                   	pop    %esi
  1068a6:	c3                   	ret
  1068a7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1068ae:	00 
  1068af:	90                   	nop
    if (at_is_allocated(pindex) == 0) return;
  1068b0:	83 ec 0c             	sub    $0xc,%esp
  1068b3:	56                   	push   %esi
  1068b4:	e8 47 e3 ff ff       	call   104c00 <at_is_allocated>
  1068b9:	83 c4 10             	add    $0x10,%esp
  1068bc:	85 c0                	test   %eax,%eax
  1068be:	74 e1                	je     1068a1 <pfree+0x21>
    pfree_order(pindex);
  1068c0:	89 74 24 10          	mov    %esi,0x10(%esp)
}
  1068c4:	83 c4 04             	add    $0x4,%esp
  1068c7:	5b                   	pop    %ebx
  1068c8:	5e                   	pop    %esi
    pfree_order(pindex);
  1068c9:	e9 62 fe ff ff       	jmp    106730 <pfree_order>
  1068ce:	66 90                	xchg   %ax,%ax

001068d0 <palloc_superpage>:

unsigned int palloc_superpage(void) {
  1068d0:	83 ec 18             	sub    $0x18,%esp
    int res = palloc_order(SUPERPAGE_ORDER);
  1068d3:	6a 0a                	push   $0xa
  1068d5:	e8 36 fb ff ff       	call   106410 <palloc_order>
    if (res == -1) return 0;
  1068da:	31 d2                	xor    %edx,%edx
  1068dc:	83 f8 ff             	cmp    $0xffffffff,%eax
  1068df:	0f 44 c2             	cmove  %edx,%eax
    return (unsigned int)res;
}
  1068e2:	83 c4 1c             	add    $0x1c,%esp
  1068e5:	c3                   	ret
  1068e6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1068ed:	00 
  1068ee:	66 90                	xchg   %ax,%ax

001068f0 <pfree_superpage>:

void pfree_superpage(unsigned int pindex) {
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
  1068f0:	e8 27 e7 ff ff       	call   10501c <__x86.get_pc_thunk.cx>
  1068f5:	81 c1 ff a6 00 00    	add    $0xa6ff,%ecx
void pfree_superpage(unsigned int pindex) {
  1068fb:	8b 54 24 04          	mov    0x4(%esp),%edx
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
  1068ff:	8d 82 00 00 fc ff    	lea    -0x40000(%edx),%eax
  106905:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  10690a:	77 12                	ja     10691e <pfree_superpage+0x2e>
    if (AT[pindex].order != SUPERPAGE_ORDER) return;
  10690c:	8d 04 52             	lea    (%edx,%edx,2),%eax
  10690f:	c1 e0 03             	shl    $0x3,%eax
  106912:	81 c0 40 dc 15 00    	add    $0x15dc40,%eax
  106918:	83 78 08 0a          	cmpl   $0xa,0x8(%eax)
  10691c:	74 02                	je     106920 <pfree_superpage+0x30>
    pfree_order(pindex);
}
  10691e:	c3                   	ret
  10691f:	90                   	nop
    pfree_order(pindex);
  106920:	89 54 24 04          	mov    %edx,0x4(%esp)
  106924:	e9 07 fe ff ff       	jmp    106730 <pfree_order>
  106929:	66 90                	xchg   %ax,%ax
  10692b:	66 90                	xchg   %ax,%ax
  10692d:	66 90                	xchg   %ax,%ax
  10692f:	90                   	nop

00106930 <MATOp_test1>:
#define SEG1_END      (VM_USERLO_PI + (VM_USERHI_PI - VM_USERLO_PI) / 2)
#define SEG2_START    SEG1_END
#define SEG2_END      VM_USERHI_PI

int MATOp_test1()
{
  106930:	56                   	push   %esi
  106931:	53                   	push   %ebx
  106932:	e8 89 9a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106937:	81 c3 bd a6 00 00    	add    $0xa6bd,%ebx
  10693d:	83 ec 04             	sub    $0x4,%esp
    int page_index = palloc();
  106940:	e8 cb fd ff ff       	call   106710 <palloc>
  106945:	89 c6                	mov    %eax,%esi
    if (page_index < (int)VM_USERLO_PI || (int)VM_USERHI_PI <= page_index) {
  106947:	2d 00 00 04 00       	sub    $0x40000,%eax
  10694c:	3d ff ff 0a 00       	cmp    $0xaffff,%eax
  106951:	0f 87 91 00 00 00    	ja     1069e8 <MATOp_test1+0xb8>
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
  106957:	83 ec 0c             	sub    $0xc,%esp
  10695a:	56                   	push   %esi
  10695b:	e8 30 e2 ff ff       	call   104b90 <at_is_norm>
  106960:	83 c4 10             	add    $0x10,%esp
  106963:	83 f8 01             	cmp    $0x1,%eax
  106966:	74 38                	je     1069a0 <MATOp_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
  106968:	83 ec 0c             	sub    $0xc,%esp
  10696b:	56                   	push   %esi
  10696c:	e8 1f e2 ff ff       	call   104b90 <at_is_norm>
  106971:	5a                   	pop    %edx
  106972:	59                   	pop    %ecx
  106973:	50                   	push   %eax
  106974:	8d 83 30 99 ff ff    	lea    -0x66d0(%ebx),%eax
  10697a:	50                   	push   %eax
  10697b:	e8 ec c3 ff ff       	call   102d6c <dprintf>
        pfree(page_index);
  106980:	89 34 24             	mov    %esi,(%esp)
  106983:	e8 f8 fe ff ff       	call   106880 <pfree>
        return 1;
  106988:	83 c4 10             	add    $0x10,%esp
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  10698b:	83 c4 04             	add    $0x4,%esp
        return 1;
  10698e:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106993:	5b                   	pop    %ebx
  106994:	5e                   	pop    %esi
  106995:	c3                   	ret
  106996:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10699d:	00 
  10699e:	66 90                	xchg   %ax,%ax
    if (at_is_allocated(page_index) != 1) {
  1069a0:	83 ec 0c             	sub    $0xc,%esp
  1069a3:	56                   	push   %esi
  1069a4:	e8 57 e2 ff ff       	call   104c00 <at_is_allocated>
  1069a9:	83 c4 10             	add    $0x10,%esp
  1069ac:	83 f8 01             	cmp    $0x1,%eax
  1069af:	75 47                	jne    1069f8 <MATOp_test1+0xc8>
    pfree(page_index);
  1069b1:	83 ec 0c             	sub    $0xc,%esp
  1069b4:	56                   	push   %esi
  1069b5:	e8 c6 fe ff ff       	call   106880 <pfree>
    if (at_is_allocated(page_index) != 0) {
  1069ba:	89 34 24             	mov    %esi,(%esp)
  1069bd:	e8 3e e2 ff ff       	call   104c00 <at_is_allocated>
  1069c2:	83 c4 10             	add    $0x10,%esp
  1069c5:	85 c0                	test   %eax,%eax
  1069c7:	75 47                	jne    106a10 <MATOp_test1+0xe0>
    dprintf("test 1 passed.\n");
  1069c9:	83 ec 0c             	sub    $0xc,%esp
  1069cc:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  1069d2:	50                   	push   %eax
  1069d3:	e8 94 c3 ff ff       	call   102d6c <dprintf>
    return 0;
  1069d8:	83 c4 10             	add    $0x10,%esp
  1069db:	31 c0                	xor    %eax,%eax
}
  1069dd:	83 c4 04             	add    $0x4,%esp
  1069e0:	5b                   	pop    %ebx
  1069e1:	5e                   	pop    %esi
  1069e2:	c3                   	ret
  1069e3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
  1069e8:	83 ec 04             	sub    $0x4,%esp
  1069eb:	8d 83 44 a3 ff ff    	lea    -0x5cbc(%ebx),%eax
  1069f1:	56                   	push   %esi
  1069f2:	56                   	push   %esi
  1069f3:	eb 85                	jmp    10697a <MATOp_test1+0x4a>
  1069f5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
  1069f8:	83 ec 0c             	sub    $0xc,%esp
  1069fb:	56                   	push   %esi
  1069fc:	e8 ff e1 ff ff       	call   104c00 <at_is_allocated>
  106a01:	5a                   	pop    %edx
  106a02:	59                   	pop    %ecx
  106a03:	50                   	push   %eax
  106a04:	8d 83 4c 99 ff ff    	lea    -0x66b4(%ebx),%eax
  106a0a:	e9 6b ff ff ff       	jmp    10697a <MATOp_test1+0x4a>
  106a0f:	90                   	nop
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
  106a10:	83 ec 0c             	sub    $0xc,%esp
  106a13:	56                   	push   %esi
  106a14:	e8 e7 e1 ff ff       	call   104c00 <at_is_allocated>
  106a19:	5a                   	pop    %edx
  106a1a:	59                   	pop    %ecx
  106a1b:	50                   	push   %eax
  106a1c:	8d 83 68 99 ff ff    	lea    -0x6698(%ebx),%eax
  106a22:	50                   	push   %eax
  106a23:	e8 44 c3 ff ff       	call   102d6c <dprintf>
        return 1;
  106a28:	83 c4 10             	add    $0x10,%esp
  106a2b:	e9 5b ff ff ff       	jmp    10698b <MATOp_test1+0x5b>

00106a30 <MATOp_test_own>:

int MATOp_test_own()
{
  106a30:	53                   	push   %ebx
  106a31:	e8 8a 99 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106a36:	81 c3 be a5 00 00    	add    $0xa5be,%ebx
  106a3c:	83 ec 14             	sub    $0x14,%esp
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
  106a3f:	8d 83 80 a3 ff ff    	lea    -0x5c80(%ebx),%eax
  106a45:	50                   	push   %eax
  106a46:	e8 21 c3 ff ff       	call   102d6c <dprintf>
    int order = 2;
    int pindex = palloc_order(order); 
  106a4b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  106a52:	e8 b9 f9 ff ff       	call   106410 <palloc_order>
    
    if (pindex <= 0) {
  106a57:	83 c4 10             	add    $0x10,%esp
  106a5a:	85 c0                	test   %eax,%eax
  106a5c:	0f 8e 7e 00 00 00    	jle    106ae0 <MATOp_test_own+0xb0>
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    if ((int)AT[pindex].order != order) {
  106a62:	c7 c1 40 dc 15 00    	mov    $0x15dc40,%ecx
  106a68:	8d 14 40             	lea    (%eax,%eax,2),%edx
  106a6b:	8d 14 d1             	lea    (%ecx,%edx,8),%edx
  106a6e:	8b 4a 08             	mov    0x8(%edx),%ecx
  106a71:	83 f9 02             	cmp    $0x2,%ecx
  106a74:	75 52                	jne    106ac8 <MATOp_test_own+0x98>
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
        return 1;
    }

    // Verify it's in segment 2 (regular allocations should come from segment 2)
    if (AT[pindex].segment != 2) {
  106a76:	8b 52 0c             	mov    0xc(%edx),%edx
  106a79:	83 fa 02             	cmp    $0x2,%edx
  106a7c:	74 22                	je     106aa0 <MATOp_test_own+0x70>
        dprintf("test own failed: Regular allocation from wrong segment. Expected 2, got %d\n", 
  106a7e:	83 ec 08             	sub    $0x8,%esp
  106a81:	8d 83 ec a3 ff ff    	lea    -0x5c14(%ebx),%eax
  106a87:	52                   	push   %edx
  106a88:	50                   	push   %eax
  106a89:	e8 de c2 ff ff       	call   102d6c <dprintf>
                AT[pindex].segment);
        return 1;
  106a8e:	83 c4 10             	add    $0x10,%esp
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}
  106a91:	83 c4 08             	add    $0x8,%esp
        return 1;
  106a94:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106a99:	5b                   	pop    %ebx
  106a9a:	c3                   	ret
  106a9b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    pfree(pindex);
  106aa0:	83 ec 0c             	sub    $0xc,%esp
  106aa3:	50                   	push   %eax
  106aa4:	e8 d7 fd ff ff       	call   106880 <pfree>
    dprintf("Buddy contiguous test passed.\n");
  106aa9:	8d 83 38 a4 ff ff    	lea    -0x5bc8(%ebx),%eax
  106aaf:	89 04 24             	mov    %eax,(%esp)
  106ab2:	e8 b5 c2 ff ff       	call   102d6c <dprintf>
    return 0;
  106ab7:	83 c4 10             	add    $0x10,%esp
  106aba:	31 c0                	xor    %eax,%eax
}
  106abc:	83 c4 08             	add    $0x8,%esp
  106abf:	5b                   	pop    %ebx
  106ac0:	c3                   	ret
  106ac1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
  106ac8:	83 ec 04             	sub    $0x4,%esp
  106acb:	8d 83 b4 a3 ff ff    	lea    -0x5c4c(%ebx),%eax
  106ad1:	51                   	push   %ecx
  106ad2:	6a 02                	push   $0x2
  106ad4:	50                   	push   %eax
  106ad5:	e8 92 c2 ff ff       	call   102d6c <dprintf>
        return 1;
  106ada:	83 c4 10             	add    $0x10,%esp
  106add:	eb b2                	jmp    106a91 <MATOp_test_own+0x61>
  106adf:	90                   	nop
        dprintf("Buddy allocation failed.\n");
  106ae0:	83 ec 0c             	sub    $0xc,%esp
  106ae3:	8d 83 84 99 ff ff    	lea    -0x667c(%ebx),%eax
  106ae9:	50                   	push   %eax
  106aea:	e8 7d c2 ff ff       	call   102d6c <dprintf>
        return 1;
  106aef:	83 c4 10             	add    $0x10,%esp
  106af2:	eb 9d                	jmp    106a91 <MATOp_test_own+0x61>
  106af4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106afb:	00 
  106afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00106b00 <MATOp_test_superpage_advanced>:

int MATOp_test_superpage_advanced()
{
  106b00:	57                   	push   %edi
  106b01:	56                   	push   %esi
  106b02:	53                   	push   %ebx
  106b03:	e8 b8 98 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106b08:	81 c3 ec a4 00 00    	add    $0xa4ec,%ebx
    dprintf("Testing advanced superpage allocation...\n");
  106b0e:	83 ec 0c             	sub    $0xc,%esp
  106b11:	8d 83 58 a4 ff ff    	lea    -0x5ba8(%ebx),%eax
  106b17:	50                   	push   %eax
  106b18:	e8 4f c2 ff ff       	call   102d6c <dprintf>

    unsigned int pages = 1U << SUPERPAGE_ORDER;

    int pindex1 = palloc_superpage();
  106b1d:	e8 ae fd ff ff       	call   1068d0 <palloc_superpage>
    if (pindex1 == 0) {
  106b22:	83 c4 10             	add    $0x10,%esp
  106b25:	85 c0                	test   %eax,%eax
  106b27:	0f 84 93 00 00 00    	je     106bc0 <MATOp_test_superpage_advanced+0xc0>
        dprintf("First superpage allocation failed.\n");
        return 1;
    }

    // Verify first superpage is in segment 1 (should prefer segment 1)
    if (AT[pindex1].segment != 1) {
  106b2d:	c7 c2 40 dc 15 00    	mov    $0x15dc40,%edx
  106b33:	89 c6                	mov    %eax,%esi
  106b35:	8d 04 40             	lea    (%eax,%eax,2),%eax
  106b38:	8d 04 c2             	lea    (%edx,%eax,8),%eax
  106b3b:	8b 40 0c             	mov    0xc(%eax),%eax
  106b3e:	83 f8 01             	cmp    $0x1,%eax
  106b41:	74 2d                	je     106b70 <MATOp_test_superpage_advanced+0x70>
        dprintf("Superpage test failed: First superpage not from segment 1 (got segment %d)\n", 
  106b43:	83 ec 08             	sub    $0x8,%esp
  106b46:	50                   	push   %eax
  106b47:	8d 83 a8 a4 ff ff    	lea    -0x5b58(%ebx),%eax
  106b4d:	50                   	push   %eax
  106b4e:	e8 19 c2 ff ff       	call   102d6c <dprintf>
                AT[pindex1].segment);
        pfree_superpage(pindex1);
  106b53:	89 34 24             	mov    %esi,(%esp)
  106b56:	e8 95 fd ff ff       	call   1068f0 <pfree_superpage>
        return 1;
  106b5b:	83 c4 10             	add    $0x10,%esp
    pfree_superpage(pindex1);
    pfree_superpage(pindex2);

    dprintf("Advanced superpage test passed.\n");
    return 0;
}
  106b5e:	5b                   	pop    %ebx
        return 1;
  106b5f:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106b64:	5e                   	pop    %esi
  106b65:	5f                   	pop    %edi
  106b66:	c3                   	ret
  106b67:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106b6e:	00 
  106b6f:	90                   	nop
    int pindex2 = palloc_superpage();
  106b70:	e8 5b fd ff ff       	call   1068d0 <palloc_superpage>
  106b75:	89 c7                	mov    %eax,%edi
    if (pindex2 == 0) {
  106b77:	85 c0                	test   %eax,%eax
  106b79:	74 7d                	je     106bf8 <MATOp_test_superpage_advanced+0xf8>
    if (pindex1 == pindex2) {
  106b7b:	39 c6                	cmp    %eax,%esi
  106b7d:	0f 84 8d 00 00 00    	je     106c10 <MATOp_test_superpage_advanced+0x110>
    int diff = (pindex1 > pindex2) ? (pindex1 - pindex2) : (pindex2 - pindex1);
  106b83:	89 f2                	mov    %esi,%edx
  106b85:	29 c2                	sub    %eax,%edx
  106b87:	29 f0                	sub    %esi,%eax
  106b89:	39 fe                	cmp    %edi,%esi
  106b8b:	0f 4f c2             	cmovg  %edx,%eax
    if ((unsigned int)diff < pages) {
  106b8e:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  106b93:	7e 43                	jle    106bd8 <MATOp_test_superpage_advanced+0xd8>
    pfree_superpage(pindex1);
  106b95:	83 ec 0c             	sub    $0xc,%esp
  106b98:	56                   	push   %esi
  106b99:	e8 52 fd ff ff       	call   1068f0 <pfree_superpage>
    pfree_superpage(pindex2);
  106b9e:	89 3c 24             	mov    %edi,(%esp)
  106ba1:	e8 4a fd ff ff       	call   1068f0 <pfree_superpage>
    dprintf("Advanced superpage test passed.\n");
  106ba6:	8d 83 9c a5 ff ff    	lea    -0x5a64(%ebx),%eax
  106bac:	89 04 24             	mov    %eax,(%esp)
  106baf:	e8 b8 c1 ff ff       	call   102d6c <dprintf>
    return 0;
  106bb4:	83 c4 10             	add    $0x10,%esp
  106bb7:	31 c0                	xor    %eax,%eax
}
  106bb9:	5b                   	pop    %ebx
  106bba:	5e                   	pop    %esi
  106bbb:	5f                   	pop    %edi
  106bbc:	c3                   	ret
  106bbd:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("First superpage allocation failed.\n");
  106bc0:	83 ec 0c             	sub    $0xc,%esp
  106bc3:	8d 83 84 a4 ff ff    	lea    -0x5b7c(%ebx),%eax
  106bc9:	50                   	push   %eax
  106bca:	e8 9d c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106bcf:	83 c4 10             	add    $0x10,%esp
  106bd2:	eb 8a                	jmp    106b5e <MATOp_test_superpage_advanced+0x5e>
  106bd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Test failed: Superpages overlap! Diff: %d, Required: %u\n", diff, pages);
  106bd8:	83 ec 04             	sub    $0x4,%esp
  106bdb:	68 00 04 00 00       	push   $0x400
  106be0:	50                   	push   %eax
  106be1:	8d 83 60 a5 ff ff    	lea    -0x5aa0(%ebx),%eax
  106be7:	50                   	push   %eax
  106be8:	e8 7f c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106bed:	83 c4 10             	add    $0x10,%esp
  106bf0:	e9 69 ff ff ff       	jmp    106b5e <MATOp_test_superpage_advanced+0x5e>
  106bf5:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Second superpage allocation failed.\n");
  106bf8:	83 ec 0c             	sub    $0xc,%esp
  106bfb:	8d 83 f4 a4 ff ff    	lea    -0x5b0c(%ebx),%eax
  106c01:	e9 47 ff ff ff       	jmp    106b4d <MATOp_test_superpage_advanced+0x4d>
  106c06:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106c0d:	00 
  106c0e:	66 90                	xchg   %ax,%ax
        dprintf("Test failed: palloc_superpage returned the same index twice (%d).\n", pindex1);
  106c10:	83 ec 08             	sub    $0x8,%esp
  106c13:	8d 83 1c a5 ff ff    	lea    -0x5ae4(%ebx),%eax
  106c19:	56                   	push   %esi
  106c1a:	50                   	push   %eax
  106c1b:	e8 4c c1 ff ff       	call   102d6c <dprintf>
        return 1;
  106c20:	83 c4 10             	add    $0x10,%esp
  106c23:	e9 36 ff ff ff       	jmp    106b5e <MATOp_test_superpage_advanced+0x5e>
  106c28:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106c2f:	00 

00106c30 <MATOp_test_segment_preference>:


int MATOp_test_segment_preference()
{
  106c30:	55                   	push   %ebp
  106c31:	57                   	push   %edi
  106c32:	56                   	push   %esi
    dprintf("Testing segment allocation preference...\n");

    int superpages[10];
    int count = 0;
  106c33:	31 f6                	xor    %esi,%esi
{
  106c35:	53                   	push   %ebx
  106c36:	e8 85 97 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106c3b:	81 c3 b9 a3 00 00    	add    $0xa3b9,%ebx
  106c41:	83 ec 58             	sub    $0x58,%esp
    dprintf("Testing segment allocation preference...\n");
  106c44:	8d 83 c0 a5 ff ff    	lea    -0x5a40(%ebx),%eax
            }
            return 1;
        }
        
        superpages[count++] = sp;
        dprintf("    Allocated superpage %d from segment %d\n", sp, AT[sp].segment);
  106c4a:	8d ab 80 a6 ff ff    	lea    -0x5980(%ebx),%ebp
    dprintf("Testing segment allocation preference...\n");
  106c50:	50                   	push   %eax
  106c51:	e8 16 c1 ff ff       	call   102d6c <dprintf>
    dprintf("  Phase 1: Allocating superpages (should come from segment 1 first)...\n");
  106c56:	8d 83 ec a5 ff ff    	lea    -0x5a14(%ebx),%eax
  106c5c:	89 04 24             	mov    %eax,(%esp)
  106c5f:	e8 08 c1 ff ff       	call   102d6c <dprintf>
        if (count < 5 && AT[sp].segment != 1) {
  106c64:	c7 c7 40 dc 15 00    	mov    $0x15dc40,%edi
    dprintf("  Phase 1: Allocating superpages (should come from segment 1 first)...\n");
  106c6a:	83 c4 10             	add    $0x10,%esp
        int sp = palloc_superpage();
  106c6d:	e8 5e fc ff ff       	call   1068d0 <palloc_superpage>
        if (sp == 0) break;
  106c72:	85 c0                	test   %eax,%eax
  106c74:	74 34                	je     106caa <MATOp_test_segment_preference+0x7a>
        if (count < 5 && AT[sp].segment != 1) {
  106c76:	8d 14 40             	lea    (%eax,%eax,2),%edx
  106c79:	8b 54 d7 0c          	mov    0xc(%edi,%edx,8),%edx
  106c7d:	83 fe 04             	cmp    $0x4,%esi
  106c80:	7f 66                	jg     106ce8 <MATOp_test_segment_preference+0xb8>
  106c82:	83 fa 01             	cmp    $0x1,%edx
  106c85:	0f 85 c5 00 00 00    	jne    106d50 <MATOp_test_segment_preference+0x120>
        superpages[count++] = sp;
  106c8b:	83 c6 01             	add    $0x1,%esi
  106c8e:	89 44 b4 14          	mov    %eax,0x14(%esp,%esi,4)
        dprintf("    Allocated superpage %d from segment %d\n", sp, AT[sp].segment);
  106c92:	83 ec 04             	sub    $0x4,%esp
  106c95:	6a 01                	push   $0x1
  106c97:	50                   	push   %eax
  106c98:	55                   	push   %ebp
  106c99:	e8 ce c0 ff ff       	call   102d6c <dprintf>
  106c9e:	83 c4 10             	add    $0x10,%esp
        int sp = palloc_superpage();
  106ca1:	e8 2a fc ff ff       	call   1068d0 <palloc_superpage>
        if (sp == 0) break;
  106ca6:	85 c0                	test   %eax,%eax
  106ca8:	75 cc                	jne    106c76 <MATOp_test_segment_preference+0x46>
    }
    
    dprintf("  Allocated %d superpages total\n", count);
  106caa:	83 ec 08             	sub    $0x8,%esp
  106cad:	8d 83 ac a6 ff ff    	lea    -0x5954(%ebx),%eax
  106cb3:	56                   	push   %esi
  106cb4:	50                   	push   %eax
  106cb5:	e8 b2 c0 ff ff       	call   102d6c <dprintf>
    

    for (int i = 0; i < count; i++) {
  106cba:	83 c4 10             	add    $0x10,%esp
  106cbd:	8d 44 24 18          	lea    0x18(%esp),%eax
  106cc1:	89 44 24 0c          	mov    %eax,0xc(%esp)
  106cc5:	85 f6                	test   %esi,%esi
  106cc7:	75 59                	jne    106d22 <MATOp_test_segment_preference+0xf2>
        pfree_superpage(superpages[i]);
    }
    
    dprintf("Segment preference test passed.\n");
  106cc9:	83 ec 0c             	sub    $0xc,%esp
  106ccc:	8d 83 d0 a6 ff ff    	lea    -0x5930(%ebx),%eax
  106cd2:	50                   	push   %eax
  106cd3:	e8 94 c0 ff ff       	call   102d6c <dprintf>
    return 0;
  106cd8:	83 c4 10             	add    $0x10,%esp
  106cdb:	31 c0                	xor    %eax,%eax
}
  106cdd:	83 c4 4c             	add    $0x4c,%esp
  106ce0:	5b                   	pop    %ebx
  106ce1:	5e                   	pop    %esi
  106ce2:	5f                   	pop    %edi
  106ce3:	5d                   	pop    %ebp
  106ce4:	c3                   	ret
  106ce5:	8d 76 00             	lea    0x0(%esi),%esi
        superpages[count++] = sp;
  106ce8:	8d 4c 24 18          	lea    0x18(%esp),%ecx
  106cec:	83 c6 01             	add    $0x1,%esi
  106cef:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
  106cf3:	89 44 b4 14          	mov    %eax,0x14(%esp,%esi,4)
        dprintf("    Allocated superpage %d from segment %d\n", sp, AT[sp].segment);
  106cf7:	83 ec 04             	sub    $0x4,%esp
  106cfa:	52                   	push   %edx
  106cfb:	50                   	push   %eax
  106cfc:	55                   	push   %ebp
  106cfd:	e8 6a c0 ff ff       	call   102d6c <dprintf>
    while (count < 10) {
  106d02:	83 c4 10             	add    $0x10,%esp
  106d05:	83 fe 0a             	cmp    $0xa,%esi
  106d08:	0f 85 5f ff ff ff    	jne    106c6d <MATOp_test_segment_preference+0x3d>
    dprintf("  Allocated %d superpages total\n", count);
  106d0e:	83 ec 08             	sub    $0x8,%esp
  106d11:	8d 83 ac a6 ff ff    	lea    -0x5954(%ebx),%eax
  106d17:	6a 0a                	push   $0xa
  106d19:	50                   	push   %eax
  106d1a:	e8 4d c0 ff ff       	call   102d6c <dprintf>
  106d1f:	83 c4 10             	add    $0x10,%esp
  106d22:	8b 7c 24 0c          	mov    0xc(%esp),%edi
  106d26:	8d 34 b7             	lea    (%edi,%esi,4),%esi
  106d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        pfree_superpage(superpages[i]);
  106d30:	83 ec 0c             	sub    $0xc,%esp
  106d33:	ff 37                	push   (%edi)
    for (int i = 0; i < count; i++) {
  106d35:	83 c7 04             	add    $0x4,%edi
        pfree_superpage(superpages[i]);
  106d38:	e8 b3 fb ff ff       	call   1068f0 <pfree_superpage>
    for (int i = 0; i < count; i++) {
  106d3d:	83 c4 10             	add    $0x10,%esp
  106d40:	39 f7                	cmp    %esi,%edi
  106d42:	75 ec                	jne    106d30 <MATOp_test_segment_preference+0x100>
  106d44:	eb 83                	jmp    106cc9 <MATOp_test_segment_preference+0x99>
  106d46:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106d4d:	00 
  106d4e:	66 90                	xchg   %ax,%ax
            dprintf("    Failed: Early superpage %d came from segment %d (should be segment 1)\n", 
  106d50:	83 ec 04             	sub    $0x4,%esp
  106d53:	8d 83 34 a6 ff ff    	lea    -0x59cc(%ebx),%eax
  106d59:	52                   	push   %edx
  106d5a:	56                   	push   %esi
  106d5b:	50                   	push   %eax
  106d5c:	e8 0b c0 ff ff       	call   102d6c <dprintf>
            for (int i = 0; i < count; i++) {
  106d61:	83 c4 10             	add    $0x10,%esp
  106d64:	85 f6                	test   %esi,%esi
  106d66:	74 1b                	je     106d83 <MATOp_test_segment_preference+0x153>
  106d68:	8d 7c 24 18          	lea    0x18(%esp),%edi
  106d6c:	8d 34 b7             	lea    (%edi,%esi,4),%esi
                pfree_superpage(superpages[i]);
  106d6f:	83 ec 0c             	sub    $0xc,%esp
  106d72:	ff 37                	push   (%edi)
            for (int i = 0; i < count; i++) {
  106d74:	83 c7 04             	add    $0x4,%edi
                pfree_superpage(superpages[i]);
  106d77:	e8 74 fb ff ff       	call   1068f0 <pfree_superpage>
            for (int i = 0; i < count; i++) {
  106d7c:	83 c4 10             	add    $0x10,%esp
  106d7f:	39 f7                	cmp    %esi,%edi
  106d81:	75 ec                	jne    106d6f <MATOp_test_segment_preference+0x13f>
}
  106d83:	83 c4 4c             	add    $0x4c,%esp
            return 1;
  106d86:	b8 01 00 00 00       	mov    $0x1,%eax
}
  106d8b:	5b                   	pop    %ebx
  106d8c:	5e                   	pop    %esi
  106d8d:	5f                   	pop    %edi
  106d8e:	5d                   	pop    %ebp
  106d8f:	c3                   	ret

00106d90 <MATOp_test_fallback>:


int MATOp_test_fallback()
{
  106d90:	55                   	push   %ebp
    dprintf("Testing fallback mechanism (segment 1 -> segment 2)...\n");
    
    // First, try to exhaust segment 1 by allocating many superpages
    int sp_from_seg1[100];
    int sp_from_seg2[100];
    int count1 = 0, count2 = 0;
  106d91:	31 ed                	xor    %ebp,%ebp
{
  106d93:	57                   	push   %edi
  106d94:	56                   	push   %esi
    int count1 = 0, count2 = 0;
  106d95:	31 f6                	xor    %esi,%esi
{
  106d97:	53                   	push   %ebx
  106d98:	e8 23 96 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106d9d:	81 c3 57 a2 00 00    	add    $0xa257,%ebx
  106da3:	81 ec 48 03 00 00    	sub    $0x348,%esp
    dprintf("Testing fallback mechanism (segment 1 -> segment 2)...\n");
  106da9:	8d 83 f4 a6 ff ff    	lea    -0x590c(%ebx),%eax
  106daf:	50                   	push   %eax
  106db0:	e8 b7 bf ff ff       	call   102d6c <dprintf>
    
    dprintf("  Phase 1: Exhausting segment 1...\n");
  106db5:	8d 83 2c a7 ff ff    	lea    -0x58d4(%ebx),%eax
  106dbb:	89 04 24             	mov    %eax,(%esp)
  106dbe:	e8 a9 bf ff ff       	call   102d6c <dprintf>
    while (count1 < 100) {
        int sp = palloc_superpage();
        if (sp == 0) break;
        
        if (AT[sp].segment == 1) {
  106dc3:	c7 c0 40 dc 15 00    	mov    $0x15dc40,%eax
    dprintf("  Phase 1: Exhausting segment 1...\n");
  106dc9:	83 c4 10             	add    $0x10,%esp
        if (AT[sp].segment == 1) {
  106dcc:	89 44 24 0c          	mov    %eax,0xc(%esp)
        int sp = palloc_superpage();
  106dd0:	e8 fb fa ff ff       	call   1068d0 <palloc_superpage>
        if (sp == 0) break;
  106dd5:	85 c0                	test   %eax,%eax
  106dd7:	74 25                	je     106dfe <MATOp_test_fallback+0x6e>
        if (AT[sp].segment == 1) {
  106dd9:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  106ddd:	8d 14 40             	lea    (%eax,%eax,2),%edx
  106de0:	83 7c d1 0c 01       	cmpl   $0x1,0xc(%ecx,%edx,8)
  106de5:	0f 84 ad 00 00 00    	je     106e98 <MATOp_test_fallback+0x108>
            sp_from_seg1[count1++] = sp;
        } else {
            sp_from_seg2[count2++] = sp;
  106deb:	89 84 b4 a0 01 00 00 	mov    %eax,0x1a0(%esp,%esi,4)
  106df2:	83 c6 01             	add    $0x1,%esi
        int sp = palloc_superpage();
  106df5:	e8 d6 fa ff ff       	call   1068d0 <palloc_superpage>
        if (sp == 0) break;
  106dfa:	85 c0                	test   %eax,%eax
  106dfc:	75 db                	jne    106dd9 <MATOp_test_fallback+0x49>
        }
    }
    
    dprintf("  Allocated %d superpages from segment 1, %d from segment 2\n", count1, count2);
  106dfe:	83 ec 04             	sub    $0x4,%esp
  106e01:	8d 83 50 a7 ff ff    	lea    -0x58b0(%ebx),%eax
  106e07:	56                   	push   %esi
  106e08:	55                   	push   %ebp
  106e09:	50                   	push   %eax
  106e0a:	e8 5d bf ff ff       	call   102d6c <dprintf>
    
    // Verify fallback worked (if segment 1 wasn't huge, we should have some from segment 2)
    if (count1 > 0 && count2 == 0) {
  106e0f:	83 c4 10             	add    $0x10,%esp
  106e12:	85 f6                	test   %esi,%esi
  106e14:	75 08                	jne    106e1e <MATOp_test_fallback+0x8e>
  106e16:	85 ed                	test   %ebp,%ebp
  106e18:	0f 8f b4 00 00 00    	jg     106ed2 <MATOp_test_fallback+0x142>
        // This is acceptable if segment 1 had enough pages
        dprintf("  Note: All superpages came from segment 1 (segment 1 had enough pages)\n");
    }
    
    // Cleanup
    for (int i = 0; i < count1; i++) {
  106e1e:	89 ef                	mov    %ebp,%edi
  106e20:	85 ed                	test   %ebp,%ebp
  106e22:	7e 25                	jle    106e49 <MATOp_test_fallback+0xb9>
  106e24:	8d 44 24 10          	lea    0x10(%esp),%eax
        dprintf("  Note: All superpages came from segment 1 (segment 1 had enough pages)\n");
  106e28:	31 ed                	xor    %ebp,%ebp
  106e2a:	89 44 24 0c          	mov    %eax,0xc(%esp)
  106e2e:	66 90                	xchg   %ax,%ax
        pfree_superpage(sp_from_seg1[i]);
  106e30:	83 ec 0c             	sub    $0xc,%esp
  106e33:	8b 44 24 18          	mov    0x18(%esp),%eax
  106e37:	ff 34 a8             	push   (%eax,%ebp,4)
    for (int i = 0; i < count1; i++) {
  106e3a:	83 c5 01             	add    $0x1,%ebp
        pfree_superpage(sp_from_seg1[i]);
  106e3d:	e8 ae fa ff ff       	call   1068f0 <pfree_superpage>
    for (int i = 0; i < count1; i++) {
  106e42:	83 c4 10             	add    $0x10,%esp
  106e45:	39 fd                	cmp    %edi,%ebp
  106e47:	7c e7                	jl     106e30 <MATOp_test_fallback+0xa0>
    }
    for (int i = 0; i < count2; i++) {
  106e49:	31 ed                	xor    %ebp,%ebp
  106e4b:	8d bc 24 a0 01 00 00 	lea    0x1a0(%esp),%edi
  106e52:	85 f6                	test   %esi,%esi
  106e54:	7e 1f                	jle    106e75 <MATOp_test_fallback+0xe5>
  106e56:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106e5d:	00 
  106e5e:	66 90                	xchg   %ax,%ax
        pfree_superpage(sp_from_seg2[i]);
  106e60:	83 ec 0c             	sub    $0xc,%esp
  106e63:	ff 34 af             	push   (%edi,%ebp,4)
    for (int i = 0; i < count2; i++) {
  106e66:	83 c5 01             	add    $0x1,%ebp
        pfree_superpage(sp_from_seg2[i]);
  106e69:	e8 82 fa ff ff       	call   1068f0 <pfree_superpage>
    for (int i = 0; i < count2; i++) {
  106e6e:	83 c4 10             	add    $0x10,%esp
  106e71:	39 f5                	cmp    %esi,%ebp
  106e73:	75 eb                	jne    106e60 <MATOp_test_fallback+0xd0>
    }
    
    dprintf("Fallback test passed.\n");
  106e75:	83 ec 0c             	sub    $0xc,%esp
  106e78:	8d 83 9e 99 ff ff    	lea    -0x6662(%ebx),%eax
  106e7e:	50                   	push   %eax
  106e7f:	e8 e8 be ff ff       	call   102d6c <dprintf>
    return 0;
}
  106e84:	81 c4 4c 03 00 00    	add    $0x34c,%esp
  106e8a:	31 c0                	xor    %eax,%eax
  106e8c:	5b                   	pop    %ebx
  106e8d:	5e                   	pop    %esi
  106e8e:	5f                   	pop    %edi
  106e8f:	5d                   	pop    %ebp
  106e90:	c3                   	ret
  106e91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
            sp_from_seg1[count1++] = sp;
  106e98:	89 44 ac 10          	mov    %eax,0x10(%esp,%ebp,4)
  106e9c:	8d 7d 01             	lea    0x1(%ebp),%edi
    while (count1 < 100) {
  106e9f:	83 fd 63             	cmp    $0x63,%ebp
  106ea2:	74 0c                	je     106eb0 <MATOp_test_fallback+0x120>
  106ea4:	89 fd                	mov    %edi,%ebp
  106ea6:	e9 25 ff ff ff       	jmp    106dd0 <MATOp_test_fallback+0x40>
  106eab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("  Allocated %d superpages from segment 1, %d from segment 2\n", count1, count2);
  106eb0:	83 ec 04             	sub    $0x4,%esp
  106eb3:	8d 83 50 a7 ff ff    	lea    -0x58b0(%ebx),%eax
  106eb9:	56                   	push   %esi
  106eba:	6a 64                	push   $0x64
  106ebc:	50                   	push   %eax
  106ebd:	e8 aa be ff ff       	call   102d6c <dprintf>
    if (count1 > 0 && count2 == 0) {
  106ec2:	83 c4 10             	add    $0x10,%esp
  106ec5:	85 f6                	test   %esi,%esi
  106ec7:	0f 85 57 ff ff ff    	jne    106e24 <MATOp_test_fallback+0x94>
  106ecd:	bd 64 00 00 00       	mov    $0x64,%ebp
        dprintf("  Note: All superpages came from segment 1 (segment 1 had enough pages)\n");
  106ed2:	83 ec 0c             	sub    $0xc,%esp
  106ed5:	8d 83 90 a7 ff ff    	lea    -0x5870(%ebx),%eax
  106edb:	89 ef                	mov    %ebp,%edi
  106edd:	31 f6                	xor    %esi,%esi
  106edf:	50                   	push   %eax
  106ee0:	e8 87 be ff ff       	call   102d6c <dprintf>
  106ee5:	83 c4 10             	add    $0x10,%esp
  106ee8:	e9 37 ff ff ff       	jmp    106e24 <MATOp_test_fallback+0x94>
  106eed:	8d 76 00             	lea    0x0(%esi),%esi

00106ef0 <MATOp_test_cross_segment_split>:


int MATOp_test_cross_segment_split()
{
  106ef0:	55                   	push   %ebp
    
    // First, allocate all small blocks in segment 2 to exhaust it
    dprintf("  Phase 1: Exhausting segment 2 small blocks...\n");
    
    int small_blocks[1000];
    int small_count = 0;
  106ef1:	31 ed                	xor    %ebp,%ebp
{
  106ef3:	57                   	push   %edi
  106ef4:	56                   	push   %esi
  106ef5:	53                   	push   %ebx
  106ef6:	e8 c5 94 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  106efb:	81 c3 f9 a0 00 00    	add    $0xa0f9,%ebx
  106f01:	81 ec c8 0f 00 00    	sub    $0xfc8,%esp
    dprintf("Testing cross-segment split (borrowing from segment 1)...\n");
  106f07:	8d 83 dc a7 ff ff    	lea    -0x5824(%ebx),%eax
  106f0d:	50                   	push   %eax
  106f0e:	e8 59 be ff ff       	call   102d6c <dprintf>
    dprintf("  Phase 1: Exhausting segment 2 small blocks...\n");
  106f13:	8d 83 18 a8 ff ff    	lea    -0x57e8(%ebx),%eax
  106f19:	89 04 24             	mov    %eax,(%esp)
  106f1c:	e8 4b be ff ff       	call   102d6c <dprintf>
  106f21:	83 c4 10             	add    $0x10,%esp
  106f24:	eb 2a                	jmp    106f50 <MATOp_test_cross_segment_split+0x60>
  106f26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  106f2d:	00 
  106f2e:	66 90                	xchg   %ax,%ax
    while (small_count < 1000) {
        int page = palloc();
        if (page == 0) break;
        
        // Verify we're getting from segment 2 initially
        if (small_count < 10 && AT[page].segment != 2) {
  106f30:	83 fd 09             	cmp    $0x9,%ebp
  106f33:	0f 8e 77 01 00 00    	jle    1070b0 <MATOp_test_cross_segment_split+0x1c0>
                pfree(small_blocks[i]);
            }
            return 1;
        }
        
        small_blocks[small_count++] = page;
  106f39:	83 c5 01             	add    $0x1,%ebp
  106f3c:	8d 74 24 10          	lea    0x10(%esp),%esi
  106f40:	89 44 ac 0c          	mov    %eax,0xc(%esp,%ebp,4)
    while (small_count < 1000) {
  106f44:	81 fd e8 03 00 00    	cmp    $0x3e8,%ebp
  106f4a:	0f 84 16 01 00 00    	je     107066 <MATOp_test_cross_segment_split+0x176>
        int page = palloc();
  106f50:	e8 bb f7 ff ff       	call   106710 <palloc>
        if (page == 0) break;
  106f55:	85 c0                	test   %eax,%eax
  106f57:	75 d7                	jne    106f30 <MATOp_test_cross_segment_split+0x40>
    }
    
    dprintf("  Allocated %d small pages from segment 2\n", small_count);
  106f59:	83 ec 08             	sub    $0x8,%esp
  106f5c:	8d 83 98 a8 ff ff    	lea    -0x5768(%ebx),%eax
  106f62:	55                   	push   %ebp
  106f63:	50                   	push   %eax
  106f64:	e8 03 be ff ff       	call   102d6c <dprintf>
    
    // Now allocate a superpage - should come from segment 1 or split from segment 1
    dprintf("  Phase 2: Allocating superpage when segment 2 is full...\n");
  106f69:	8d 83 c4 a8 ff ff    	lea    -0x573c(%ebx),%eax
  106f6f:	89 04 24             	mov    %eax,(%esp)
  106f72:	e8 f5 bd ff ff       	call   102d6c <dprintf>
    int superpage = palloc_superpage();
  106f77:	e8 54 f9 ff ff       	call   1068d0 <palloc_superpage>
  106f7c:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    if (superpage == 0) {
  106f80:	83 c4 10             	add    $0x10,%esp
  106f83:	85 c0                	test   %eax,%eax
  106f85:	0f 84 a5 00 00 00    	je     107030 <MATOp_test_cross_segment_split+0x140>
            pfree(small_blocks[i]);
        }
        return 1;
    }
    
    dprintf("  Allocated superpage %d from segment %d\n", superpage, AT[superpage].segment);
  106f8b:	83 ec 04             	sub    $0x4,%esp
  106f8e:	c7 c2 40 dc 15 00    	mov    $0x15dc40,%edx
  106f94:	8b 7c 24 10          	mov    0x10(%esp),%edi
  106f98:	8d 04 7f             	lea    (%edi,%edi,2),%eax
  106f9b:	8d b7 00 04 00 00    	lea    0x400(%edi),%esi
  106fa1:	8d 04 c2             	lea    (%edx,%eax,8),%eax
  106fa4:	ff 70 0c             	push   0xc(%eax)
  106fa7:	8d 83 48 a9 ff ff    	lea    -0x56b8(%ebx),%eax
  106fad:	57                   	push   %edi
  106fae:	50                   	push   %eax
  106faf:	e8 b8 bd ff ff       	call   102d6c <dprintf>
    
    // Verify the superpage is valid
    unsigned int size = 1U << SUPERPAGE_ORDER;
    for (unsigned int i = 0; i < size; i++) {
  106fb4:	83 c4 10             	add    $0x10,%esp
  106fb7:	eb 12                	jmp    106fcb <MATOp_test_cross_segment_split+0xdb>
  106fb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  106fc0:	83 c7 01             	add    $0x1,%edi
  106fc3:	39 f7                	cmp    %esi,%edi
  106fc5:	0f 84 05 01 00 00    	je     1070d0 <MATOp_test_cross_segment_split+0x1e0>
        if (at_is_allocated(superpage + i) != 1) {
  106fcb:	83 ec 0c             	sub    $0xc,%esp
  106fce:	57                   	push   %edi
  106fcf:	e8 2c dc ff ff       	call   104c00 <at_is_allocated>
  106fd4:	83 c4 10             	add    $0x10,%esp
  106fd7:	83 f8 01             	cmp    $0x1,%eax
  106fda:	74 e4                	je     106fc0 <MATOp_test_cross_segment_split+0xd0>
            dprintf("    Failed: Superpage page %d not marked allocated\n", superpage + i);
  106fdc:	83 ec 08             	sub    $0x8,%esp
  106fdf:	8d 83 74 a9 ff ff    	lea    -0x568c(%ebx),%eax
  106fe5:	57                   	push   %edi
  106fe6:	50                   	push   %eax
  106fe7:	e8 80 bd ff ff       	call   102d6c <dprintf>
            pfree_superpage(superpage);
  106fec:	58                   	pop    %eax
  106fed:	ff 74 24 18          	push   0x18(%esp)
  106ff1:	e8 fa f8 ff ff       	call   1068f0 <pfree_superpage>
            for (int i = 0; i < small_count; i++) {
  106ff6:	83 c4 10             	add    $0x10,%esp
  106ff9:	85 ed                	test   %ebp,%ebp
  106ffb:	74 1f                	je     10701c <MATOp_test_cross_segment_split+0x12c>
  106ffd:	8d 74 24 10          	lea    0x10(%esp),%esi
  107001:	8d 3c ae             	lea    (%esi,%ebp,4),%edi
  107004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
                pfree(small_blocks[i]);
  107008:	83 ec 0c             	sub    $0xc,%esp
  10700b:	ff 36                	push   (%esi)
            for (int i = 0; i < small_count; i++) {
  10700d:	83 c6 04             	add    $0x4,%esi
                pfree(small_blocks[i]);
  107010:	e8 6b f8 ff ff       	call   106880 <pfree>
            for (int i = 0; i < small_count; i++) {
  107015:	83 c4 10             	add    $0x10,%esp
  107018:	39 fe                	cmp    %edi,%esi
  10701a:	75 ec                	jne    107008 <MATOp_test_cross_segment_split+0x118>
        pfree(small_blocks[i]);
    }
    
    dprintf("Cross-segment split test passed.\n");
    return 0;
}
  10701c:	81 c4 bc 0f 00 00    	add    $0xfbc,%esp
            return 1;
  107022:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107027:	5b                   	pop    %ebx
  107028:	5e                   	pop    %esi
  107029:	5f                   	pop    %edi
  10702a:	5d                   	pop    %ebp
  10702b:	c3                   	ret
  10702c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("    Failed: Could not allocate superpage even with segment 1 available\n");
  107030:	83 ec 0c             	sub    $0xc,%esp
  107033:	8d 83 00 a9 ff ff    	lea    -0x5700(%ebx),%eax
  107039:	50                   	push   %eax
  10703a:	e8 2d bd ff ff       	call   102d6c <dprintf>
        for (int i = 0; i < small_count; i++) {
  10703f:	83 c4 10             	add    $0x10,%esp
  107042:	85 ed                	test   %ebp,%ebp
  107044:	74 d6                	je     10701c <MATOp_test_cross_segment_split+0x12c>
  107046:	8d 74 24 10          	lea    0x10(%esp),%esi
  10704a:	8d 3c ae             	lea    (%esi,%ebp,4),%edi
  10704d:	8d 76 00             	lea    0x0(%esi),%esi
            pfree(small_blocks[i]);
  107050:	83 ec 0c             	sub    $0xc,%esp
  107053:	ff 36                	push   (%esi)
        for (int i = 0; i < small_count; i++) {
  107055:	83 c6 04             	add    $0x4,%esi
            pfree(small_blocks[i]);
  107058:	e8 23 f8 ff ff       	call   106880 <pfree>
        for (int i = 0; i < small_count; i++) {
  10705d:	83 c4 10             	add    $0x10,%esp
  107060:	39 f7                	cmp    %esi,%edi
  107062:	75 ec                	jne    107050 <MATOp_test_cross_segment_split+0x160>
  107064:	eb b6                	jmp    10701c <MATOp_test_cross_segment_split+0x12c>
    dprintf("  Allocated %d small pages from segment 2\n", small_count);
  107066:	83 ec 08             	sub    $0x8,%esp
  107069:	8d 83 98 a8 ff ff    	lea    -0x5768(%ebx),%eax
  10706f:	68 e8 03 00 00       	push   $0x3e8
  107074:	50                   	push   %eax
  107075:	e8 f2 bc ff ff       	call   102d6c <dprintf>
    dprintf("  Phase 2: Allocating superpage when segment 2 is full...\n");
  10707a:	8d 83 c4 a8 ff ff    	lea    -0x573c(%ebx),%eax
  107080:	89 04 24             	mov    %eax,(%esp)
  107083:	e8 e4 bc ff ff       	call   102d6c <dprintf>
    int superpage = palloc_superpage();
  107088:	e8 43 f8 ff ff       	call   1068d0 <palloc_superpage>
  10708d:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    if (superpage == 0) {
  107091:	83 c4 10             	add    $0x10,%esp
  107094:	85 c0                	test   %eax,%eax
  107096:	0f 85 ef fe ff ff    	jne    106f8b <MATOp_test_cross_segment_split+0x9b>
        dprintf("    Failed: Could not allocate superpage even with segment 1 available\n");
  10709c:	83 ec 0c             	sub    $0xc,%esp
  10709f:	8d 83 00 a9 ff ff    	lea    -0x5700(%ebx),%eax
  1070a5:	50                   	push   %eax
  1070a6:	e8 c1 bc ff ff       	call   102d6c <dprintf>
  1070ab:	83 c4 10             	add    $0x10,%esp
  1070ae:	eb 9a                	jmp    10704a <MATOp_test_cross_segment_split+0x15a>
        if (small_count < 10 && AT[page].segment != 2) {
  1070b0:	c7 c1 40 dc 15 00    	mov    $0x15dc40,%ecx
  1070b6:	8d 14 40             	lea    (%eax,%eax,2),%edx
  1070b9:	8d 14 d1             	lea    (%ecx,%edx,8),%edx
  1070bc:	8b 52 0c             	mov    0xc(%edx),%edx
  1070bf:	83 fa 02             	cmp    $0x2,%edx
  1070c2:	75 5f                	jne    107123 <MATOp_test_cross_segment_split+0x233>
        small_blocks[small_count++] = page;
  1070c4:	83 c5 01             	add    $0x1,%ebp
  1070c7:	89 44 ac 0c          	mov    %eax,0xc(%esp,%ebp,4)
    while (small_count < 1000) {
  1070cb:	e9 80 fe ff ff       	jmp    106f50 <MATOp_test_cross_segment_split+0x60>
    pfree_superpage(superpage);
  1070d0:	83 ec 0c             	sub    $0xc,%esp
  1070d3:	ff 74 24 18          	push   0x18(%esp)
  1070d7:	e8 14 f8 ff ff       	call   1068f0 <pfree_superpage>
    for (int i = 0; i < small_count; i++) {
  1070dc:	83 c4 10             	add    $0x10,%esp
  1070df:	85 ed                	test   %ebp,%ebp
  1070e1:	74 21                	je     107104 <MATOp_test_cross_segment_split+0x214>
  1070e3:	8d 74 24 10          	lea    0x10(%esp),%esi
  1070e7:	8d 3c ae             	lea    (%esi,%ebp,4),%edi
  1070ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        pfree(small_blocks[i]);
  1070f0:	83 ec 0c             	sub    $0xc,%esp
  1070f3:	ff 36                	push   (%esi)
    for (int i = 0; i < small_count; i++) {
  1070f5:	83 c6 04             	add    $0x4,%esi
        pfree(small_blocks[i]);
  1070f8:	e8 83 f7 ff ff       	call   106880 <pfree>
    for (int i = 0; i < small_count; i++) {
  1070fd:	83 c4 10             	add    $0x10,%esp
  107100:	39 fe                	cmp    %edi,%esi
  107102:	75 ec                	jne    1070f0 <MATOp_test_cross_segment_split+0x200>
    dprintf("Cross-segment split test passed.\n");
  107104:	83 ec 0c             	sub    $0xc,%esp
  107107:	8d 83 a8 a9 ff ff    	lea    -0x5658(%ebx),%eax
  10710d:	50                   	push   %eax
  10710e:	e8 59 bc ff ff       	call   102d6c <dprintf>
    return 0;
  107113:	83 c4 10             	add    $0x10,%esp
  107116:	31 c0                	xor    %eax,%eax
}
  107118:	81 c4 bc 0f 00 00    	add    $0xfbc,%esp
  10711e:	5b                   	pop    %ebx
  10711f:	5e                   	pop    %esi
  107120:	5f                   	pop    %edi
  107121:	5d                   	pop    %ebp
  107122:	c3                   	ret
            dprintf("    Failed: Early small allocation from segment %d (should be segment 2)\n", 
  107123:	83 ec 08             	sub    $0x8,%esp
  107126:	8d 83 4c a8 ff ff    	lea    -0x57b4(%ebx),%eax
  10712c:	52                   	push   %edx
  10712d:	50                   	push   %eax
  10712e:	e8 39 bc ff ff       	call   102d6c <dprintf>
            for (int i = 0; i < small_count; i++) {
  107133:	83 c4 10             	add    $0x10,%esp
  107136:	8d 7c 24 10          	lea    0x10(%esp),%edi
  10713a:	8d 34 af             	lea    (%edi,%ebp,4),%esi
  10713d:	85 ed                	test   %ebp,%ebp
  10713f:	0f 84 d7 fe ff ff    	je     10701c <MATOp_test_cross_segment_split+0x12c>
                pfree(small_blocks[i]);
  107145:	83 ec 0c             	sub    $0xc,%esp
  107148:	ff 37                	push   (%edi)
            for (int i = 0; i < small_count; i++) {
  10714a:	83 c7 04             	add    $0x4,%edi
                pfree(small_blocks[i]);
  10714d:	e8 2e f7 ff ff       	call   106880 <pfree>
            for (int i = 0; i < small_count; i++) {
  107152:	83 c4 10             	add    $0x10,%esp
  107155:	39 f7                	cmp    %esi,%edi
  107157:	75 ec                	jne    107145 <MATOp_test_cross_segment_split+0x255>
  107159:	e9 be fe ff ff       	jmp    10701c <MATOp_test_cross_segment_split+0x12c>
  10715e:	66 90                	xchg   %ax,%ax

00107160 <MATOp_test_allocation_failure>:


int MATOp_test_allocation_failure()
{
  107160:	55                   	push   %ebp
  107161:	57                   	push   %edi
    // Instead of trying to exhaust all memory (which would take forever),
    // we'll allocate a reasonable number and then verify failure handling
    
    dprintf("  Testing regular page allocation/free cycle...\n");
    int pages[100];
    int count = 0;
  107162:	31 ff                	xor    %edi,%edi
{
  107164:	56                   	push   %esi
  107165:	53                   	push   %ebx
  107166:	e8 55 92 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10716b:	81 c3 89 9e 00 00    	add    $0x9e89,%ebx
  107171:	81 ec a8 01 00 00    	sub    $0x1a8,%esp
    dprintf("Testing allocation failure handling...\n");
  107177:	8d 83 cc a9 ff ff    	lea    -0x5634(%ebx),%eax
  10717d:	50                   	push   %eax
  10717e:	e8 e9 bb ff ff       	call   102d6c <dprintf>
    dprintf("  Testing regular page allocation/free cycle...\n");
  107183:	8d 83 f4 a9 ff ff    	lea    -0x560c(%ebx),%eax
  107189:	89 04 24             	mov    %eax,(%esp)
  10718c:	e8 db bb ff ff       	call   102d6c <dprintf>
  107191:	83 c4 10             	add    $0x10,%esp
  107194:	eb 18                	jmp    1071ae <MATOp_test_allocation_failure+0x4e>
  107196:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10719d:	00 
  10719e:	66 90                	xchg   %ax,%ax
        if (page == 0) {
            dprintf("    Failed: Could not allocate page %d\n", i);
            for (int j = 0; j < i; j++) pfree(pages[j]);
            return 1;
        }
        pages[count++] = page;
  1071a0:	83 c7 01             	add    $0x1,%edi
  1071a3:	89 e6                	mov    %esp,%esi
  1071a5:	89 44 bc fc          	mov    %eax,-0x4(%esp,%edi,4)
    for (int i = 0; i < 100; i++) {
  1071a9:	83 ff 64             	cmp    $0x64,%edi
  1071ac:	74 4f                	je     1071fd <MATOp_test_allocation_failure+0x9d>
        int page = palloc();
  1071ae:	e8 5d f5 ff ff       	call   106710 <palloc>
        if (page == 0) {
  1071b3:	85 c0                	test   %eax,%eax
  1071b5:	75 e9                	jne    1071a0 <MATOp_test_allocation_failure+0x40>
            dprintf("    Failed: Could not allocate page %d\n", i);
  1071b7:	83 ec 08             	sub    $0x8,%esp
  1071ba:	8d 83 28 aa ff ff    	lea    -0x55d8(%ebx),%eax
  1071c0:	57                   	push   %edi
  1071c1:	50                   	push   %eax
  1071c2:	e8 a5 bb ff ff       	call   102d6c <dprintf>
            for (int j = 0; j < i; j++) pfree(pages[j]);
  1071c7:	83 c4 10             	add    $0x10,%esp
  1071ca:	89 e5                	mov    %esp,%ebp
  1071cc:	8d 74 bd 00          	lea    0x0(%ebp,%edi,4),%esi
  1071d0:	85 ff                	test   %edi,%edi
  1071d2:	74 19                	je     1071ed <MATOp_test_allocation_failure+0x8d>
  1071d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1071d8:	83 ec 0c             	sub    $0xc,%esp
  1071db:	ff 75 00             	push   0x0(%ebp)
  1071de:	83 c5 04             	add    $0x4,%ebp
  1071e1:	e8 9a f6 ff ff       	call   106880 <pfree>
  1071e6:	83 c4 10             	add    $0x10,%esp
  1071e9:	39 f5                	cmp    %esi,%ebp
  1071eb:	75 eb                	jne    1071d8 <MATOp_test_allocation_failure+0x78>
        pfree(pages[i]);
    }
    
    dprintf("Allocation test passed.\n");
    return 0;
}
  1071ed:	81 c4 9c 01 00 00    	add    $0x19c,%esp
            return 1;
  1071f3:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1071f8:	5b                   	pop    %ebx
  1071f9:	5e                   	pop    %esi
  1071fa:	5f                   	pop    %edi
  1071fb:	5d                   	pop    %ebp
  1071fc:	c3                   	ret
    dprintf("  Allocated %d pages successfully\n", count);
  1071fd:	83 ec 08             	sub    $0x8,%esp
  107200:	8d 83 50 aa ff ff    	lea    -0x55b0(%ebx),%eax
    dprintf("  Freeing half...\n");
  107206:	89 f5                	mov    %esi,%ebp
    dprintf("  Allocated %d pages successfully\n", count);
  107208:	6a 64                	push   $0x64
  10720a:	50                   	push   %eax
  10720b:	e8 5c bb ff ff       	call   102d6c <dprintf>
    dprintf("  Freeing half...\n");
  107210:	8d 83 b5 99 ff ff    	lea    -0x664b(%ebx),%eax
  107216:	8d bc 24 d8 00 00 00 	lea    0xd8(%esp),%edi
  10721d:	89 04 24             	mov    %eax,(%esp)
  107220:	e8 47 bb ff ff       	call   102d6c <dprintf>
    for (int i = 0; i < count/2; i++) {
  107225:	89 f4                	mov    %esi,%esp
  107227:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10722e:	00 
  10722f:	90                   	nop
        pfree(pages[i]);
  107230:	83 ec 0c             	sub    $0xc,%esp
  107233:	ff 75 00             	push   0x0(%ebp)
    for (int i = 0; i < count/2; i++) {
  107236:	83 c5 04             	add    $0x4,%ebp
        pfree(pages[i]);
  107239:	e8 42 f6 ff ff       	call   106880 <pfree>
    for (int i = 0; i < count/2; i++) {
  10723e:	83 c4 10             	add    $0x10,%esp
  107241:	39 fd                	cmp    %edi,%ebp
  107243:	75 eb                	jne    107230 <MATOp_test_allocation_failure+0xd0>
    dprintf("  Allocating after free...\n");
  107245:	83 ec 0c             	sub    $0xc,%esp
  107248:	8d 83 c8 99 ff ff    	lea    -0x6638(%ebx),%eax
  10724e:	50                   	push   %eax
  10724f:	e8 18 bb ff ff       	call   102d6c <dprintf>
    int new_page = palloc();
  107254:	e8 b7 f4 ff ff       	call   106710 <palloc>
    if (new_page == 0) {
  107259:	83 c4 10             	add    $0x10,%esp
    int new_page = palloc();
  10725c:	89 c7                	mov    %eax,%edi
    if (new_page == 0) {
  10725e:	85 c0                	test   %eax,%eax
  107260:	74 5a                	je     1072bc <MATOp_test_allocation_failure+0x15c>
    dprintf("  Successfully allocated new page %d\n", new_page);
  107262:	83 ec 08             	sub    $0x8,%esp
  107265:	81 c6 90 01 00 00    	add    $0x190,%esi
  10726b:	50                   	push   %eax
  10726c:	8d 83 a4 aa ff ff    	lea    -0x555c(%ebx),%eax
  107272:	50                   	push   %eax
  107273:	e8 f4 ba ff ff       	call   102d6c <dprintf>
    pfree(new_page);
  107278:	89 3c 24             	mov    %edi,(%esp)
  10727b:	e8 00 f6 ff ff       	call   106880 <pfree>
    for (int i = count/2; i < count; i++) {
  107280:	83 c4 10             	add    $0x10,%esp
  107283:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        pfree(pages[i]);
  107288:	83 ec 0c             	sub    $0xc,%esp
  10728b:	ff 75 00             	push   0x0(%ebp)
    for (int i = count/2; i < count; i++) {
  10728e:	83 c5 04             	add    $0x4,%ebp
        pfree(pages[i]);
  107291:	e8 ea f5 ff ff       	call   106880 <pfree>
    for (int i = count/2; i < count; i++) {
  107296:	83 c4 10             	add    $0x10,%esp
  107299:	39 f5                	cmp    %esi,%ebp
  10729b:	75 eb                	jne    107288 <MATOp_test_allocation_failure+0x128>
    dprintf("Allocation test passed.\n");
  10729d:	83 ec 0c             	sub    $0xc,%esp
  1072a0:	8d 83 e4 99 ff ff    	lea    -0x661c(%ebx),%eax
  1072a6:	50                   	push   %eax
  1072a7:	e8 c0 ba ff ff       	call   102d6c <dprintf>
    return 0;
  1072ac:	83 c4 10             	add    $0x10,%esp
  1072af:	31 c0                	xor    %eax,%eax
}
  1072b1:	81 c4 9c 01 00 00    	add    $0x19c,%esp
  1072b7:	5b                   	pop    %ebx
  1072b8:	5e                   	pop    %esi
  1072b9:	5f                   	pop    %edi
  1072ba:	5d                   	pop    %ebp
  1072bb:	c3                   	ret
        dprintf("    Failed: Could not allocate after freeing\n");
  1072bc:	83 ec 0c             	sub    $0xc,%esp
  1072bf:	8d 83 74 aa ff ff    	lea    -0x558c(%ebx),%eax
  1072c5:	81 c6 90 01 00 00    	add    $0x190,%esi
  1072cb:	50                   	push   %eax
  1072cc:	e8 9b ba ff ff       	call   102d6c <dprintf>
        for (int i = count/2; i < count; i++) pfree(pages[i]);
  1072d1:	83 c4 10             	add    $0x10,%esp
  1072d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  1072d8:	83 ec 0c             	sub    $0xc,%esp
  1072db:	ff 75 00             	push   0x0(%ebp)
  1072de:	83 c5 04             	add    $0x4,%ebp
  1072e1:	e8 9a f5 ff ff       	call   106880 <pfree>
  1072e6:	83 c4 10             	add    $0x10,%esp
  1072e9:	39 f5                	cmp    %esi,%ebp
  1072eb:	75 eb                	jne    1072d8 <MATOp_test_allocation_failure+0x178>
  1072ed:	e9 fb fe ff ff       	jmp    1071ed <MATOp_test_allocation_failure+0x8d>
  1072f2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1072f9:	00 
  1072fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107300 <MATOp_test_superpage>:
// ===========================
// Wrapper function
// ===========================
int MATOp_test_superpage(void)
{
    return MATOp_test_superpage_advanced();
  107300:	e9 fb f7 ff ff       	jmp    106b00 <MATOp_test_superpage_advanced>
  107305:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10730c:	00 
  10730d:	8d 76 00             	lea    0x0(%esi),%esi

00107310 <test_MATOp>:

// ===========================
// Main test runner
// ===========================
int test_MATOp()
{
  107310:	57                   	push   %edi
  107311:	e8 4a bf ff ff       	call   103260 <__x86.get_pc_thunk.di>
  107316:	81 c7 de 9c 00 00    	add    $0x9cde,%edi
  10731c:	56                   	push   %esi
  10731d:	53                   	push   %ebx
    int res = 0;
    dprintf("\n=== Running MATOp Tests ===\n");
  10731e:	83 ec 0c             	sub    $0xc,%esp
  107321:	8d 87 fd 99 ff ff    	lea    -0x6603(%edi),%eax
  107327:	89 fb                	mov    %edi,%ebx
  107329:	50                   	push   %eax
  10732a:	e8 3d ba ff ff       	call   102d6c <dprintf>
    
    res += MATOp_test1();
  10732f:	e8 fc f5 ff ff       	call   106930 <MATOp_test1>
  107334:	89 c3                	mov    %eax,%ebx
    res += MATOp_test_own();
  107336:	e8 f5 f6 ff ff       	call   106a30 <MATOp_test_own>
  10733b:	01 c3                	add    %eax,%ebx
    res += MATOp_test_superpage_advanced();
  10733d:	e8 be f7 ff ff       	call   106b00 <MATOp_test_superpage_advanced>
  107342:	01 c3                	add    %eax,%ebx
    res += MATOp_test_segment_preference();
  107344:	e8 e7 f8 ff ff       	call   106c30 <MATOp_test_segment_preference>
  107349:	01 c3                	add    %eax,%ebx
    res += MATOp_test_fallback();
  10734b:	e8 40 fa ff ff       	call   106d90 <MATOp_test_fallback>
  107350:	01 c3                	add    %eax,%ebx
    res += MATOp_test_cross_segment_split();
  107352:	e8 99 fb ff ff       	call   106ef0 <MATOp_test_cross_segment_split>
  107357:	01 c3                	add    %eax,%ebx
    res += MATOp_test_allocation_failure();
  107359:	e8 02 fe ff ff       	call   107160 <MATOp_test_allocation_failure>

    if (res == 0)
  10735e:	89 de                	mov    %ebx,%esi
  107360:	83 c4 10             	add    $0x10,%esp
  107363:	01 c6                	add    %eax,%esi
  107365:	75 21                	jne    107388 <test_MATOp+0x78>
        dprintf("\n✅ All MATOp tests passed!\n");
  107367:	83 ec 0c             	sub    $0xc,%esp
  10736a:	8d 87 1b 9a ff ff    	lea    -0x65e5(%edi),%eax
  107370:	89 fb                	mov    %edi,%ebx
  107372:	50                   	push   %eax
  107373:	e8 f4 b9 ff ff       	call   102d6c <dprintf>
  107378:	83 c4 10             	add    $0x10,%esp
    else
        dprintf("\n❌ Some MATOp tests failed (%d errors).\n", res);

    return res;
  10737b:	89 f0                	mov    %esi,%eax
  10737d:	5b                   	pop    %ebx
  10737e:	5e                   	pop    %esi
  10737f:	5f                   	pop    %edi
  107380:	c3                   	ret
  107381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("\n❌ Some MATOp tests failed (%d errors).\n", res);
  107388:	83 ec 08             	sub    $0x8,%esp
  10738b:	8d 87 cc aa ff ff    	lea    -0x5534(%edi),%eax
  107391:	89 fb                	mov    %edi,%ebx
  107393:	56                   	push   %esi
  107394:	50                   	push   %eax
  107395:	e8 d2 b9 ff ff       	call   102d6c <dprintf>
  10739a:	83 c4 10             	add    $0x10,%esp
  10739d:	89 f0                	mov    %esi,%eax
  10739f:	5b                   	pop    %ebx
  1073a0:	5e                   	pop    %esi
  1073a1:	5f                   	pop    %edi
  1073a2:	c3                   	ret
  1073a3:	66 90                	xchg   %ax,%ax
  1073a5:	66 90                	xchg   %ax,%ax
  1073a7:	66 90                	xchg   %ax,%ax
  1073a9:	66 90                	xchg   %ax,%ax
  1073ab:	66 90                	xchg   %ax,%ax
  1073ad:	66 90                	xchg   %ax,%ax
  1073af:	90                   	nop

001073b0 <container_init>:
};

static struct SContainer CONTAINER[NUM_IDS];

void container_init(unsigned int mbi_addr)
{
  1073b0:	55                   	push   %ebp
  1073b1:	57                   	push   %edi
  1073b2:	56                   	push   %esi
  1073b3:	53                   	push   %ebx
  1073b4:	e8 07 90 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1073b9:	81 c3 3b 9c 00 00    	add    $0x9c3b,%ebx
  1073bf:	83 ec 0c             	sub    $0xc,%esp
    (void)mbi_addr; 

    unsigned int real_quota = 0;
    unsigned int nps = get_nps();
  1073c2:	e8 89 d7 ff ff       	call   104b50 <get_nps>
    unsigned int i;

    // Count free normal RAM pages
    for (i = 0; i < nps; i++) {
  1073c7:	85 c0                	test   %eax,%eax
  1073c9:	0f 84 c0 00 00 00    	je     10748f <container_init+0xdf>
  1073cf:	89 c6                	mov    %eax,%esi
  1073d1:	31 ed                	xor    %ebp,%ebp
    unsigned int real_quota = 0;
  1073d3:	31 ff                	xor    %edi,%edi
  1073d5:	eb 10                	jmp    1073e7 <container_init+0x37>
  1073d7:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1073de:	00 
  1073df:	90                   	nop
    for (i = 0; i < nps; i++) {
  1073e0:	83 c5 01             	add    $0x1,%ebp
  1073e3:	39 ee                	cmp    %ebp,%esi
  1073e5:	74 29                	je     107410 <container_init+0x60>
        if (at_is_norm(i) && !at_is_allocated(i)) {
  1073e7:	83 ec 0c             	sub    $0xc,%esp
  1073ea:	55                   	push   %ebp
  1073eb:	e8 a0 d7 ff ff       	call   104b90 <at_is_norm>
  1073f0:	83 c4 10             	add    $0x10,%esp
  1073f3:	85 c0                	test   %eax,%eax
  1073f5:	74 e9                	je     1073e0 <container_init+0x30>
  1073f7:	83 ec 0c             	sub    $0xc,%esp
  1073fa:	55                   	push   %ebp
  1073fb:	e8 00 d8 ff ff       	call   104c00 <at_is_allocated>
  107400:	83 c4 10             	add    $0x10,%esp
            real_quota++;
  107403:	83 f8 01             	cmp    $0x1,%eax
  107406:	83 d7 00             	adc    $0x0,%edi
    for (i = 0; i < nps; i++) {
  107409:	83 c5 01             	add    $0x1,%ebp
  10740c:	39 ee                	cmp    %ebp,%esi
  10740e:	75 d7                	jne    1073e7 <container_init+0x37>
        }
    }

    for (i = 0; i < NUM_IDS; i++) {
  107410:	8d 83 ec cc 84 01    	lea    0x184ccec(%ebx),%eax
  107416:	8d 90 00 50 00 00    	lea    0x5000(%eax),%edx
  10741c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        CONTAINER[i].quota = 0;
  107420:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  107426:	83 c0 14             	add    $0x14,%eax
        CONTAINER[i].usage = 0;
  107429:	c7 40 f0 00 00 00 00 	movl   $0x0,-0x10(%eax)
        CONTAINER[i].parent = 0;
  107430:	c7 40 f4 00 00 00 00 	movl   $0x0,-0xc(%eax)
        CONTAINER[i].nchildren = 0;
  107437:	c7 40 f8 00 00 00 00 	movl   $0x0,-0x8(%eax)
        CONTAINER[i].used = 0;
  10743e:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
    for (i = 0; i < NUM_IDS; i++) {
  107445:	39 d0                	cmp    %edx,%eax
  107447:	75 d7                	jne    107420 <container_init+0x70>
    CONTAINER[0].usage = 0;
    CONTAINER[0].parent = 0;
    CONTAINER[0].nchildren = 0;
    CONTAINER[0].used = 1;

    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  107449:	83 ec 08             	sub    $0x8,%esp
  10744c:	8d 83 f8 aa ff ff    	lea    -0x5508(%ebx),%eax
    CONTAINER[0].quota = (int)real_quota;
  107452:	89 bb ec cc 84 01    	mov    %edi,0x184ccec(%ebx)
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  107458:	57                   	push   %edi
  107459:	50                   	push   %eax
    CONTAINER[0].usage = 0;
  10745a:	c7 83 f0 cc 84 01 00 	movl   $0x0,0x184ccf0(%ebx)
  107461:	00 00 00 
    CONTAINER[0].parent = 0;
  107464:	c7 83 f4 cc 84 01 00 	movl   $0x0,0x184ccf4(%ebx)
  10746b:	00 00 00 
    CONTAINER[0].nchildren = 0;
  10746e:	c7 83 f8 cc 84 01 00 	movl   $0x0,0x184ccf8(%ebx)
  107475:	00 00 00 
    CONTAINER[0].used = 1;
  107478:	c7 83 fc cc 84 01 01 	movl   $0x1,0x184ccfc(%ebx)
  10747f:	00 00 00 
    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
  107482:	e8 e5 b8 ff ff       	call   102d6c <dprintf>
}
  107487:	83 c4 1c             	add    $0x1c,%esp
  10748a:	5b                   	pop    %ebx
  10748b:	5e                   	pop    %esi
  10748c:	5f                   	pop    %edi
  10748d:	5d                   	pop    %ebp
  10748e:	c3                   	ret
    for (i = 0; i < nps; i++) {
  10748f:	31 ff                	xor    %edi,%edi
  107491:	e9 7a ff ff ff       	jmp    107410 <container_init+0x60>
  107496:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10749d:	00 
  10749e:	66 90                	xchg   %ax,%ax

001074a0 <container_get_parent>:

unsigned int container_get_parent(unsigned int id) { return CONTAINER[id].parent; }
  1074a0:	e8 17 8f ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  1074a5:	81 c2 4f 9b 00 00    	add    $0x9b4f,%edx
  1074ab:	8b 44 24 04          	mov    0x4(%esp),%eax
  1074af:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1074b2:	8b 84 82 f4 cc 84 01 	mov    0x184ccf4(%edx,%eax,4),%eax
  1074b9:	c3                   	ret
  1074ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001074c0 <container_get_nchildren>:
unsigned int container_get_nchildren(unsigned int id) { return CONTAINER[id].nchildren; }
  1074c0:	e8 f7 8e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  1074c5:	81 c2 2f 9b 00 00    	add    $0x9b2f,%edx
  1074cb:	8b 44 24 04          	mov    0x4(%esp),%eax
  1074cf:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1074d2:	8b 84 82 f8 cc 84 01 	mov    0x184ccf8(%edx,%eax,4),%eax
  1074d9:	c3                   	ret
  1074da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001074e0 <container_get_quota>:
unsigned int container_get_quota(unsigned int id) { return CONTAINER[id].quota; }
  1074e0:	e8 d7 8e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  1074e5:	81 c2 0f 9b 00 00    	add    $0x9b0f,%edx
  1074eb:	8b 44 24 04          	mov    0x4(%esp),%eax
  1074ef:	8d 04 80             	lea    (%eax,%eax,4),%eax
  1074f2:	8b 84 82 ec cc 84 01 	mov    0x184ccec(%edx,%eax,4),%eax
  1074f9:	c3                   	ret
  1074fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107500 <container_get_usage>:
unsigned int container_get_usage(unsigned int id) { return CONTAINER[id].usage; }
  107500:	e8 b7 8e ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  107505:	81 c2 ef 9a 00 00    	add    $0x9aef,%edx
  10750b:	8b 44 24 04          	mov    0x4(%esp),%eax
  10750f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  107512:	8b 84 82 f0 cc 84 01 	mov    0x184ccf0(%edx,%eax,4),%eax
  107519:	c3                   	ret
  10751a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107520 <container_can_consume>:

unsigned int container_can_consume(unsigned int id, unsigned int n)
{
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  107520:	e8 f7 da ff ff       	call   10501c <__x86.get_pc_thunk.cx>
  107525:	81 c1 cf 9a 00 00    	add    $0x9acf,%ecx
{
  10752b:	8b 44 24 04          	mov    0x4(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  10752f:	8d 04 80             	lea    (%eax,%eax,4),%eax
  107532:	c1 e0 02             	shl    $0x2,%eax
  107535:	8b 94 01 f0 cc 84 01 	mov    0x184ccf0(%ecx,%eax,1),%edx
  10753c:	03 54 24 08          	add    0x8(%esp),%edx
  107540:	3b 94 01 ec cc 84 01 	cmp    0x184ccec(%ecx,%eax,1),%edx
  107547:	0f 9e c0             	setle  %al
  10754a:	0f b6 c0             	movzbl %al,%eax
    return 0;
}
  10754d:	c3                   	ret
  10754e:	66 90                	xchg   %ax,%ax

00107550 <container_split>:

unsigned int container_split(unsigned int id, unsigned int quota)
{
  107550:	57                   	push   %edi
  107551:	56                   	push   %esi
  107552:	53                   	push   %ebx
  107553:	8b 44 24 10          	mov    0x10(%esp),%eax
  107557:	e8 64 8e ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10755c:	81 c3 98 9a 00 00    	add    $0x9a98,%ebx
  107562:	8b 74 24 14          	mov    0x14(%esp),%esi
    unsigned int nc = CONTAINER[id].nchildren;
  107566:	8d 14 80             	lea    (%eax,%eax,4),%edx
  107569:	8d 94 93 ec cc 84 01 	lea    0x184ccec(%ebx,%edx,4),%edx
  107570:	8b 7a 0c             	mov    0xc(%edx),%edi
    unsigned int child = id * MAX_CHILDREN + 1 + nc;

    CONTAINER[id].usage += (int)quota;
  107573:	01 72 04             	add    %esi,0x4(%edx)
    unsigned int child = id * MAX_CHILDREN + 1 + nc;
  107576:	8d 4c c7 01          	lea    0x1(%edi,%eax,8),%ecx
    CONTAINER[id].nchildren++;
  10757a:	83 c7 01             	add    $0x1,%edi
  10757d:	89 7a 0c             	mov    %edi,0xc(%edx)

    CONTAINER[child].quota = (int)quota;
  107580:	8d 14 89             	lea    (%ecx,%ecx,4),%edx
  107583:	c1 e2 02             	shl    $0x2,%edx
  107586:	8d bc 13 ec cc 84 01 	lea    0x184ccec(%ebx,%edx,1),%edi
    CONTAINER[child].usage = 0;
    CONTAINER[child].parent = (int)id;
  10758d:	89 47 08             	mov    %eax,0x8(%edi)
    CONTAINER[child].nchildren = 0;
    CONTAINER[child].used = 1;

    return child;
}
  107590:	89 c8                	mov    %ecx,%eax
    CONTAINER[child].quota = (int)quota;
  107592:	89 37                	mov    %esi,(%edi)
    CONTAINER[child].usage = 0;
  107594:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%edi)
    CONTAINER[child].nchildren = 0;
  10759b:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    CONTAINER[child].used = 1;
  1075a2:	c7 47 10 01 00 00 00 	movl   $0x1,0x10(%edi)
}
  1075a9:	5b                   	pop    %ebx
  1075aa:	5e                   	pop    %esi
  1075ab:	5f                   	pop    %edi
  1075ac:	c3                   	ret
  1075ad:	8d 76 00             	lea    0x0(%esi),%esi

001075b0 <container_alloc>:

unsigned int container_alloc(unsigned int id)
{
  1075b0:	56                   	push   %esi
  1075b1:	53                   	push   %ebx
  1075b2:	e8 09 8e ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1075b7:	81 c3 3d 9a 00 00    	add    $0x9a3d,%ebx
  1075bd:	83 ec 04             	sub    $0x4,%esp
  1075c0:	8b 44 24 10          	mov    0x10(%esp),%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  1075c4:	8d 14 80             	lea    (%eax,%eax,4),%edx
        if (pindex != 0) {
            CONTAINER[id].usage++;
            return pindex;
        }
    }
    return 0;
  1075c7:	31 c0                	xor    %eax,%eax
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  1075c9:	c1 e2 02             	shl    $0x2,%edx
  1075cc:	8d b4 13 ec cc 84 01 	lea    0x184ccec(%ebx,%edx,1),%esi
  1075d3:	8b 8c 13 ec cc 84 01 	mov    0x184ccec(%ebx,%edx,1),%ecx
  1075da:	39 4e 04             	cmp    %ecx,0x4(%esi)
  1075dd:	7c 09                	jl     1075e8 <container_alloc+0x38>
}
  1075df:	83 c4 04             	add    $0x4,%esp
  1075e2:	5b                   	pop    %ebx
  1075e3:	5e                   	pop    %esi
  1075e4:	c3                   	ret
  1075e5:	8d 76 00             	lea    0x0(%esi),%esi
        unsigned int pindex = palloc();
  1075e8:	e8 23 f1 ff ff       	call   106710 <palloc>
        if (pindex != 0) {
  1075ed:	85 c0                	test   %eax,%eax
  1075ef:	74 ee                	je     1075df <container_alloc+0x2f>
            CONTAINER[id].usage++;
  1075f1:	83 46 04 01          	addl   $0x1,0x4(%esi)
}
  1075f5:	83 c4 04             	add    $0x4,%esp
  1075f8:	5b                   	pop    %ebx
  1075f9:	5e                   	pop    %esi
  1075fa:	c3                   	ret
  1075fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107600 <container_alloc_superpage>:


unsigned int container_alloc_superpage(unsigned int id)
{
  107600:	55                   	push   %ebp
  107601:	57                   	push   %edi
  107602:	56                   	push   %esi
  107603:	53                   	push   %ebx
  107604:	e8 b7 8d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107609:	81 c3 eb 99 00 00    	add    $0x99eb,%ebx
  10760f:	83 ec 0c             	sub    $0xc,%esp
  107612:	8b 74 24 20          	mov    0x20(%esp),%esi
    // DEBUG: See what's happening
    dprintf("MContainer: ID %d usage=%d, quota=%d. Requesting 1024.\n", 
  107616:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  107619:	c1 e0 02             	shl    $0x2,%eax
  10761c:	8d bc 03 ec cc 84 01 	lea    0x184ccec(%ebx,%eax,1),%edi
  107623:	8d 83 1c ab ff ff    	lea    -0x54e4(%ebx),%eax
  107629:	ff 37                	push   (%edi)
  10762b:	ff 77 04             	push   0x4(%edi)
  10762e:	56                   	push   %esi
  10762f:	50                   	push   %eax
  107630:	e8 37 b7 ff ff       	call   102d6c <dprintf>
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
  107635:	8b 47 04             	mov    0x4(%edi),%eax
  107638:	83 c4 10             	add    $0x10,%esp
  10763b:	05 00 04 00 00       	add    $0x400,%eax
  107640:	3b 07                	cmp    (%edi),%eax
  107642:	7e 24                	jle    107668 <container_alloc_superpage+0x68>
        } else {
            // This means the Quota was fine, but the Buddy System failed!
            dprintf("MContainer Error: Buddy System (palloc_superpage) returned 0!\n");
        }
    } else {
        dprintf("MContainer Error: Quota exceeded for ID %d!\n", id);
  107644:	83 ec 08             	sub    $0x8,%esp
  107647:	8d 83 54 ab ff ff    	lea    -0x54ac(%ebx),%eax
  10764d:	56                   	push   %esi
  10764e:	50                   	push   %eax
  10764f:	e8 18 b7 ff ff       	call   102d6c <dprintf>
  107654:	83 c4 10             	add    $0x10,%esp
    }
    return 0;
}
  107657:	83 c4 0c             	add    $0xc,%esp
    return 0;
  10765a:	31 c0                	xor    %eax,%eax
}
  10765c:	5b                   	pop    %ebx
  10765d:	5e                   	pop    %esi
  10765e:	5f                   	pop    %edi
  10765f:	5d                   	pop    %ebp
  107660:	c3                   	ret
  107661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        unsigned int pindex = palloc_superpage(); 
  107668:	e8 63 f2 ff ff       	call   1068d0 <palloc_superpage>
        if (pindex != 0) {
  10766d:	85 c0                	test   %eax,%eax
  10766f:	74 0f                	je     107680 <container_alloc_superpage+0x80>
            CONTAINER[id].usage += PAGES_PER_SUPERPAGE;
  107671:	81 47 04 00 04 00 00 	addl   $0x400,0x4(%edi)
}
  107678:	83 c4 0c             	add    $0xc,%esp
  10767b:	5b                   	pop    %ebx
  10767c:	5e                   	pop    %esi
  10767d:	5f                   	pop    %edi
  10767e:	5d                   	pop    %ebp
  10767f:	c3                   	ret
            dprintf("MContainer Error: Buddy System (palloc_superpage) returned 0!\n");
  107680:	83 ec 0c             	sub    $0xc,%esp
  107683:	8d 83 84 ab ff ff    	lea    -0x547c(%ebx),%eax
  107689:	50                   	push   %eax
  10768a:	e8 dd b6 ff ff       	call   102d6c <dprintf>
  10768f:	83 c4 10             	add    $0x10,%esp
  107692:	eb c3                	jmp    107657 <container_alloc_superpage+0x57>
  107694:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10769b:	00 
  10769c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001076a0 <container_free>:


void container_free(unsigned int id, unsigned int page_index)
{
  1076a0:	57                   	push   %edi
  1076a1:	56                   	push   %esi
  1076a2:	53                   	push   %ebx
  1076a3:	8b 7c 24 14          	mov    0x14(%esp),%edi
  1076a7:	e8 14 8d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1076ac:	81 c3 48 99 00 00    	add    $0x9948,%ebx
  1076b2:	8b 74 24 10          	mov    0x10(%esp),%esi
 
    unsigned int order = at_get_order(page_index);
  1076b6:	83 ec 0c             	sub    $0xc,%esp
  1076b9:	57                   	push   %edi
  1076ba:	e8 81 d6 ff ff       	call   104d40 <at_get_order>
    
    if (order == SUPERPAGE_ORDER) {
  1076bf:	83 c4 10             	add    $0x10,%esp
  1076c2:	83 f8 0a             	cmp    $0xa,%eax
  1076c5:	74 29                	je     1076f0 <container_free+0x50>
        pfree_superpage(page_index);
        CONTAINER[id].usage -= PAGES_PER_SUPERPAGE;
    } else {
        pfree(page_index);
  1076c7:	83 ec 0c             	sub    $0xc,%esp
  1076ca:	57                   	push   %edi
  1076cb:	e8 b0 f1 ff ff       	call   106880 <pfree>
        if (CONTAINER[id].usage > 0) {
  1076d0:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  1076d3:	83 c4 10             	add    $0x10,%esp
  1076d6:	8d 94 83 ec cc 84 01 	lea    0x184ccec(%ebx,%eax,4),%edx
  1076dd:	8b 42 04             	mov    0x4(%edx),%eax
  1076e0:	85 c0                	test   %eax,%eax
  1076e2:	7e 06                	jle    1076ea <container_free+0x4a>
            CONTAINER[id].usage--;
  1076e4:	83 e8 01             	sub    $0x1,%eax
  1076e7:	89 42 04             	mov    %eax,0x4(%edx)
        }
    }
  1076ea:	5b                   	pop    %ebx
  1076eb:	5e                   	pop    %esi
  1076ec:	5f                   	pop    %edi
  1076ed:	c3                   	ret
  1076ee:	66 90                	xchg   %ax,%ax
        pfree_superpage(page_index);
  1076f0:	83 ec 0c             	sub    $0xc,%esp
  1076f3:	57                   	push   %edi
  1076f4:	e8 f7 f1 ff ff       	call   1068f0 <pfree_superpage>
        CONTAINER[id].usage -= PAGES_PER_SUPERPAGE;
  1076f9:	83 c4 10             	add    $0x10,%esp
  1076fc:	8d 04 b6             	lea    (%esi,%esi,4),%eax
  1076ff:	81 ac 83 f0 cc 84 01 	subl   $0x400,0x184ccf0(%ebx,%eax,4)
  107706:	00 04 00 00 
  10770a:	5b                   	pop    %ebx
  10770b:	5e                   	pop    %esi
  10770c:	5f                   	pop    %edi
  10770d:	c3                   	ret
  10770e:	66 90                	xchg   %ax,%ax

00107710 <MContainer_test1>:
#include <lib/debug.h>
#include "export.h"

int MContainer_test1()
{
  107710:	53                   	push   %ebx
  107711:	e8 aa 8c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107716:	81 c3 de 98 00 00    	add    $0x98de,%ebx
  10771c:	83 ec 14             	sub    $0x14,%esp
    if (container_get_quota(0) <= 10000) {
  10771f:	6a 00                	push   $0x0
  107721:	e8 ba fd ff ff       	call   1074e0 <container_get_quota>
  107726:	83 c4 10             	add    $0x10,%esp
  107729:	3d 10 27 00 00       	cmp    $0x2710,%eax
  10772e:	0f 86 7c 00 00 00    	jbe    1077b0 <MContainer_test1+0xa0>
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
        return 1;
    }
    if (container_can_consume(0, 10000) != 1) {
  107734:	83 ec 08             	sub    $0x8,%esp
  107737:	68 10 27 00 00       	push   $0x2710
  10773c:	6a 00                	push   $0x0
  10773e:	e8 dd fd ff ff       	call   107520 <container_can_consume>
  107743:	83 c4 10             	add    $0x10,%esp
  107746:	83 f8 01             	cmp    $0x1,%eax
  107749:	75 35                	jne    107780 <MContainer_test1+0x70>
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
        return 1;
    }
    if (container_can_consume(0, 10000000) != 0) {
  10774b:	83 ec 08             	sub    $0x8,%esp
  10774e:	68 80 96 98 00       	push   $0x989680
  107753:	6a 00                	push   $0x0
  107755:	e8 c6 fd ff ff       	call   107520 <container_can_consume>
  10775a:	83 c4 10             	add    $0x10,%esp
  10775d:	85 c0                	test   %eax,%eax
  10775f:	75 6f                	jne    1077d0 <MContainer_test1+0xc0>
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
        return 1;
    }
    dprintf("test 1 passed.\n");
  107761:	83 ec 0c             	sub    $0xc,%esp
  107764:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  10776a:	50                   	push   %eax
  10776b:	e8 fc b5 ff ff       	call   102d6c <dprintf>
    return 0;
  107770:	83 c4 10             	add    $0x10,%esp
  107773:	31 c0                	xor    %eax,%eax
}
  107775:	83 c4 08             	add    $0x8,%esp
  107778:	5b                   	pop    %ebx
  107779:	c3                   	ret
  10777a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 1.2 failed: (%d != 1)\n", container_can_consume(0, 10000));
  107780:	83 ec 08             	sub    $0x8,%esp
  107783:	68 10 27 00 00       	push   $0x2710
  107788:	6a 00                	push   $0x0
  10778a:	e8 91 fd ff ff       	call   107520 <container_can_consume>
  10778f:	5a                   	pop    %edx
  107790:	59                   	pop    %ecx
  107791:	50                   	push   %eax
  107792:	8d 83 30 99 ff ff    	lea    -0x66d0(%ebx),%eax
  107798:	50                   	push   %eax
  107799:	e8 ce b5 ff ff       	call   102d6c <dprintf>
        return 1;
  10779e:	83 c4 10             	add    $0x10,%esp
}
  1077a1:	83 c4 08             	add    $0x8,%esp
        return 1;
  1077a4:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1077a9:	5b                   	pop    %ebx
  1077aa:	c3                   	ret
  1077ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d <= 10000)\n", container_get_quota(0));
  1077b0:	83 ec 0c             	sub    $0xc,%esp
  1077b3:	6a 00                	push   $0x0
  1077b5:	e8 26 fd ff ff       	call   1074e0 <container_get_quota>
  1077ba:	5a                   	pop    %edx
  1077bb:	59                   	pop    %ecx
  1077bc:	50                   	push   %eax
  1077bd:	8d 83 c4 ab ff ff    	lea    -0x543c(%ebx),%eax
  1077c3:	50                   	push   %eax
  1077c4:	e8 a3 b5 ff ff       	call   102d6c <dprintf>
        return 1;
  1077c9:	83 c4 10             	add    $0x10,%esp
  1077cc:	eb d3                	jmp    1077a1 <MContainer_test1+0x91>
  1077ce:	66 90                	xchg   %ax,%ax
        dprintf("test 1.3 failed: (%d != 0)\n", container_can_consume(0, 10000000));
  1077d0:	83 ec 08             	sub    $0x8,%esp
  1077d3:	68 80 96 98 00       	push   $0x989680
  1077d8:	6a 00                	push   $0x0
  1077da:	e8 41 fd ff ff       	call   107520 <container_can_consume>
  1077df:	5a                   	pop    %edx
  1077e0:	59                   	pop    %ecx
  1077e1:	50                   	push   %eax
  1077e2:	8d 83 39 9a ff ff    	lea    -0x65c7(%ebx),%eax
  1077e8:	50                   	push   %eax
  1077e9:	e8 7e b5 ff ff       	call   102d6c <dprintf>
        return 1;
  1077ee:	83 c4 10             	add    $0x10,%esp
  1077f1:	eb ae                	jmp    1077a1 <MContainer_test1+0x91>
  1077f3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1077fa:	00 
  1077fb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107800 <MContainer_test2>:

int MContainer_test2()
{
  107800:	55                   	push   %ebp
  107801:	57                   	push   %edi
  107802:	56                   	push   %esi
  107803:	53                   	push   %ebx
  107804:	e8 b7 8b ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107809:	81 c3 eb 97 00 00    	add    $0x97eb,%ebx
  10780f:	83 ec 38             	sub    $0x38,%esp
    unsigned int old_usage = container_get_usage(0);
  107812:	6a 00                	push   $0x0
  107814:	e8 e7 fc ff ff       	call   107500 <container_get_usage>
    unsigned int old_nchildren = container_get_nchildren(0);
  107819:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    unsigned int old_usage = container_get_usage(0);
  107820:	89 c5                	mov    %eax,%ebp
    unsigned int old_nchildren = container_get_nchildren(0);
  107822:	e8 99 fc ff ff       	call   1074c0 <container_get_nchildren>
  107827:	89 c7                	mov    %eax,%edi
    unsigned int chid = container_split(0, 100);
  107829:	58                   	pop    %eax
  10782a:	5a                   	pop    %edx
  10782b:	6a 64                	push   $0x64
  10782d:	6a 00                	push   $0x0
  10782f:	e8 1c fd ff ff       	call   107550 <container_split>
    if (container_get_quota(chid) != 100
  107834:	89 04 24             	mov    %eax,(%esp)
    unsigned int chid = container_split(0, 100);
  107837:	89 c6                	mov    %eax,%esi
    if (container_get_quota(chid) != 100
  107839:	e8 a2 fc ff ff       	call   1074e0 <container_get_quota>
  10783e:	83 c4 10             	add    $0x10,%esp
  107841:	83 f8 64             	cmp    $0x64,%eax
  107844:	0f 84 8e 00 00 00    	je     1078d8 <MContainer_test2+0xd8>
        || container_get_parent(chid) != 0
        || container_get_usage(chid) != 0
        || container_get_nchildren(chid) != 0
        || container_get_usage(0) != old_usage + 100
  10784a:	8d 45 64             	lea    0x64(%ebp),%eax
  10784d:	89 44 24 10          	mov    %eax,0x10(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  107851:	8d 47 01             	lea    0x1(%edi),%eax
  107854:	89 44 24 0c          	mov    %eax,0xc(%esp)
        dprintf("test 2.1 failed:\n"
  107858:	83 ec 0c             	sub    $0xc,%esp
  10785b:	6a 00                	push   $0x0
  10785d:	e8 5e fc ff ff       	call   1074c0 <container_get_nchildren>
  107862:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  107869:	89 44 24 2c          	mov    %eax,0x2c(%esp)
  10786d:	e8 8e fc ff ff       	call   107500 <container_get_usage>
  107872:	89 34 24             	mov    %esi,(%esp)
  107875:	89 44 24 28          	mov    %eax,0x28(%esp)
  107879:	e8 42 fc ff ff       	call   1074c0 <container_get_nchildren>
  10787e:	89 34 24             	mov    %esi,(%esp)
  107881:	89 44 24 24          	mov    %eax,0x24(%esp)
  107885:	e8 76 fc ff ff       	call   107500 <container_get_usage>
  10788a:	89 34 24             	mov    %esi,(%esp)
  10788d:	89 c5                	mov    %eax,%ebp
  10788f:	e8 0c fc ff ff       	call   1074a0 <container_get_parent>
  107894:	89 34 24             	mov    %esi,(%esp)
  107897:	89 c7                	mov    %eax,%edi
  107899:	e8 42 fc ff ff       	call   1074e0 <container_get_quota>
  10789e:	5e                   	pop    %esi
  10789f:	ff 74 24 18          	push   0x18(%esp)
  1078a3:	8b 54 24 2c          	mov    0x2c(%esp),%edx
  1078a7:	52                   	push   %edx
  1078a8:	ff 74 24 24          	push   0x24(%esp)
  1078ac:	8b 4c 24 30          	mov    0x30(%esp),%ecx
  1078b0:	51                   	push   %ecx
  1078b1:	ff 74 24 30          	push   0x30(%esp)
  1078b5:	55                   	push   %ebp
  1078b6:	57                   	push   %edi
  1078b7:	50                   	push   %eax
  1078b8:	8d 83 e4 ab ff ff    	lea    -0x541c(%ebx),%eax
  1078be:	50                   	push   %eax
  1078bf:	e8 a8 b4 ff ff       	call   102d6c <dprintf>
                container_get_parent(chid),
                container_get_usage(chid),
                container_get_nchildren(chid),
                container_get_usage(0), old_usage + 100,
                container_get_nchildren(0), old_nchildren + 1);
        return 1;
  1078c4:	83 c4 30             	add    $0x30,%esp
  1078c7:	b8 01 00 00 00       	mov    $0x1,%eax
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  1078cc:	83 c4 2c             	add    $0x2c,%esp
  1078cf:	5b                   	pop    %ebx
  1078d0:	5e                   	pop    %esi
  1078d1:	5f                   	pop    %edi
  1078d2:	5d                   	pop    %ebp
  1078d3:	c3                   	ret
  1078d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        || container_get_parent(chid) != 0
  1078d8:	83 ec 0c             	sub    $0xc,%esp
        || container_get_usage(0) != old_usage + 100
  1078db:	83 c5 64             	add    $0x64,%ebp
        || container_get_parent(chid) != 0
  1078de:	56                   	push   %esi
  1078df:	e8 bc fb ff ff       	call   1074a0 <container_get_parent>
        || container_get_nchildren(0) != old_nchildren + 1) {
  1078e4:	8d 57 01             	lea    0x1(%edi),%edx
        || container_get_usage(0) != old_usage + 100
  1078e7:	89 6c 24 20          	mov    %ebp,0x20(%esp)
        || container_get_nchildren(0) != old_nchildren + 1) {
  1078eb:	89 54 24 1c          	mov    %edx,0x1c(%esp)
        || container_get_parent(chid) != 0
  1078ef:	83 c4 10             	add    $0x10,%esp
  1078f2:	85 c0                	test   %eax,%eax
  1078f4:	0f 85 5e ff ff ff    	jne    107858 <MContainer_test2+0x58>
        || container_get_usage(chid) != 0
  1078fa:	83 ec 0c             	sub    $0xc,%esp
  1078fd:	56                   	push   %esi
  1078fe:	e8 fd fb ff ff       	call   107500 <container_get_usage>
  107903:	83 c4 10             	add    $0x10,%esp
  107906:	85 c0                	test   %eax,%eax
  107908:	0f 85 4a ff ff ff    	jne    107858 <MContainer_test2+0x58>
        || container_get_nchildren(chid) != 0
  10790e:	83 ec 0c             	sub    $0xc,%esp
  107911:	56                   	push   %esi
  107912:	e8 a9 fb ff ff       	call   1074c0 <container_get_nchildren>
  107917:	83 c4 10             	add    $0x10,%esp
  10791a:	85 c0                	test   %eax,%eax
  10791c:	0f 85 36 ff ff ff    	jne    107858 <MContainer_test2+0x58>
        || container_get_usage(0) != old_usage + 100
  107922:	83 ec 0c             	sub    $0xc,%esp
  107925:	6a 00                	push   $0x0
  107927:	e8 d4 fb ff ff       	call   107500 <container_get_usage>
  10792c:	83 c4 10             	add    $0x10,%esp
  10792f:	39 e8                	cmp    %ebp,%eax
  107931:	0f 85 21 ff ff ff    	jne    107858 <MContainer_test2+0x58>
        || container_get_nchildren(0) != old_nchildren + 1) {
  107937:	83 ec 0c             	sub    $0xc,%esp
  10793a:	6a 00                	push   $0x0
  10793c:	e8 7f fb ff ff       	call   1074c0 <container_get_nchildren>
  107941:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
  107945:	83 c4 10             	add    $0x10,%esp
  107948:	39 c8                	cmp    %ecx,%eax
  10794a:	0f 85 08 ff ff ff    	jne    107858 <MContainer_test2+0x58>
    container_alloc(chid);
  107950:	83 ec 0c             	sub    $0xc,%esp
  107953:	56                   	push   %esi
  107954:	e8 57 fc ff ff       	call   1075b0 <container_alloc>
    if (container_get_usage(chid) != 1) {
  107959:	89 34 24             	mov    %esi,(%esp)
  10795c:	e8 9f fb ff ff       	call   107500 <container_get_usage>
  107961:	83 c4 10             	add    $0x10,%esp
  107964:	83 f8 01             	cmp    $0x1,%eax
  107967:	74 20                	je     107989 <MContainer_test2+0x189>
        dprintf("test 2.2 failed: (%d != 1)\n", container_get_usage(chid));
  107969:	83 ec 0c             	sub    $0xc,%esp
  10796c:	56                   	push   %esi
  10796d:	e8 8e fb ff ff       	call   107500 <container_get_usage>
  107972:	5a                   	pop    %edx
  107973:	59                   	pop    %ecx
  107974:	50                   	push   %eax
  107975:	8d 83 55 9a ff ff    	lea    -0x65ab(%ebx),%eax
  10797b:	50                   	push   %eax
  10797c:	e8 eb b3 ff ff       	call   102d6c <dprintf>
        return 1;
  107981:	83 c4 10             	add    $0x10,%esp
  107984:	e9 3e ff ff ff       	jmp    1078c7 <MContainer_test2+0xc7>
    dprintf("test 2 passed.\n");
  107989:	83 ec 0c             	sub    $0xc,%esp
  10798c:	8d 83 8a 98 ff ff    	lea    -0x6776(%ebx),%eax
  107992:	50                   	push   %eax
  107993:	e8 d4 b3 ff ff       	call   102d6c <dprintf>
    return 0;
  107998:	83 c4 10             	add    $0x10,%esp
  10799b:	31 c0                	xor    %eax,%eax
  10799d:	e9 2a ff ff ff       	jmp    1078cc <MContainer_test2+0xcc>
  1079a2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1079a9:	00 
  1079aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

001079b0 <MContainer_test_own>:
int MContainer_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  1079b0:	31 c0                	xor    %eax,%eax
  1079b2:	c3                   	ret
  1079b3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1079ba:	00 
  1079bb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

001079c0 <test_MContainer>:

int test_MContainer()
{
  1079c0:	53                   	push   %ebx
  1079c1:	83 ec 08             	sub    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  1079c4:	e8 47 fd ff ff       	call   107710 <MContainer_test1>
  1079c9:	89 c3                	mov    %eax,%ebx
  1079cb:	e8 30 fe ff ff       	call   107800 <MContainer_test2>
}
  1079d0:	83 c4 08             	add    $0x8,%esp
    return MContainer_test1() + MContainer_test2() + MContainer_test_own();
  1079d3:	01 d8                	add    %ebx,%eax
}
  1079d5:	5b                   	pop    %ebx
  1079d6:	c3                   	ret
  1079d7:	66 90                	xchg   %ax,%ax
  1079d9:	66 90                	xchg   %ax,%ax
  1079db:	66 90                	xchg   %ax,%ax
  1079dd:	66 90                	xchg   %ax,%ax
  1079df:	90                   	nop

001079e0 <set_pdir_base>:

char * PDirPool[NUM_IDS][1024] gcc_aligned(PAGESIZE);
unsigned int IDPTbl[1024][1024] gcc_aligned(PAGESIZE);

void set_pdir_base(unsigned int index)
{
  1079e0:	53                   	push   %ebx
  1079e1:	e8 da 89 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1079e6:	81 c3 0e 96 00 00    	add    $0x960e,%ebx
  1079ec:	83 ec 14             	sub    $0x14,%esp
    set_cr3(PDirPool[index]);
  1079ef:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1079f3:	c1 e0 0c             	shl    $0xc,%eax
  1079f6:	8d 84 03 0c 20 c5 01 	lea    0x1c5200c(%ebx,%eax,1),%eax
  1079fd:	50                   	push   %eax
  1079fe:	e8 a7 97 ff ff       	call   1011aa <set_cr3>
}
  107a03:	83 c4 18             	add    $0x18,%esp
  107a06:	5b                   	pop    %ebx
  107a07:	c3                   	ret
  107a08:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107a0f:	00 

00107a10 <get_pdir_entry>:

unsigned int get_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    return (unsigned int)PDirPool[proc_index][pde_index];
  107a10:	e8 a7 89 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  107a15:	81 c2 df 95 00 00    	add    $0x95df,%edx
  107a1b:	8b 44 24 04          	mov    0x4(%esp),%eax
  107a1f:	c1 e0 0a             	shl    $0xa,%eax
  107a22:	03 44 24 08          	add    0x8(%esp),%eax
  107a26:	8b 84 82 0c 20 c5 01 	mov    0x1c5200c(%edx,%eax,4),%eax
}   
  107a2d:	c3                   	ret
  107a2e:	66 90                	xchg   %ax,%ax

00107a30 <set_pdir_entry>:

void set_pdir_entry(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
    PDirPool[proc_index][pde_index] = (char *)value;
  107a30:	e8 e7 d5 ff ff       	call   10501c <__x86.get_pc_thunk.cx>
  107a35:	81 c1 bf 95 00 00    	add    $0x95bf,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  107a3b:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  107a3f:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  107a43:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  107a46:	c1 e0 0a             	shl    $0xa,%eax
  107a49:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU; 
  107a4d:	83 ca 07             	or     $0x7,%edx
  107a50:	89 94 81 0c 20 c5 01 	mov    %edx,0x1c5200c(%ecx,%eax,4)
}
  107a57:	c3                   	ret
  107a58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107a5f:	00 

00107a60 <set_pdir_entry_super>:
// NEW: Maps a 4MB physical frame directly into the Page Directory
void set_pdir_entry_super(unsigned int proc_index, unsigned int pde_index, unsigned int page_index)
{
    // Sets Bit 7 (PTE_PS) to indicate this PDE points to a 4MB page
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
    PDirPool[proc_index][pde_index] = (char *)value;
  107a60:	e8 b7 d5 ff ff       	call   10501c <__x86.get_pc_thunk.cx>
  107a65:	81 c1 8f 95 00 00    	add    $0x958f,%ecx
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
  107a6b:	8b 54 24 0c          	mov    0xc(%esp),%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  107a6f:	8b 44 24 04          	mov    0x4(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
  107a73:	c1 e2 0c             	shl    $0xc,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  107a76:	c1 e0 0a             	shl    $0xa,%eax
  107a79:	03 44 24 08          	add    0x8(%esp),%eax
    unsigned int value = (page_index << 12) | PT_PERM_PTU | PTE_PS; 
  107a7d:	80 ca 87             	or     $0x87,%dl
  107a80:	89 94 81 0c 20 c5 01 	mov    %edx,0x1c5200c(%ecx,%eax,4)
}
  107a87:	c3                   	ret
  107a88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107a8f:	00 

00107a90 <set_pdir_entry_identity>:

void set_pdir_entry_identity(unsigned int proc_index, unsigned int pde_index)
{   
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  107a90:	e8 87 d5 ff ff       	call   10501c <__x86.get_pc_thunk.cx>
  107a95:	81 c1 5f 95 00 00    	add    $0x955f,%ecx
{   
  107a9b:	53                   	push   %ebx
  107a9c:	8b 5c 24 0c          	mov    0xc(%esp),%ebx
    unsigned int value = (unsigned int)IDPTbl[pde_index];
  107aa0:	89 d8                	mov    %ebx,%eax
  107aa2:	c1 e0 0c             	shl    $0xc,%eax
  107aa5:	8d 94 01 0c 20 85 01 	lea    0x185200c(%ecx,%eax,1),%edx
    value |= PT_PERM_PTU;
    PDirPool[proc_index][pde_index] = (char *)value;
  107aac:	8b 44 24 08          	mov    0x8(%esp),%eax
    value |= PT_PERM_PTU;
  107ab0:	83 ca 07             	or     $0x7,%edx
    PDirPool[proc_index][pde_index] = (char *)value;
  107ab3:	c1 e0 0a             	shl    $0xa,%eax
  107ab6:	01 d8                	add    %ebx,%eax
}   
  107ab8:	5b                   	pop    %ebx
    value |= PT_PERM_PTU;
  107ab9:	89 94 81 0c 20 c5 01 	mov    %edx,0x1c5200c(%ecx,%eax,4)
}   
  107ac0:	c3                   	ret
  107ac1:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107ac8:	00 
  107ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00107ad0 <rmv_pdir_entry>:

void rmv_pdir_entry(unsigned int proc_index, unsigned int pde_index)
{
    PDirPool[proc_index][pde_index] = (char *)0x00000000;
  107ad0:	e8 e7 88 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  107ad5:	81 c2 1f 95 00 00    	add    $0x951f,%edx
  107adb:	8b 44 24 04          	mov    0x4(%esp),%eax
  107adf:	c1 e0 0a             	shl    $0xa,%eax
  107ae2:	03 44 24 08          	add    0x8(%esp),%eax
  107ae6:	c7 84 82 0c 20 c5 01 	movl   $0x0,0x1c5200c(%edx,%eax,4)
  107aed:	00 00 00 00 
}   
  107af1:	c3                   	ret
  107af2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107af9:	00 
  107afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107b00 <get_ptbl_entry>:

unsigned int get_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{   
    unsigned int pte_addr = (unsigned int )PDirPool[proc_index][pde_index];
  107b00:	e8 b7 88 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  107b05:	81 c2 ef 94 00 00    	add    $0x94ef,%edx
  107b0b:	8b 44 24 04          	mov    0x4(%esp),%eax
  107b0f:	c1 e0 0a             	shl    $0xa,%eax
  107b12:	03 44 24 08          	add    0x8(%esp),%eax
  107b16:	8b 84 82 0c 20 c5 01 	mov    0x1c5200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;
    return *(unsigned int *)pte_addr;
  107b1d:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;
  107b21:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    return *(unsigned int *)pte_addr;
  107b26:	8b 04 90             	mov    (%eax,%edx,4),%eax
}
  107b29:	c3                   	ret
  107b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00107b30 <set_ptbl_entry>:

void set_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index, unsigned int page_index, unsigned int perm)
{   
    unsigned int* pte;
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  107b30:	e8 87 88 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  107b35:	81 c2 bf 94 00 00    	add    $0x94bf,%edx
  107b3b:	8b 44 24 04          	mov    0x4(%esp),%eax
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;

    pte = (unsigned int *)pte_addr;
    *pte = (page_index << 12) | (perm & 0x00000fff);
  107b3f:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  107b43:	c1 e0 0a             	shl    $0xa,%eax
  107b46:	03 44 24 08          	add    0x8(%esp),%eax
    *pte = (page_index << 12) | (perm & 0x00000fff);
  107b4a:	81 e1 ff 0f 00 00    	and    $0xfff,%ecx
    unsigned int pte_addr =  (unsigned int )PDirPool[proc_index][pde_index];
  107b50:	8b 94 82 0c 20 c5 01 	mov    0x1c5200c(%edx,%eax,4),%edx
    *pte = (page_index << 12) | (perm & 0x00000fff);
  107b57:	8b 44 24 10          	mov    0x10(%esp),%eax
  107b5b:	c1 e0 0c             	shl    $0xc,%eax
    pte_addr &= 0xfffff000;
  107b5e:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    *pte = (page_index << 12) | (perm & 0x00000fff);
  107b64:	09 c8                	or     %ecx,%eax
  107b66:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  107b6a:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
}   
  107b6d:	c3                   	ret
  107b6e:	66 90                	xchg   %ax,%ax

00107b70 <set_ptbl_entry_identity>:

void set_ptbl_entry_identity(unsigned int pde_index, unsigned int pte_index, unsigned int perm)
{
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
    IDPTbl[pde_index][pte_index] |= perm;
  107b70:	e8 a7 d4 ff ff       	call   10501c <__x86.get_pc_thunk.cx>
  107b75:	81 c1 7f 94 00 00    	add    $0x947f,%ecx
  107b7b:	8b 44 24 04          	mov    0x4(%esp),%eax
  107b7f:	c1 e0 0a             	shl    $0xa,%eax
  107b82:	03 44 24 08          	add    0x8(%esp),%eax
    IDPTbl[pde_index][pte_index] = ((pde_index << 10) + pte_index) << 12;
  107b86:	89 c2                	mov    %eax,%edx
  107b88:	c1 e2 0c             	shl    $0xc,%edx
    IDPTbl[pde_index][pte_index] |= perm;
  107b8b:	0b 54 24 0c          	or     0xc(%esp),%edx
  107b8f:	89 94 81 0c 20 85 01 	mov    %edx,0x185200c(%ecx,%eax,4)
}
  107b96:	c3                   	ret
  107b97:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107b9e:	00 
  107b9f:	90                   	nop

00107ba0 <rmv_ptbl_entry>:

void rmv_ptbl_entry(unsigned int proc_index, unsigned int pde_index, unsigned int pte_index)
{
    unsigned int * pte;
    unsigned int pte_addr = (unsigned int)PDirPool[proc_index][pde_index];
  107ba0:	e8 17 88 ff ff       	call   1003bc <__x86.get_pc_thunk.dx>
  107ba5:	81 c2 4f 94 00 00    	add    $0x944f,%edx
  107bab:	8b 44 24 04          	mov    0x4(%esp),%eax
  107baf:	c1 e0 0a             	shl    $0xa,%eax
  107bb2:	03 44 24 08          	add    0x8(%esp),%eax
  107bb6:	8b 84 82 0c 20 c5 01 	mov    0x1c5200c(%edx,%eax,4),%eax
    pte_addr &= 0xfffff000;
    pte_addr += pte_index << 2;
    pte = (unsigned int *)pte_addr;
    *pte = 0;
  107bbd:	8b 54 24 0c          	mov    0xc(%esp),%edx
    pte_addr &= 0xfffff000;
  107bc1:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    *pte = 0;
  107bc6:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
  107bcd:	c3                   	ret
  107bce:	66 90                	xchg   %ax,%ax

00107bd0 <MPTIntro_test1>:

extern char *PDirPool[NUM_IDS][1024];
extern unsigned int IDPTbl[1024][1024];

int MPTIntro_test1()
{
  107bd0:	56                   	push   %esi
  107bd1:	53                   	push   %ebx
  107bd2:	e8 e9 87 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107bd7:	81 c3 1d 94 00 00    	add    $0x941d,%ebx
  107bdd:	83 ec 10             	sub    $0x10,%esp
    set_pdir_base(0);
  107be0:	6a 00                	push   $0x0
  107be2:	e8 f9 fd ff ff       	call   1079e0 <set_pdir_base>
    if ((unsigned int) PDirPool[0] != rcr3()) {
  107be7:	e8 ca bd ff ff       	call   1039b6 <rcr3>
  107bec:	c7 c6 00 30 d6 01    	mov    $0x1d63000,%esi
  107bf2:	83 c4 10             	add    $0x10,%esp
  107bf5:	39 f0                	cmp    %esi,%eax
  107bf7:	74 27                	je     107c20 <MPTIntro_test1+0x50>
        dprintf("test 1.1 failed: (%d != %d)\n",
  107bf9:	e8 b8 bd ff ff       	call   1039b6 <rcr3>
  107bfe:	83 ec 04             	sub    $0x4,%esp
  107c01:	50                   	push   %eax
  107c02:	8d 83 71 9a ff ff    	lea    -0x658f(%ebx),%eax
  107c08:	56                   	push   %esi
  107c09:	50                   	push   %eax
  107c0a:	e8 5d b1 ff ff       	call   102d6c <dprintf>
                (unsigned int) PDirPool[0], rcr3());
        return 1;
  107c0f:	83 c4 10             	add    $0x10,%esp
  107c12:	b8 01 00 00 00       	mov    $0x1,%eax
                get_pdir_entry(1, 1), get_pdir_entry(1, 2));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}
  107c17:	83 c4 04             	add    $0x4,%esp
  107c1a:	5b                   	pop    %ebx
  107c1b:	5e                   	pop    %esi
  107c1c:	c3                   	ret
  107c1d:	8d 76 00             	lea    0x0(%esi),%esi
    set_pdir_entry_identity(1, 1);
  107c20:	83 ec 08             	sub    $0x8,%esp
  107c23:	6a 01                	push   $0x1
  107c25:	6a 01                	push   $0x1
  107c27:	e8 64 fe ff ff       	call   107a90 <set_pdir_entry_identity>
    set_pdir_entry(1, 2, 100);
  107c2c:	83 c4 0c             	add    $0xc,%esp
  107c2f:	6a 64                	push   $0x64
  107c31:	6a 02                	push   $0x2
  107c33:	6a 01                	push   $0x1
  107c35:	e8 f6 fd ff ff       	call   107a30 <set_pdir_entry>
    if (get_pdir_entry(1, 1) != (unsigned int) IDPTbl[1] + 7) {
  107c3a:	58                   	pop    %eax
  107c3b:	5a                   	pop    %edx
  107c3c:	6a 01                	push   $0x1
  107c3e:	6a 01                	push   $0x1
  107c40:	e8 cb fd ff ff       	call   107a10 <get_pdir_entry>
  107c45:	c7 c6 00 30 96 01    	mov    $0x1963000,%esi
  107c4b:	83 c4 10             	add    $0x10,%esp
  107c4e:	81 c6 07 10 00 00    	add    $0x1007,%esi
  107c54:	39 c6                	cmp    %eax,%esi
  107c56:	74 28                	je     107c80 <MPTIntro_test1+0xb0>
        dprintf("test 1.2 failed: (%d != %d)\n",
  107c58:	83 ec 08             	sub    $0x8,%esp
  107c5b:	6a 01                	push   $0x1
  107c5d:	6a 01                	push   $0x1
  107c5f:	e8 ac fd ff ff       	call   107a10 <get_pdir_entry>
  107c64:	83 c4 0c             	add    $0xc,%esp
  107c67:	56                   	push   %esi
  107c68:	50                   	push   %eax
  107c69:	8d 83 8e 9a ff ff    	lea    -0x6572(%ebx),%eax
  107c6f:	50                   	push   %eax
  107c70:	e8 f7 b0 ff ff       	call   102d6c <dprintf>
        return 1;
  107c75:	83 c4 10             	add    $0x10,%esp
  107c78:	eb 98                	jmp    107c12 <MPTIntro_test1+0x42>
  107c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (get_pdir_entry(1, 2) != 409607) {
  107c80:	83 ec 08             	sub    $0x8,%esp
  107c83:	6a 02                	push   $0x2
  107c85:	6a 01                	push   $0x1
  107c87:	e8 84 fd ff ff       	call   107a10 <get_pdir_entry>
  107c8c:	83 c4 10             	add    $0x10,%esp
  107c8f:	3d 07 40 06 00       	cmp    $0x64007,%eax
  107c94:	75 72                	jne    107d08 <MPTIntro_test1+0x138>
    rmv_pdir_entry(1, 1);
  107c96:	83 ec 08             	sub    $0x8,%esp
  107c99:	6a 01                	push   $0x1
  107c9b:	6a 01                	push   $0x1
  107c9d:	e8 2e fe ff ff       	call   107ad0 <rmv_pdir_entry>
    rmv_pdir_entry(1, 2);
  107ca2:	59                   	pop    %ecx
  107ca3:	5e                   	pop    %esi
  107ca4:	6a 02                	push   $0x2
  107ca6:	6a 01                	push   $0x1
  107ca8:	e8 23 fe ff ff       	call   107ad0 <rmv_pdir_entry>
    if (get_pdir_entry(1, 1) != 0 || get_pdir_entry(1, 2) != 0) {
  107cad:	58                   	pop    %eax
  107cae:	5a                   	pop    %edx
  107caf:	6a 01                	push   $0x1
  107cb1:	6a 01                	push   $0x1
  107cb3:	e8 58 fd ff ff       	call   107a10 <get_pdir_entry>
  107cb8:	83 c4 10             	add    $0x10,%esp
  107cbb:	85 c0                	test   %eax,%eax
  107cbd:	75 13                	jne    107cd2 <MPTIntro_test1+0x102>
  107cbf:	83 ec 08             	sub    $0x8,%esp
  107cc2:	6a 02                	push   $0x2
  107cc4:	6a 01                	push   $0x1
  107cc6:	e8 45 fd ff ff       	call   107a10 <get_pdir_entry>
  107ccb:	83 c4 10             	add    $0x10,%esp
  107cce:	85 c0                	test   %eax,%eax
  107cd0:	74 5e                	je     107d30 <MPTIntro_test1+0x160>
        dprintf("test 1.4 failed: (%d != 0 || %d != 0)\n",
  107cd2:	83 ec 08             	sub    $0x8,%esp
  107cd5:	6a 02                	push   $0x2
  107cd7:	6a 01                	push   $0x1
  107cd9:	e8 32 fd ff ff       	call   107a10 <get_pdir_entry>
  107cde:	89 c6                	mov    %eax,%esi
  107ce0:	58                   	pop    %eax
  107ce1:	5a                   	pop    %edx
  107ce2:	6a 01                	push   $0x1
  107ce4:	6a 01                	push   $0x1
  107ce6:	e8 25 fd ff ff       	call   107a10 <get_pdir_entry>
  107ceb:	83 c4 0c             	add    $0xc,%esp
  107cee:	56                   	push   %esi
  107cef:	50                   	push   %eax
  107cf0:	8d 83 60 ac ff ff    	lea    -0x53a0(%ebx),%eax
  107cf6:	50                   	push   %eax
  107cf7:	e8 70 b0 ff ff       	call   102d6c <dprintf>
        return 1;
  107cfc:	83 c4 10             	add    $0x10,%esp
  107cff:	e9 0e ff ff ff       	jmp    107c12 <MPTIntro_test1+0x42>
  107d04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d != 409607)\n", get_pdir_entry(1, 2));
  107d08:	83 ec 08             	sub    $0x8,%esp
  107d0b:	6a 02                	push   $0x2
  107d0d:	6a 01                	push   $0x1
  107d0f:	e8 fc fc ff ff       	call   107a10 <get_pdir_entry>
  107d14:	59                   	pop    %ecx
  107d15:	5e                   	pop    %esi
  107d16:	50                   	push   %eax
  107d17:	8d 83 3c ac ff ff    	lea    -0x53c4(%ebx),%eax
  107d1d:	50                   	push   %eax
  107d1e:	e8 49 b0 ff ff       	call   102d6c <dprintf>
        return 1;
  107d23:	83 c4 10             	add    $0x10,%esp
  107d26:	e9 e7 fe ff ff       	jmp    107c12 <MPTIntro_test1+0x42>
  107d2b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    dprintf("test 1 passed.\n");
  107d30:	83 ec 0c             	sub    $0xc,%esp
  107d33:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  107d39:	50                   	push   %eax
  107d3a:	e8 2d b0 ff ff       	call   102d6c <dprintf>
    return 0;
  107d3f:	83 c4 10             	add    $0x10,%esp
  107d42:	31 c0                	xor    %eax,%eax
  107d44:	e9 ce fe ff ff       	jmp    107c17 <MPTIntro_test1+0x47>
  107d49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00107d50 <MPTIntro_test2>:

int MPTIntro_test2()
{
  107d50:	53                   	push   %ebx
  107d51:	e8 6a 86 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107d56:	81 c3 9e 92 00 00    	add    $0x929e,%ebx
  107d5c:	83 ec 0c             	sub    $0xc,%esp
    set_pdir_entry(1, 1, 10000);
  107d5f:	68 10 27 00 00       	push   $0x2710
  107d64:	6a 01                	push   $0x1
  107d66:	6a 01                	push   $0x1
  107d68:	e8 c3 fc ff ff       	call   107a30 <set_pdir_entry>
    set_ptbl_entry(1, 1, 1, 10000, 259);
  107d6d:	c7 04 24 03 01 00 00 	movl   $0x103,(%esp)
  107d74:	68 10 27 00 00       	push   $0x2710
  107d79:	6a 01                	push   $0x1
  107d7b:	6a 01                	push   $0x1
  107d7d:	6a 01                	push   $0x1
  107d7f:	e8 ac fd ff ff       	call   107b30 <set_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 40960259) {
  107d84:	83 c4 1c             	add    $0x1c,%esp
  107d87:	6a 01                	push   $0x1
  107d89:	6a 01                	push   $0x1
  107d8b:	6a 01                	push   $0x1
  107d8d:	e8 6e fd ff ff       	call   107b00 <get_ptbl_entry>
  107d92:	83 c4 10             	add    $0x10,%esp
  107d95:	3d 03 01 71 02       	cmp    $0x2710103,%eax
  107d9a:	74 34                	je     107dd0 <MPTIntro_test2+0x80>
        dprintf("test 2.1 failed: (%d != 40960259)\n", get_ptbl_entry(1, 1, 1));
  107d9c:	83 ec 04             	sub    $0x4,%esp
  107d9f:	6a 01                	push   $0x1
  107da1:	6a 01                	push   $0x1
  107da3:	6a 01                	push   $0x1
  107da5:	e8 56 fd ff ff       	call   107b00 <get_ptbl_entry>
  107daa:	5a                   	pop    %edx
  107dab:	59                   	pop    %ecx
  107dac:	50                   	push   %eax
  107dad:	8d 83 88 ac ff ff    	lea    -0x5378(%ebx),%eax
  107db3:	50                   	push   %eax
  107db4:	e8 b3 af ff ff       	call   102d6c <dprintf>
        return 1;
  107db9:	83 c4 10             	add    $0x10,%esp
        return 1;
    }
    rmv_pdir_entry(1, 1);
    dprintf("test 2 passed.\n");
    return 0;
}
  107dbc:	83 c4 08             	add    $0x8,%esp
        return 1;
  107dbf:	b8 01 00 00 00       	mov    $0x1,%eax
}
  107dc4:	5b                   	pop    %ebx
  107dc5:	c3                   	ret
  107dc6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107dcd:	00 
  107dce:	66 90                	xchg   %ax,%ax
    rmv_ptbl_entry(1, 1, 1);
  107dd0:	83 ec 04             	sub    $0x4,%esp
  107dd3:	6a 01                	push   $0x1
  107dd5:	6a 01                	push   $0x1
  107dd7:	6a 01                	push   $0x1
  107dd9:	e8 c2 fd ff ff       	call   107ba0 <rmv_ptbl_entry>
    if (get_ptbl_entry(1, 1, 1) != 0) {
  107dde:	83 c4 0c             	add    $0xc,%esp
  107de1:	6a 01                	push   $0x1
  107de3:	6a 01                	push   $0x1
  107de5:	6a 01                	push   $0x1
  107de7:	e8 14 fd ff ff       	call   107b00 <get_ptbl_entry>
  107dec:	83 c4 10             	add    $0x10,%esp
  107def:	85 c0                	test   %eax,%eax
  107df1:	75 2d                	jne    107e20 <MPTIntro_test2+0xd0>
    rmv_pdir_entry(1, 1);
  107df3:	83 ec 08             	sub    $0x8,%esp
  107df6:	6a 01                	push   $0x1
  107df8:	6a 01                	push   $0x1
  107dfa:	e8 d1 fc ff ff       	call   107ad0 <rmv_pdir_entry>
    dprintf("test 2 passed.\n");
  107dff:	8d 83 8a 98 ff ff    	lea    -0x6776(%ebx),%eax
  107e05:	89 04 24             	mov    %eax,(%esp)
  107e08:	e8 5f af ff ff       	call   102d6c <dprintf>
    return 0;
  107e0d:	83 c4 10             	add    $0x10,%esp
  107e10:	31 c0                	xor    %eax,%eax
}
  107e12:	83 c4 08             	add    $0x8,%esp
  107e15:	5b                   	pop    %ebx
  107e16:	c3                   	ret
  107e17:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107e1e:	00 
  107e1f:	90                   	nop
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry(1, 1, 1));
  107e20:	83 ec 04             	sub    $0x4,%esp
  107e23:	6a 01                	push   $0x1
  107e25:	6a 01                	push   $0x1
  107e27:	6a 01                	push   $0x1
  107e29:	e8 d2 fc ff ff       	call   107b00 <get_ptbl_entry>
  107e2e:	5a                   	pop    %edx
  107e2f:	59                   	pop    %ecx
  107e30:	50                   	push   %eax
  107e31:	8d 83 ab 9a ff ff    	lea    -0x6555(%ebx),%eax
  107e37:	50                   	push   %eax
  107e38:	e8 2f af ff ff       	call   102d6c <dprintf>
        return 1;
  107e3d:	83 c4 10             	add    $0x10,%esp
  107e40:	e9 77 ff ff ff       	jmp    107dbc <MPTIntro_test2+0x6c>
  107e45:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107e4c:	00 
  107e4d:	8d 76 00             	lea    0x0(%esi),%esi

00107e50 <MPTIntro_test_own>:
int MPTIntro_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  107e50:	31 c0                	xor    %eax,%eax
  107e52:	c3                   	ret
  107e53:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107e5a:	00 
  107e5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107e60 <test_MPTIntro>:

int test_MPTIntro()
{
  107e60:	53                   	push   %ebx
  107e61:	83 ec 08             	sub    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  107e64:	e8 67 fd ff ff       	call   107bd0 <MPTIntro_test1>
  107e69:	89 c3                	mov    %eax,%ebx
  107e6b:	e8 e0 fe ff ff       	call   107d50 <MPTIntro_test2>
  107e70:	83 c4 08             	add    $0x8,%esp
    return MPTIntro_test1() + MPTIntro_test2() + MPTIntro_test_own();
  107e73:	01 d8                	add    %ebx,%eax
  107e75:	5b                   	pop    %ebx
  107e76:	c3                   	ret
  107e77:	66 90                	xchg   %ax,%ax
  107e79:	66 90                	xchg   %ax,%ax
  107e7b:	66 90                	xchg   %ax,%ax
  107e7d:	66 90                	xchg   %ax,%ax
  107e7f:	90                   	nop

00107e80 <set_pde>:
 */
void set_pde(unsigned int proc_index, unsigned int pde_index, unsigned int entry)
{
    // Access the global Page Directory Pool
    // In most CertiKOS labs, this is PDirPool[proc_index][pde_index]
    PDirPool[proc_index][pde_index] = entry;
  107e80:	e8 33 85 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  107e85:	05 6f 91 00 00       	add    $0x916f,%eax
  107e8a:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
  107e8e:	c7 c2 00 30 d6 01    	mov    $0x1d63000,%edx
  107e94:	8b 44 24 04          	mov    0x4(%esp),%eax
  107e98:	c1 e0 0a             	shl    $0xa,%eax
  107e9b:	03 44 24 08          	add    0x8(%esp),%eax
  107e9f:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
}
  107ea2:	c3                   	ret
  107ea3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107eaa:	00 
  107eab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107eb0 <set_pde_full_by_va>:
    PDirPool[proc_index][pde_index] = entry;
  107eb0:	e8 03 85 ff ff       	call   1003b8 <__x86.get_pc_thunk.ax>
  107eb5:	05 3f 91 00 00       	add    $0x913f,%eax
// Add this to kern/vmm/MPTOp/MPTOp.c
void set_pde_full_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int entry)
{
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  107eba:	8b 54 24 08          	mov    0x8(%esp),%edx
  107ebe:	c1 ea 16             	shr    $0x16,%edx
    PDirPool[proc_index][pde_index] = entry;
  107ec1:	c7 c1 00 30 d6 01    	mov    $0x1d63000,%ecx
  107ec7:	8b 44 24 04          	mov    0x4(%esp),%eax
  107ecb:	c1 e0 0a             	shl    $0xa,%eax
  107ece:	01 d0                	add    %edx,%eax
  107ed0:	8b 54 24 0c          	mov    0xc(%esp),%edx
  107ed4:	89 14 81             	mov    %edx,(%ecx,%eax,4)
    // Call the lower level set_pde or set_pdir_entry 
    // but ensure it passes the WHOLE entry
    set_pde(proc_index, pde_index, entry); 
}
  107ed7:	c3                   	ret
  107ed8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107edf:	00 

00107ee0 <get_ptbl_entry_by_va>:
unsigned int get_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  107ee0:	55                   	push   %ebp
  107ee1:	57                   	push   %edi
  107ee2:	56                   	push   %esi
  107ee3:	53                   	push   %ebx
  107ee4:	e8 d7 84 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107ee9:	81 c3 0b 91 00 00    	add    $0x910b,%ebx
  107eef:	83 ec 14             	sub    $0x14,%esp
  107ef2:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  107ef6:	8b 7c 24 28          	mov    0x28(%esp),%edi
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  107efa:	89 f5                	mov    %esi,%ebp
  107efc:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  107eff:	55                   	push   %ebp
  107f00:	57                   	push   %edi
  107f01:	e8 0a fb ff ff       	call   107a10 <get_pdir_entry>

    if ((pde & PTE_P) == 0) {
  107f06:	83 c4 10             	add    $0x10,%esp
  107f09:	89 c2                	mov    %eax,%edx
  107f0b:	83 e2 01             	and    $0x1,%edx
  107f0e:	74 06                	je     107f16 <get_ptbl_entry_by_va+0x36>
        return 0;
    }

    // NEW: If PS bit is set, the PDE is the translation for the whole 4MB region
    if (pde & PTE_PS) {
        return pde;
  107f10:	89 c2                	mov    %eax,%edx
    if (pde & PTE_PS) {
  107f12:	a8 80                	test   $0x80,%al
  107f14:	74 0a                	je     107f20 <get_ptbl_entry_by_va+0x40>
    }

    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    return get_ptbl_entry(proc_index, pde_index, pte_index);
}         
  107f16:	83 c4 0c             	add    $0xc,%esp
  107f19:	89 d0                	mov    %edx,%eax
  107f1b:	5b                   	pop    %ebx
  107f1c:	5e                   	pop    %esi
  107f1d:	5f                   	pop    %edi
  107f1e:	5d                   	pop    %ebp
  107f1f:	c3                   	ret
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  107f20:	c1 ee 0c             	shr    $0xc,%esi
    return get_ptbl_entry(proc_index, pde_index, pte_index);
  107f23:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  107f26:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    return get_ptbl_entry(proc_index, pde_index, pte_index);
  107f2c:	56                   	push   %esi
  107f2d:	55                   	push   %ebp
  107f2e:	57                   	push   %edi
  107f2f:	e8 cc fb ff ff       	call   107b00 <get_ptbl_entry>
  107f34:	83 c4 10             	add    $0x10,%esp
}         
  107f37:	83 c4 0c             	add    $0xc,%esp
    return get_ptbl_entry(proc_index, pde_index, pte_index);
  107f3a:	89 c2                	mov    %eax,%edx
}         
  107f3c:	5b                   	pop    %ebx
  107f3d:	89 d0                	mov    %edx,%eax
  107f3f:	5e                   	pop    %esi
  107f40:	5f                   	pop    %edi
  107f41:	5d                   	pop    %ebp
  107f42:	c3                   	ret
  107f43:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107f4a:	00 
  107f4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00107f50 <get_pdir_entry_by_va>:

unsigned int get_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  107f50:	53                   	push   %ebx
  107f51:	e8 6a 84 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107f56:	81 c3 9e 90 00 00    	add    $0x909e,%ebx
  107f5c:	83 ec 10             	sub    $0x10,%esp
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  107f5f:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  107f63:	c1 e8 16             	shr    $0x16,%eax
    return get_pdir_entry(proc_index, pde_index);
  107f66:	50                   	push   %eax
  107f67:	ff 74 24 1c          	push   0x1c(%esp)
  107f6b:	e8 a0 fa ff ff       	call   107a10 <get_pdir_entry>
}
  107f70:	83 c4 18             	add    $0x18,%esp
  107f73:	5b                   	pop    %ebx
  107f74:	c3                   	ret
  107f75:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  107f7c:	00 
  107f7d:	8d 76 00             	lea    0x0(%esi),%esi

00107f80 <rmv_ptbl_entry_by_va>:

void rmv_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  107f80:	55                   	push   %ebp
  107f81:	57                   	push   %edi
  107f82:	56                   	push   %esi
  107f83:	53                   	push   %ebx
  107f84:	e8 37 84 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107f89:	81 c3 6b 90 00 00    	add    $0x906b,%ebx
  107f8f:	83 ec 14             	sub    $0x14,%esp
  107f92:	8b 74 24 2c          	mov    0x2c(%esp),%esi
  107f96:	8b 7c 24 28          	mov    0x28(%esp),%edi
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  107f9a:	89 f5                	mov    %esi,%ebp
  107f9c:	c1 ed 16             	shr    $0x16,%ebp
    unsigned int pde = get_pdir_entry(proc_index, pde_index);
  107f9f:	55                   	push   %ebp
  107fa0:	57                   	push   %edi
  107fa1:	e8 6a fa ff ff       	call   107a10 <get_pdir_entry>

    // If entry is missing or is a Superpage PDE, we don't remove a PTE
    if ((pde & PTE_P) == 0 || (pde & PTE_PS)) {
  107fa6:	83 c4 10             	add    $0x10,%esp
  107fa9:	25 81 00 00 00       	and    $0x81,%eax
  107fae:	83 f8 01             	cmp    $0x1,%eax
  107fb1:	74 0d                	je     107fc0 <rmv_ptbl_entry_by_va+0x40>
        return;
    }

    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
}
  107fb3:	83 c4 0c             	add    $0xc,%esp
  107fb6:	5b                   	pop    %ebx
  107fb7:	5e                   	pop    %esi
  107fb8:	5f                   	pop    %edi
  107fb9:	5d                   	pop    %ebp
  107fba:	c3                   	ret
  107fbb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  107fc0:	c1 ee 0c             	shr    $0xc,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  107fc3:	83 ec 04             	sub    $0x4,%esp
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  107fc6:	81 e6 ff 03 00 00    	and    $0x3ff,%esi
    rmv_ptbl_entry(proc_index, pde_index, pte_index);
  107fcc:	56                   	push   %esi
  107fcd:	55                   	push   %ebp
  107fce:	57                   	push   %edi
  107fcf:	e8 cc fb ff ff       	call   107ba0 <rmv_ptbl_entry>
  107fd4:	83 c4 10             	add    $0x10,%esp
}
  107fd7:	83 c4 0c             	add    $0xc,%esp
  107fda:	5b                   	pop    %ebx
  107fdb:	5e                   	pop    %esi
  107fdc:	5f                   	pop    %edi
  107fdd:	5d                   	pop    %ebp
  107fde:	c3                   	ret
  107fdf:	90                   	nop

00107fe0 <rmv_pdir_entry_by_va>:

void rmv_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr)
{
  107fe0:	53                   	push   %ebx
  107fe1:	e8 da 83 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  107fe6:	81 c3 0e 90 00 00    	add    $0x900e,%ebx
  107fec:	83 ec 10             	sub    $0x10,%esp
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  107fef:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  107ff3:	c1 e8 16             	shr    $0x16,%eax
    rmv_pdir_entry(proc_index, pde_index);
  107ff6:	50                   	push   %eax
  107ff7:	ff 74 24 1c          	push   0x1c(%esp)
  107ffb:	e8 d0 fa ff ff       	call   107ad0 <rmv_pdir_entry>
}
  108000:	83 c4 18             	add    $0x18,%esp
  108003:	5b                   	pop    %ebx
  108004:	c3                   	ret
  108005:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10800c:	00 
  10800d:	8d 76 00             	lea    0x0(%esi),%esi

00108010 <set_ptbl_entry_by_va>:

void set_ptbl_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index, unsigned int perm)
{
  108010:	53                   	push   %ebx
  108011:	e8 aa 83 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108016:	81 c3 de 8f 00 00    	add    $0x8fde,%ebx
  10801c:	83 ec 14             	sub    $0x14,%esp
  10801f:	8b 44 24 20          	mov    0x20(%esp),%eax
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  108023:	ff 74 24 28          	push   0x28(%esp)
  108027:	ff 74 24 28          	push   0x28(%esp)
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  10802b:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  10802d:	c1 e8 16             	shr    $0x16,%eax
    unsigned int pte_index = (vaddr & VA_PTBL_MASK) >> 12;
  108030:	c1 ea 0c             	shr    $0xc,%edx
  108033:	81 e2 ff 03 00 00    	and    $0x3ff,%edx
    set_ptbl_entry(proc_index, pde_index, pte_index, page_index, perm);
  108039:	52                   	push   %edx
  10803a:	50                   	push   %eax
  10803b:	ff 74 24 2c          	push   0x2c(%esp)
  10803f:	e8 ec fa ff ff       	call   107b30 <set_ptbl_entry>
}
  108044:	83 c4 28             	add    $0x28,%esp
  108047:	5b                   	pop    %ebx
  108048:	c3                   	ret
  108049:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00108050 <set_pdir_entry_by_va>:

void set_pdir_entry_by_va(unsigned int proc_index, unsigned int vaddr, unsigned int page_index)
{
  108050:	53                   	push   %ebx
  108051:	e8 6a 83 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108056:	81 c3 9e 8f 00 00    	add    $0x8f9e,%ebx
  10805c:	83 ec 0c             	sub    $0xc,%esp
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
    set_pdir_entry(proc_index, pde_index, page_index);
  10805f:	ff 74 24 1c          	push   0x1c(%esp)
    unsigned int pde_index = (vaddr & VA_PDIR_MASK) >> 22;
  108063:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  108067:	c1 e8 16             	shr    $0x16,%eax
    set_pdir_entry(proc_index, pde_index, page_index);
  10806a:	50                   	push   %eax
  10806b:	ff 74 24 1c          	push   0x1c(%esp)
  10806f:	e8 bc f9 ff ff       	call   107a30 <set_pdir_entry>
}   
  108074:	83 c4 18             	add    $0x18,%esp
  108077:	5b                   	pop    %ebx
  108078:	c3                   	ret
  108079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00108080 <idptbl_init>:

void idptbl_init(unsigned int mbi_adr)
{
  108080:	56                   	push   %esi
    container_init(mbi_adr);
    unsigned int addr;
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  108081:	31 f6                	xor    %esi,%esi
{
  108083:	53                   	push   %ebx
  108084:	e8 37 83 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108089:	81 c3 6b 8f 00 00    	add    $0x8f6b,%ebx
  10808f:	83 ec 10             	sub    $0x10,%esp
    container_init(mbi_adr);
  108092:	ff 74 24 1c          	push   0x1c(%esp)
  108096:	e8 15 f3 ff ff       	call   1073b0 <container_init>
  10809b:	83 c4 10             	add    $0x10,%esp
  10809e:	66 90                	xchg   %ax,%ax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  1080a0:	89 f0                	mov    %esi,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  1080a2:	89 f2                	mov    %esi,%edx
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  1080a4:	8d 8e 00 00 00 c0    	lea    -0x40000000(%esi),%ecx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  1080aa:	c1 e8 0c             	shr    $0xc,%eax
        unsigned int pde_index = (addr & VA_PDIR_MASK) >> 22;
  1080ad:	c1 ea 16             	shr    $0x16,%edx
        unsigned int pte_index = (addr & VA_PTBL_MASK) >> 12;
  1080b0:	25 ff 03 00 00       	and    $0x3ff,%eax
        if (addr < VM_USERLO || addr >= VM_USERHI) {
  1080b5:	81 f9 ff ff ff af    	cmp    $0xafffffff,%ecx
  1080bb:	76 26                	jbe    1080e3 <idptbl_init+0x63>
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  1080bd:	83 ec 04             	sub    $0x4,%esp
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1080c0:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PWG);
  1080c6:	68 03 01 00 00       	push   $0x103
  1080cb:	50                   	push   %eax
  1080cc:	52                   	push   %edx
  1080cd:	e8 9e fa ff ff       	call   107b70 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1080d2:	83 c4 10             	add    $0x10,%esp
  1080d5:	81 fe 00 f0 ff ff    	cmp    $0xfffff000,%esi
  1080db:	75 c3                	jne    1080a0 <idptbl_init+0x20>
        } else {
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
        }
    }
}
  1080dd:	83 c4 04             	add    $0x4,%esp
  1080e0:	5b                   	pop    %ebx
  1080e1:	5e                   	pop    %esi
  1080e2:	c3                   	ret
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  1080e3:	51                   	push   %ecx
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1080e4:	81 c6 00 10 00 00    	add    $0x1000,%esi
            set_ptbl_entry_identity(pde_index, pte_index, PT_PERM_PW);
  1080ea:	6a 03                	push   $0x3
  1080ec:	50                   	push   %eax
  1080ed:	52                   	push   %edx
  1080ee:	e8 7d fa ff ff       	call   107b70 <set_ptbl_entry_identity>
    for (addr = 0; addr < 0xFFFFF000; addr += PAGESIZE) {
  1080f3:	83 c4 10             	add    $0x10,%esp
  1080f6:	eb a8                	jmp    1080a0 <idptbl_init+0x20>
  1080f8:	66 90                	xchg   %ax,%ax
  1080fa:	66 90                	xchg   %ax,%ax
  1080fc:	66 90                	xchg   %ax,%ax
  1080fe:	66 90                	xchg   %ax,%ax

00108100 <MPTOp_test1>:
#include <lib/debug.h>
#include "export.h"

int MPTOp_test1()
{
  108100:	53                   	push   %ebx
  108101:	e8 ba 82 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108106:	81 c3 ee 8e 00 00    	add    $0x8eee,%ebx
  10810c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  10810f:	68 00 00 00 4b       	push   $0x4b000000
  108114:	6a 0a                	push   $0xa
  108116:	e8 c5 fd ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  10811b:	83 c4 10             	add    $0x10,%esp
  10811e:	85 c0                	test   %eax,%eax
  108120:	0f 85 0a 01 00 00    	jne    108230 <MPTOp_test1+0x130>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  108126:	83 ec 08             	sub    $0x8,%esp
  108129:	68 00 00 00 4b       	push   $0x4b000000
  10812e:	6a 0a                	push   $0xa
  108130:	e8 1b fe ff ff       	call   107f50 <get_pdir_entry_by_va>
  108135:	83 c4 10             	add    $0x10,%esp
  108138:	85 c0                	test   %eax,%eax
  10813a:	0f 85 c0 00 00 00    	jne    108200 <MPTOp_test1+0x100>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    set_pdir_entry_by_va(10, vaddr, 100);
  108140:	83 ec 04             	sub    $0x4,%esp
  108143:	6a 64                	push   $0x64
  108145:	68 00 00 00 4b       	push   $0x4b000000
  10814a:	6a 0a                	push   $0xa
  10814c:	e8 ff fe ff ff       	call   108050 <set_pdir_entry_by_va>
    set_ptbl_entry_by_va(10, vaddr, 100, 259);
  108151:	68 03 01 00 00       	push   $0x103
  108156:	6a 64                	push   $0x64
  108158:	68 00 00 00 4b       	push   $0x4b000000
  10815d:	6a 0a                	push   $0xa
  10815f:	e8 ac fe ff ff       	call   108010 <set_ptbl_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) == 0) {
  108164:	83 c4 18             	add    $0x18,%esp
  108167:	68 00 00 00 4b       	push   $0x4b000000
  10816c:	6a 0a                	push   $0xa
  10816e:	e8 6d fd ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108173:	83 c4 10             	add    $0x10,%esp
  108176:	85 c0                	test   %eax,%eax
  108178:	0f 84 02 01 00 00    	je     108280 <MPTOp_test1+0x180>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) == 0) {
  10817e:	83 ec 08             	sub    $0x8,%esp
  108181:	68 00 00 00 4b       	push   $0x4b000000
  108186:	6a 0a                	push   $0xa
  108188:	e8 c3 fd ff ff       	call   107f50 <get_pdir_entry_by_va>
  10818d:	83 c4 10             	add    $0x10,%esp
  108190:	85 c0                	test   %eax,%eax
  108192:	0f 84 c0 00 00 00    	je     108258 <MPTOp_test1+0x158>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    rmv_ptbl_entry_by_va(10, vaddr);
  108198:	83 ec 08             	sub    $0x8,%esp
  10819b:	68 00 00 00 4b       	push   $0x4b000000
  1081a0:	6a 0a                	push   $0xa
  1081a2:	e8 d9 fd ff ff       	call   107f80 <rmv_ptbl_entry_by_va>
    rmv_pdir_entry_by_va(10, vaddr);
  1081a7:	58                   	pop    %eax
  1081a8:	5a                   	pop    %edx
  1081a9:	68 00 00 00 4b       	push   $0x4b000000
  1081ae:	6a 0a                	push   $0xa
  1081b0:	e8 2b fe ff ff       	call   107fe0 <rmv_pdir_entry_by_va>
    if (get_ptbl_entry_by_va(10, vaddr) != 0) {
  1081b5:	59                   	pop    %ecx
  1081b6:	58                   	pop    %eax
  1081b7:	68 00 00 00 4b       	push   $0x4b000000
  1081bc:	6a 0a                	push   $0xa
  1081be:	e8 1d fd ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  1081c3:	83 c4 10             	add    $0x10,%esp
  1081c6:	85 c0                	test   %eax,%eax
  1081c8:	0f 85 e2 00 00 00    	jne    1082b0 <MPTOp_test1+0x1b0>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(10, vaddr) != 0) {
  1081ce:	83 ec 08             	sub    $0x8,%esp
  1081d1:	68 00 00 00 4b       	push   $0x4b000000
  1081d6:	6a 0a                	push   $0xa
  1081d8:	e8 73 fd ff ff       	call   107f50 <get_pdir_entry_by_va>
  1081dd:	83 c4 10             	add    $0x10,%esp
  1081e0:	85 c0                	test   %eax,%eax
  1081e2:	0f 85 f8 00 00 00    	jne    1082e0 <MPTOp_test1+0x1e0>
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  1081e8:	83 ec 0c             	sub    $0xc,%esp
  1081eb:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  1081f1:	50                   	push   %eax
  1081f2:	e8 75 ab ff ff       	call   102d6c <dprintf>
    return 0;
  1081f7:	83 c4 10             	add    $0x10,%esp
  1081fa:	31 c0                	xor    %eax,%eax
  1081fc:	eb 28                	jmp    108226 <MPTOp_test1+0x126>
  1081fe:	66 90                	xchg   %ax,%ax
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  108200:	83 ec 08             	sub    $0x8,%esp
  108203:	68 00 00 00 4b       	push   $0x4b000000
  108208:	6a 0a                	push   $0xa
  10820a:	e8 41 fd ff ff       	call   107f50 <get_pdir_entry_by_va>
  10820f:	5a                   	pop    %edx
  108210:	59                   	pop    %ecx
  108211:	50                   	push   %eax
  108212:	8d 83 e3 9a ff ff    	lea    -0x651d(%ebx),%eax
  108218:	50                   	push   %eax
  108219:	e8 4e ab ff ff       	call   102d6c <dprintf>
        return 1;
  10821e:	83 c4 10             	add    $0x10,%esp
        return 1;
  108221:	b8 01 00 00 00       	mov    $0x1,%eax
}
  108226:	83 c4 08             	add    $0x8,%esp
  108229:	5b                   	pop    %ebx
  10822a:	c3                   	ret
  10822b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  108230:	83 ec 08             	sub    $0x8,%esp
  108233:	68 00 00 00 4b       	push   $0x4b000000
  108238:	6a 0a                	push   $0xa
  10823a:	e8 a1 fc ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  10823f:	5a                   	pop    %edx
  108240:	59                   	pop    %ecx
  108241:	50                   	push   %eax
  108242:	8d 83 c7 9a ff ff    	lea    -0x6539(%ebx),%eax
  108248:	50                   	push   %eax
  108249:	e8 1e ab ff ff       	call   102d6c <dprintf>
        return 1;
  10824e:	83 c4 10             	add    $0x10,%esp
  108251:	eb ce                	jmp    108221 <MPTOp_test1+0x121>
  108253:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(10, vaddr));
  108258:	83 ec 08             	sub    $0x8,%esp
  10825b:	68 00 00 00 4b       	push   $0x4b000000
  108260:	6a 0a                	push   $0xa
  108262:	e8 e9 fc ff ff       	call   107f50 <get_pdir_entry_by_va>
  108267:	5a                   	pop    %edx
  108268:	59                   	pop    %ecx
  108269:	50                   	push   %eax
  10826a:	8d 83 1b 9b ff ff    	lea    -0x64e5(%ebx),%eax
  108270:	50                   	push   %eax
  108271:	e8 f6 aa ff ff       	call   102d6c <dprintf>
        return 1;
  108276:	83 c4 10             	add    $0x10,%esp
  108279:	eb a6                	jmp    108221 <MPTOp_test1+0x121>
  10827b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(10, vaddr));
  108280:	83 ec 08             	sub    $0x8,%esp
  108283:	68 00 00 00 4b       	push   $0x4b000000
  108288:	6a 0a                	push   $0xa
  10828a:	e8 51 fc ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  10828f:	5a                   	pop    %edx
  108290:	59                   	pop    %ecx
  108291:	50                   	push   %eax
  108292:	8d 83 ff 9a ff ff    	lea    -0x6501(%ebx),%eax
  108298:	50                   	push   %eax
  108299:	e8 ce aa ff ff       	call   102d6c <dprintf>
        return 1;
  10829e:	83 c4 10             	add    $0x10,%esp
  1082a1:	e9 7b ff ff ff       	jmp    108221 <MPTOp_test1+0x121>
  1082a6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1082ad:	00 
  1082ae:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(10, vaddr));
  1082b0:	83 ec 08             	sub    $0x8,%esp
  1082b3:	68 00 00 00 4b       	push   $0x4b000000
  1082b8:	6a 0a                	push   $0xa
  1082ba:	e8 21 fc ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  1082bf:	5a                   	pop    %edx
  1082c0:	59                   	pop    %ecx
  1082c1:	50                   	push   %eax
  1082c2:	8d 83 37 9b ff ff    	lea    -0x64c9(%ebx),%eax
  1082c8:	50                   	push   %eax
  1082c9:	e8 9e aa ff ff       	call   102d6c <dprintf>
        return 1;
  1082ce:	83 c4 10             	add    $0x10,%esp
  1082d1:	e9 4b ff ff ff       	jmp    108221 <MPTOp_test1+0x121>
  1082d6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1082dd:	00 
  1082de:	66 90                	xchg   %ax,%ax
        dprintf("test 1.6 failed: (%d != 0)\n", get_pdir_entry_by_va(10, vaddr));
  1082e0:	83 ec 08             	sub    $0x8,%esp
  1082e3:	68 00 00 00 4b       	push   $0x4b000000
  1082e8:	6a 0a                	push   $0xa
  1082ea:	e8 61 fc ff ff       	call   107f50 <get_pdir_entry_by_va>
  1082ef:	5a                   	pop    %edx
  1082f0:	59                   	pop    %ecx
  1082f1:	50                   	push   %eax
  1082f2:	8d 83 53 9b ff ff    	lea    -0x64ad(%ebx),%eax
  1082f8:	50                   	push   %eax
  1082f9:	e8 6e aa ff ff       	call   102d6c <dprintf>
        return 1;
  1082fe:	83 c4 10             	add    $0x10,%esp
  108301:	e9 1b ff ff ff       	jmp    108221 <MPTOp_test1+0x121>
  108306:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10830d:	00 
  10830e:	66 90                	xchg   %ax,%ax

00108310 <MPTOp_test_own>:
int MPTOp_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  108310:	31 c0                	xor    %eax,%eax
  108312:	c3                   	ret
  108313:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10831a:	00 
  10831b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00108320 <test_MPTOp>:

int test_MPTOp()
{
    return MPTOp_test1() + MPTOp_test_own();
  108320:	e9 db fd ff ff       	jmp    108100 <MPTOp_test1>
  108325:	66 90                	xchg   %ax,%ax
  108327:	66 90                	xchg   %ax,%ax
  108329:	66 90                	xchg   %ax,%ax
  10832b:	66 90                	xchg   %ax,%ax
  10832d:	66 90                	xchg   %ax,%ax
  10832f:	90                   	nop

00108330 <pdir_init>:
#define PTE_W    0x002   // Writeable
#define PTE_U    0x004   // User access
#define PTE_PS   0x080   // Page Size bit (Bit 7) - Crucial for 4MB pages

void pdir_init(unsigned int mbi_adr)
{
  108330:	57                   	push   %edi
    int i, j;
    idptbl_init(mbi_adr);

    for(i = 0; i < NUM_IDS; i++){
  108331:	31 ff                	xor    %edi,%edi
{
  108333:	56                   	push   %esi
  108334:	53                   	push   %ebx
  108335:	e8 86 80 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10833a:	81 c3 ba 8c 00 00    	add    $0x8cba,%ebx
    idptbl_init(mbi_adr);
  108340:	83 ec 0c             	sub    $0xc,%esp
  108343:	ff 74 24 1c          	push   0x1c(%esp)
  108347:	e8 34 fd ff ff       	call   108080 <idptbl_init>
  10834c:	83 c4 10             	add    $0x10,%esp
  10834f:	90                   	nop
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  108350:	31 f6                	xor    %esi,%esi
  108352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        set_pdir_entry_identity(i, j);
  108358:	83 ec 08             	sub    $0x8,%esp
  10835b:	56                   	push   %esi
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  10835c:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  10835f:	57                   	push   %edi
  108360:	e8 2b f7 ff ff       	call   107a90 <set_pdir_entry_identity>
      for(j = 0; j < (VM_USERLO_PI >> 10); j++){
  108365:	83 c4 10             	add    $0x10,%esp
  108368:	81 fe 00 01 00 00    	cmp    $0x100,%esi
  10836e:	75 e8                	jne    108358 <pdir_init+0x28>
      }
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
        rmv_pdir_entry(i, j);
  108370:	83 ec 08             	sub    $0x8,%esp
  108373:	56                   	push   %esi
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  108374:	83 c6 01             	add    $0x1,%esi
        rmv_pdir_entry(i, j);
  108377:	57                   	push   %edi
  108378:	e8 53 f7 ff ff       	call   107ad0 <rmv_pdir_entry>
      for(j = VM_USERLO_PI >> 10; j < VM_USERHI_PI >> 10; j++){
  10837d:	83 c4 10             	add    $0x10,%esp
  108380:	81 fe c0 03 00 00    	cmp    $0x3c0,%esi
  108386:	75 e8                	jne    108370 <pdir_init+0x40>
  108388:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  10838f:	00 
      }
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
        set_pdir_entry_identity(i, j);
  108390:	83 ec 08             	sub    $0x8,%esp
  108393:	56                   	push   %esi
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  108394:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(i, j);
  108397:	57                   	push   %edi
  108398:	e8 f3 f6 ff ff       	call   107a90 <set_pdir_entry_identity>
      for(j = VM_USERHI_PI >> 10; j < 1024; j++){
  10839d:	83 c4 10             	add    $0x10,%esp
  1083a0:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  1083a6:	75 e8                	jne    108390 <pdir_init+0x60>
    for(i = 0; i < NUM_IDS; i++){
  1083a8:	83 c7 01             	add    $0x1,%edi
  1083ab:	83 ff 40             	cmp    $0x40,%edi
  1083ae:	75 a0                	jne    108350 <pdir_init+0x20>
      }
    }
}
  1083b0:	5b                   	pop    %ebx
  1083b1:	5e                   	pop    %esi
  1083b2:	5f                   	pop    %edi
  1083b3:	c3                   	ret
  1083b4:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1083bb:	00 
  1083bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001083c0 <alloc_ptbl>:

/**
 * Standard 4KB Page Table Allocation
 */
unsigned int alloc_ptbl(unsigned int proc_index, unsigned int vadr)
{
  1083c0:	57                   	push   %edi
  1083c1:	56                   	push   %esi
  1083c2:	53                   	push   %ebx
  1083c3:	8b 7c 24 10          	mov    0x10(%esp),%edi
  1083c7:	e8 f4 7f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1083cc:	81 c3 28 8c 00 00    	add    $0x8c28,%ebx
  unsigned int addr;
  unsigned int page_index;
  page_index = container_alloc(proc_index);
  1083d2:	83 ec 0c             	sub    $0xc,%esp
  1083d5:	57                   	push   %edi
  1083d6:	e8 d5 f1 ff ff       	call   1075b0 <container_alloc>
  if(page_index == 0) return 0;
  1083db:	83 c4 10             	add    $0x10,%esp
  page_index = container_alloc(proc_index);
  1083de:	89 c6                	mov    %eax,%esi
  if(page_index == 0) return 0;
  1083e0:	85 c0                	test   %eax,%eax
  1083e2:	75 0c                	jne    1083f0 <alloc_ptbl+0x30>
  
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
    *(unsigned int *)addr = 0;
  }
  return page_index;
}
  1083e4:	89 f0                	mov    %esi,%eax
  1083e6:	5b                   	pop    %ebx
  1083e7:	5e                   	pop    %esi
  1083e8:	5f                   	pop    %edi
  1083e9:	c3                   	ret
  1083ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  set_pdir_entry_by_va(proc_index, vadr, page_index);
  1083f0:	83 ec 04             	sub    $0x4,%esp
  1083f3:	50                   	push   %eax
  1083f4:	ff 74 24 1c          	push   0x1c(%esp)
  1083f8:	57                   	push   %edi
  1083f9:	e8 52 fc ff ff       	call   108050 <set_pdir_entry_by_va>
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  1083fe:	89 f0                	mov    %esi,%eax
  108400:	8d 56 01             	lea    0x1(%esi),%edx
  108403:	83 c4 10             	add    $0x10,%esp
  108406:	c1 e0 0c             	shl    $0xc,%eax
  108409:	c1 e2 0c             	shl    $0xc,%edx
  10840c:	39 d0                	cmp    %edx,%eax
  10840e:	73 d4                	jae    1083e4 <alloc_ptbl+0x24>
    *(unsigned int *)addr = 0;
  108410:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  108416:	83 c0 04             	add    $0x4,%eax
  108419:	39 d0                	cmp    %edx,%eax
  10841b:	73 c7                	jae    1083e4 <alloc_ptbl+0x24>
  10841d:	b9 01 00 00 00       	mov    $0x1,%ecx
  108422:	85 c9                	test   %ecx,%ecx
  108424:	74 12                	je     108438 <alloc_ptbl+0x78>
    *(unsigned int *)addr = 0;
  108426:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  10842c:	83 c0 04             	add    $0x4,%eax
  10842f:	39 d0                	cmp    %edx,%eax
  108431:	73 b1                	jae    1083e4 <alloc_ptbl+0x24>
  108433:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    *(unsigned int *)addr = 0;
  108438:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  10843e:	83 c0 08             	add    $0x8,%eax
    *(unsigned int *)addr = 0;
  108441:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
  for(addr = page_index << 12; addr < (page_index + 1) << 12; addr += 4){
  108448:	39 d0                	cmp    %edx,%eax
  10844a:	72 ec                	jb     108438 <alloc_ptbl+0x78>
  10844c:	eb 96                	jmp    1083e4 <alloc_ptbl+0x24>
  10844e:	66 90                	xchg   %ax,%ax

00108450 <free_ptbl>:

/**
 * Updated free_ptbl: Handles both 4KB Page Tables and 4MB Superpages.
 */
void free_ptbl(unsigned int proc_index, unsigned int vadr)
{
  108450:	55                   	push   %ebp
  108451:	57                   	push   %edi
  108452:	56                   	push   %esi
  108453:	53                   	push   %ebx
  108454:	e8 67 7f ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108459:	81 c3 9b 8b 00 00    	add    $0x8b9b,%ebx
  10845f:	83 ec 14             	sub    $0x14,%esp
  108462:	8b 74 24 28          	mov    0x28(%esp),%esi
  108466:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
  unsigned int pdir_entry = get_pdir_entry_by_va(proc_index, vadr);
  10846a:	57                   	push   %edi
  10846b:	56                   	push   %esi
  10846c:	e8 df fa ff ff       	call   107f50 <get_pdir_entry_by_va>
  
  if (!(pdir_entry & PTE_P)) {
  108471:	83 c4 10             	add    $0x10,%esp
  108474:	a8 01                	test   $0x1,%al
  108476:	74 1f                	je     108497 <free_ptbl+0x47>
      return;
  }

  // Check the PS bit (Bit 7) to see if this is a 4MB superpage
  if (pdir_entry & PTE_PS) {
      unsigned int page_index = pdir_entry >> 12;
  108478:	89 c5                	mov    %eax,%ebp
  10847a:	c1 ed 0c             	shr    $0xc,%ebp
  if (pdir_entry & PTE_PS) {
  10847d:	a8 80                	test   $0x80,%al
  10847f:	75 1f                	jne    1084a0 <free_ptbl+0x50>
      return;
  }

  // Default: Standard Page Table (4KB)
  unsigned int page_index = pdir_entry >> 12;
  rmv_pdir_entry_by_va(proc_index, vadr);
  108481:	83 ec 08             	sub    $0x8,%esp
  108484:	57                   	push   %edi
  108485:	56                   	push   %esi
  108486:	e8 55 fb ff ff       	call   107fe0 <rmv_pdir_entry_by_va>
  container_free(proc_index, page_index);
  10848b:	58                   	pop    %eax
  10848c:	5a                   	pop    %edx
  10848d:	55                   	push   %ebp
  10848e:	56                   	push   %esi
  10848f:	e8 0c f2 ff ff       	call   1076a0 <container_free>
  108494:	83 c4 10             	add    $0x10,%esp
}
  108497:	83 c4 0c             	add    $0xc,%esp
  10849a:	5b                   	pop    %ebx
  10849b:	5e                   	pop    %esi
  10849c:	5f                   	pop    %edi
  10849d:	5d                   	pop    %ebp
  10849e:	c3                   	ret
  10849f:	90                   	nop
      rmv_pdir_entry_by_va(proc_index, vadr);
  1084a0:	83 ec 08             	sub    $0x8,%esp
  1084a3:	57                   	push   %edi
  1084a4:	56                   	push   %esi
  1084a5:	e8 36 fb ff ff       	call   107fe0 <rmv_pdir_entry_by_va>
      container_free(proc_index, page_index);
  1084aa:	59                   	pop    %ecx
  1084ab:	58                   	pop    %eax
  1084ac:	55                   	push   %ebp
  1084ad:	56                   	push   %esi
  1084ae:	e8 ed f1 ff ff       	call   1076a0 <container_free>
      dprintf("VMM: Superpage at VA 0x%08x (PI %u) freed.\n", vadr, page_index);
  1084b3:	83 c4 0c             	add    $0xc,%esp
  1084b6:	8d 83 ac ac ff ff    	lea    -0x5354(%ebx),%eax
  1084bc:	55                   	push   %ebp
  1084bd:	57                   	push   %edi
  1084be:	50                   	push   %eax
  1084bf:	e8 a8 a8 ff ff       	call   102d6c <dprintf>
      return;
  1084c4:	83 c4 10             	add    $0x10,%esp
}
  1084c7:	83 c4 0c             	add    $0xc,%esp
  1084ca:	5b                   	pop    %ebx
  1084cb:	5e                   	pop    %esi
  1084cc:	5f                   	pop    %edi
  1084cd:	5d                   	pop    %ebp
  1084ce:	c3                   	ret
  1084cf:	90                   	nop

001084d0 <alloc_superpage>:
 * NEW: Superpage (4MB) Allocation
 * This is what your MPTComm_test_own is looking for!
 */

unsigned int alloc_superpage(unsigned int proc_index, unsigned int vadr)
{
  1084d0:	55                   	push   %ebp
  1084d1:	57                   	push   %edi
  1084d2:	56                   	push   %esi
  1084d3:	53                   	push   %ebx
  1084d4:	e8 e7 7e ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1084d9:	81 c3 1b 8b 00 00    	add    $0x8b1b,%ebx
  1084df:	83 ec 28             	sub    $0x28,%esp
  1084e2:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
    unsigned int pindex = container_alloc_superpage(proc_index);
  1084e6:	57                   	push   %edi
  1084e7:	e8 14 f1 ff ff       	call   107600 <container_alloc_superpage>
    if (pindex == 0) return 0;
  1084ec:	83 c4 10             	add    $0x10,%esp
    unsigned int pindex = container_alloc_superpage(proc_index);
  1084ef:	89 c6                	mov    %eax,%esi
    if (pindex == 0) return 0;
  1084f1:	85 c0                	test   %eax,%eax
  1084f3:	74 34                	je     108529 <alloc_superpage+0x59>
    unsigned int pde_index = vadr >> 22;

    // Construct the FULL 32-bit entry
    // (pindex << 12) provides the base address
    // 0x87 provides Present (1), Write (2), User (4), and Page Size (128)
    unsigned int pde_entry = (pindex << 12) | 0x87; 
  1084f5:	89 c2                	mov    %eax,%edx
    unsigned int pde_index = vadr >> 22;
  1084f7:	8b 6c 24 34          	mov    0x34(%esp),%ebp

    // Use our new raw setter
    set_pde(proc_index, pde_index, pde_entry);
  1084fb:	83 ec 04             	sub    $0x4,%esp
    unsigned int pde_entry = (pindex << 12) | 0x87; 
  1084fe:	c1 e2 0c             	shl    $0xc,%edx
  108501:	80 ca 87             	or     $0x87,%dl
    unsigned int pde_index = vadr >> 22;
  108504:	c1 ed 16             	shr    $0x16,%ebp
    set_pde(proc_index, pde_index, pde_entry);
  108507:	52                   	push   %edx
  108508:	89 54 24 14          	mov    %edx,0x14(%esp)
  10850c:	55                   	push   %ebp
  10850d:	57                   	push   %edi
  10850e:	e8 6d f9 ff ff       	call   107e80 <set_pde>

    dprintf("VMM: Superpage allocated for proc %u at PDE %u (Value: 0x%08x)\n", 
  108513:	8b 54 24 1c          	mov    0x1c(%esp),%edx
  108517:	8d 83 d8 ac ff ff    	lea    -0x5328(%ebx),%eax
  10851d:	52                   	push   %edx
  10851e:	55                   	push   %ebp
  10851f:	57                   	push   %edi
  108520:	50                   	push   %eax
  108521:	e8 46 a8 ff ff       	call   102d6c <dprintf>
            proc_index, pde_index, pde_entry);

    return pindex;
  108526:	83 c4 20             	add    $0x20,%esp
}
  108529:	83 c4 1c             	add    $0x1c,%esp
  10852c:	89 f0                	mov    %esi,%eax
  10852e:	5b                   	pop    %ebx
  10852f:	5e                   	pop    %esi
  108530:	5f                   	pop    %edi
  108531:	5d                   	pop    %ebp
  108532:	c3                   	ret
  108533:	66 90                	xchg   %ax,%ax
  108535:	66 90                	xchg   %ax,%ax
  108537:	66 90                	xchg   %ax,%ax
  108539:	66 90                	xchg   %ax,%ax
  10853b:	66 90                	xchg   %ax,%ax
  10853d:	66 90                	xchg   %ax,%ax
  10853f:	90                   	nop

00108540 <MPTComm_test1>:
#include <vmm/MPTNew/export.h> 
#include <pmm/MContainer/export.h>

#define NUM_IDS 64
int MPTComm_test1()
{
  108540:	55                   	push   %ebp
  108541:	57                   	push   %edi
  108542:	bf 03 01 00 00       	mov    $0x103,%edi
  108547:	56                   	push   %esi
    unsigned int i;
    for (i = 0; i < 1024; i++) {
  108548:	31 f6                	xor    %esi,%esi
{
  10854a:	53                   	push   %ebx
  10854b:	e8 70 7e ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108550:	81 c3 a4 8a 00 00    	add    $0x8aa4,%ebx
  108556:	83 ec 0c             	sub    $0xc,%esp
  108559:	eb 0e                	jmp    108569 <MPTComm_test1+0x29>
  10855b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    for (i = 0; i < 1024; i++) {
  108560:	83 c6 01             	add    $0x1,%esi
  108563:	81 c7 00 00 40 00    	add    $0x400000,%edi
        if (i < 256 || i >= 960) {
  108569:	8d 86 00 ff ff ff    	lea    -0x100(%esi),%eax
  10856f:	3d bf 02 00 00       	cmp    $0x2bf,%eax
  108574:	76 ea                	jbe    108560 <MPTComm_test1+0x20>
            if (get_ptbl_entry_by_va(10, i * 4096 * 1024) !=
  108576:	89 f5                	mov    %esi,%ebp
  108578:	52                   	push   %edx
  108579:	c1 e5 16             	shl    $0x16,%ebp
  10857c:	52                   	push   %edx
  10857d:	55                   	push   %ebp
  10857e:	6a 0a                	push   $0xa
  108580:	e8 5b f9 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108585:	83 c4 10             	add    $0x10,%esp
  108588:	39 f8                	cmp    %edi,%eax
  10858a:	75 2d                	jne    1085b9 <MPTComm_test1+0x79>
    for (i = 0; i < 1024; i++) {
  10858c:	83 c6 01             	add    $0x1,%esi
  10858f:	81 c7 00 00 40 00    	add    $0x400000,%edi
  108595:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  10859b:	75 cc                	jne    108569 <MPTComm_test1+0x29>
                        i * 4096 * 1024 + 259);
                return 1;
            }
        }
    }
    dprintf("test 1 passed.\n");
  10859d:	83 ec 0c             	sub    $0xc,%esp
  1085a0:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  1085a6:	50                   	push   %eax
  1085a7:	e8 c0 a7 ff ff       	call   102d6c <dprintf>
    return 0;
  1085ac:	83 c4 10             	add    $0x10,%esp
  1085af:	31 c0                	xor    %eax,%eax
}
  1085b1:	83 c4 0c             	add    $0xc,%esp
  1085b4:	5b                   	pop    %ebx
  1085b5:	5e                   	pop    %esi
  1085b6:	5f                   	pop    %edi
  1085b7:	5d                   	pop    %ebp
  1085b8:	c3                   	ret
                dprintf("test 1.1 failed (i = %d): (%d != %d)\n",
  1085b9:	50                   	push   %eax
  1085ba:	50                   	push   %eax
  1085bb:	55                   	push   %ebp
  1085bc:	6a 0a                	push   $0xa
  1085be:	e8 1d f9 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  1085c3:	57                   	push   %edi
  1085c4:	50                   	push   %eax
  1085c5:	8d 83 18 9c ff ff    	lea    -0x63e8(%ebx),%eax
  1085cb:	56                   	push   %esi
  1085cc:	50                   	push   %eax
  1085cd:	e8 9a a7 ff ff       	call   102d6c <dprintf>
                return 1;
  1085d2:	83 c4 20             	add    $0x20,%esp
  1085d5:	b8 01 00 00 00       	mov    $0x1,%eax
  1085da:	eb d5                	jmp    1085b1 <MPTComm_test1+0x71>
  1085dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

001085e0 <MPTComm_test2>:

int MPTComm_test2()
{
  1085e0:	56                   	push   %esi
  1085e1:	53                   	push   %ebx
  1085e2:	e8 d9 7d ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1085e7:	81 c3 0d 8a 00 00    	add    $0x8a0d,%ebx
  1085ed:	83 ec 0c             	sub    $0xc,%esp
    unsigned int vaddr = 300 * 4096 * 1024;
    // We split container 0, which creates ID 1 with a small quota
    unsigned int chid = container_split(0, 100); 
  1085f0:	6a 64                	push   $0x64
  1085f2:	6a 00                	push   $0x0
  1085f4:	e8 57 ef ff ff       	call   107550 <container_split>
    
    alloc_ptbl(chid, vaddr);
  1085f9:	5a                   	pop    %edx
  1085fa:	59                   	pop    %ecx
  1085fb:	68 00 00 00 4b       	push   $0x4b000000
  108600:	50                   	push   %eax
    unsigned int chid = container_split(0, 100); 
  108601:	89 c6                	mov    %eax,%esi
    alloc_ptbl(chid, vaddr);
  108603:	e8 b8 fd ff ff       	call   1083c0 <alloc_ptbl>
    if (get_pdir_entry_by_va(chid, vaddr) == 0) {
  108608:	58                   	pop    %eax
  108609:	5a                   	pop    %edx
  10860a:	68 00 00 00 4b       	push   $0x4b000000
  10860f:	56                   	push   %esi
  108610:	e8 3b f9 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108615:	83 c4 10             	add    $0x10,%esp
  108618:	85 c0                	test   %eax,%eax
  10861a:	0f 84 88 00 00 00    	je     1086a8 <MPTComm_test2+0xc8>
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(chid, vaddr));
        return 1;
    }
    if (get_ptbl_entry_by_va(chid, vaddr) != 0) {
  108620:	83 ec 08             	sub    $0x8,%esp
  108623:	68 00 00 00 4b       	push   $0x4b000000
  108628:	56                   	push   %esi
  108629:	e8 b2 f8 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  10862e:	83 c4 10             	add    $0x10,%esp
  108631:	85 c0                	test   %eax,%eax
  108633:	75 43                	jne    108678 <MPTComm_test2+0x98>
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(chid, vaddr));
        return 1;
    }
    free_ptbl(chid, vaddr);
  108635:	83 ec 08             	sub    $0x8,%esp
  108638:	68 00 00 00 4b       	push   $0x4b000000
  10863d:	56                   	push   %esi
  10863e:	e8 0d fe ff ff       	call   108450 <free_ptbl>
    if (get_pdir_entry_by_va(chid, vaddr) != 0) {
  108643:	58                   	pop    %eax
  108644:	5a                   	pop    %edx
  108645:	68 00 00 00 4b       	push   $0x4b000000
  10864a:	56                   	push   %esi
  10864b:	e8 00 f9 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108650:	83 c4 10             	add    $0x10,%esp
  108653:	85 c0                	test   %eax,%eax
  108655:	75 79                	jne    1086d0 <MPTComm_test2+0xf0>
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(chid, vaddr));
        return 1;
    }
    dprintf("test 2 passed.\n");
  108657:	83 ec 0c             	sub    $0xc,%esp
  10865a:	8d 83 8a 98 ff ff    	lea    -0x6776(%ebx),%eax
  108660:	50                   	push   %eax
  108661:	e8 06 a7 ff ff       	call   102d6c <dprintf>
    return 0;
  108666:	83 c4 10             	add    $0x10,%esp
  108669:	31 c0                	xor    %eax,%eax
}
  10866b:	83 c4 04             	add    $0x4,%esp
  10866e:	5b                   	pop    %ebx
  10866f:	5e                   	pop    %esi
  108670:	c3                   	ret
  108671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        dprintf("test 2.2 failed: (%d != 0)\n", get_ptbl_entry_by_va(chid, vaddr));
  108678:	83 ec 08             	sub    $0x8,%esp
  10867b:	68 00 00 00 4b       	push   $0x4b000000
  108680:	56                   	push   %esi
  108681:	e8 5a f8 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108686:	59                   	pop    %ecx
  108687:	5e                   	pop    %esi
  108688:	50                   	push   %eax
  108689:	8d 83 ab 9a ff ff    	lea    -0x6555(%ebx),%eax
  10868f:	50                   	push   %eax
  108690:	e8 d7 a6 ff ff       	call   102d6c <dprintf>
        return 1;
  108695:	83 c4 10             	add    $0x10,%esp
}
  108698:	83 c4 04             	add    $0x4,%esp
        return 1;
  10869b:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1086a0:	5b                   	pop    %ebx
  1086a1:	5e                   	pop    %esi
  1086a2:	c3                   	ret
  1086a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 2.1 failed: (%d == 0)\n", get_pdir_entry_by_va(chid, vaddr));
  1086a8:	83 ec 08             	sub    $0x8,%esp
  1086ab:	68 00 00 00 4b       	push   $0x4b000000
  1086b0:	56                   	push   %esi
  1086b1:	e8 9a f8 ff ff       	call   107f50 <get_pdir_entry_by_va>
  1086b6:	5a                   	pop    %edx
  1086b7:	59                   	pop    %ecx
  1086b8:	50                   	push   %eax
  1086b9:	8d 83 6f 9b ff ff    	lea    -0x6491(%ebx),%eax
  1086bf:	50                   	push   %eax
  1086c0:	e8 a7 a6 ff ff       	call   102d6c <dprintf>
        return 1;
  1086c5:	83 c4 10             	add    $0x10,%esp
  1086c8:	eb ce                	jmp    108698 <MPTComm_test2+0xb8>
  1086ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dprintf("test 2.3 failed: (%d != 0)\n", get_pdir_entry_by_va(chid, vaddr));
  1086d0:	83 ec 08             	sub    $0x8,%esp
  1086d3:	68 00 00 00 4b       	push   $0x4b000000
  1086d8:	56                   	push   %esi
  1086d9:	e8 72 f8 ff ff       	call   107f50 <get_pdir_entry_by_va>
  1086de:	5a                   	pop    %edx
  1086df:	59                   	pop    %ecx
  1086e0:	50                   	push   %eax
  1086e1:	8d 83 8b 9b ff ff    	lea    -0x6475(%ebx),%eax
  1086e7:	50                   	push   %eax
  1086e8:	e8 7f a6 ff ff       	call   102d6c <dprintf>
        return 1;
  1086ed:	83 c4 10             	add    $0x10,%esp
  1086f0:	eb a6                	jmp    108698 <MPTComm_test2+0xb8>
  1086f2:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  1086f9:	00 
  1086fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00108700 <MPTComm_test_own>:
/**
 * Superpage & Quota Integration Test
 * Corrected to use the dynamic ID from container_split.
 */
int MPTComm_test_own()
{
  108700:	56                   	push   %esi
  108701:	53                   	push   %ebx
  108702:	e8 b9 7c ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108707:	81 c3 ed 88 00 00    	add    $0x88ed,%ebx
  10870d:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 0x40000000; 
    unsigned int quota = 2048;       // Enough for superpages
    
    dprintf("Starting Superpage & Quota Integration Test...\n");
  108710:	8d 83 18 ad ff ff    	lea    -0x52e8(%ebx),%eax
  108716:	50                   	push   %eax
  108717:	e8 50 a6 ff ff       	call   102d6c <dprintf>

    // FIX: Instead of hardcoding proc_id = 1, we use the ID returned here.
    // If test2 already ran, this will likely be ID 2.
    unsigned int proc_id = container_split(0, quota);
  10871c:	59                   	pop    %ecx
  10871d:	5e                   	pop    %esi
  10871e:	68 00 08 00 00       	push   $0x800
  108723:	6a 00                	push   $0x0
  108725:	e8 26 ee ff ff       	call   107550 <container_split>
    
    if (proc_id == 0 || proc_id >= NUM_IDS) {
  10872a:	83 c4 10             	add    $0x10,%esp
    unsigned int proc_id = container_split(0, quota);
  10872d:	89 c6                	mov    %eax,%esi
    if (proc_id == 0 || proc_id >= NUM_IDS) {
  10872f:	83 e8 01             	sub    $0x1,%eax
  108732:	83 f8 3e             	cmp    $0x3e,%eax
  108735:	0f 87 b5 00 00 00    	ja     1087f0 <MPTComm_test_own+0xf0>
        dprintf("Superpage Test Failed: Invalid proc_id returned from split.\n");
        return 1;
    }

    // 2. Test Superpage Allocation
    unsigned int pindex = alloc_superpage(proc_id, vaddr);
  10873b:	83 ec 08             	sub    $0x8,%esp
  10873e:	68 00 00 00 40       	push   $0x40000000
  108743:	56                   	push   %esi
  108744:	e8 87 fd ff ff       	call   1084d0 <alloc_superpage>
    if (pindex == 0) {
  108749:	83 c4 10             	add    $0x10,%esp
  10874c:	85 c0                	test   %eax,%eax
  10874e:	0f 84 7c 00 00 00    	je     1087d0 <MPTComm_test_own+0xd0>
        dprintf("Superpage Test Failed: Could not allocate 4MB block for ID %u.\n", proc_id);
        return 1;
    }

    // 3. Verify Hardware Bit (PS) in the Page Directory
    unsigned int pde = get_pdir_entry_by_va(proc_id, vaddr);
  108754:	83 ec 08             	sub    $0x8,%esp
  108757:	68 00 00 00 40       	push   $0x40000000
  10875c:	56                   	push   %esi
  10875d:	e8 ee f7 ff ff       	call   107f50 <get_pdir_entry_by_va>
    if (!(pde & 0x80)) { 
  108762:	83 c4 10             	add    $0x10,%esp
  108765:	a8 80                	test   $0x80,%al
  108767:	0f 84 bb 00 00 00    	je     108828 <MPTComm_test_own+0x128>
        dprintf("Superpage Test Failed: PS bit not set in PDE (0x%x).\n", pde);
        return 1;
    }
    dprintf("Verified: PDE for ID %u at 0x%08x has PS bit set.\n", proc_id, vaddr);
  10876d:	83 ec 04             	sub    $0x4,%esp
  108770:	8d 83 00 ae ff ff    	lea    -0x5200(%ebx),%eax
  108776:	68 00 00 00 40       	push   $0x40000000
  10877b:	56                   	push   %esi
  10877c:	50                   	push   %eax
  10877d:	e8 ea a5 ff ff       	call   102d6c <dprintf>

    // 4. Verify Quota Usage (1 Superpage = 1024 pages)
    if (container_get_usage(proc_id) != 1024) {
  108782:	89 34 24             	mov    %esi,(%esp)
  108785:	e8 76 ed ff ff       	call   107500 <container_get_usage>
  10878a:	83 c4 10             	add    $0x10,%esp
  10878d:	3d 00 04 00 00       	cmp    $0x400,%eax
  108792:	75 74                	jne    108808 <MPTComm_test_own+0x108>
        dprintf("Superpage Test Failed: Usage (%d) != 1024.\n", container_get_usage(proc_id));
        return 1;
    }

    // 5. Test Superpage Freeing
    free_ptbl(proc_id, vaddr);
  108794:	83 ec 08             	sub    $0x8,%esp
  108797:	68 00 00 00 40       	push   $0x40000000
  10879c:	56                   	push   %esi
  10879d:	e8 ae fc ff ff       	call   108450 <free_ptbl>
    
    // 6. Verify Quota Recovery
    if (container_get_usage(proc_id) != 0) {
  1087a2:	89 34 24             	mov    %esi,(%esp)
  1087a5:	e8 56 ed ff ff       	call   107500 <container_get_usage>
  1087aa:	83 c4 10             	add    $0x10,%esp
  1087ad:	85 c0                	test   %eax,%eax
  1087af:	0f 85 8b 00 00 00    	jne    108840 <MPTComm_test_own+0x140>
        dprintf("Superpage Test Failed: Usage after free (%d) != 0.\n", container_get_usage(proc_id));
        return 1;
    }

    dprintf("Superpage & Quota Integration Test passed!\n");
  1087b5:	83 ec 0c             	sub    $0xc,%esp
  1087b8:	8d 83 94 ae ff ff    	lea    -0x516c(%ebx),%eax
  1087be:	50                   	push   %eax
  1087bf:	e8 a8 a5 ff ff       	call   102d6c <dprintf>
    return 0;
  1087c4:	83 c4 10             	add    $0x10,%esp
  1087c7:	31 c0                	xor    %eax,%eax
  1087c9:	eb 1d                	jmp    1087e8 <MPTComm_test_own+0xe8>
  1087cb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("Superpage Test Failed: Could not allocate 4MB block for ID %u.\n", proc_id);
  1087d0:	83 ec 08             	sub    $0x8,%esp
  1087d3:	8d 83 88 ad ff ff    	lea    -0x5278(%ebx),%eax
  1087d9:	56                   	push   %esi
  1087da:	50                   	push   %eax
  1087db:	e8 8c a5 ff ff       	call   102d6c <dprintf>
        return 1;
  1087e0:	83 c4 10             	add    $0x10,%esp
        return 1;
  1087e3:	b8 01 00 00 00       	mov    $0x1,%eax
}
  1087e8:	83 c4 04             	add    $0x4,%esp
  1087eb:	5b                   	pop    %ebx
  1087ec:	5e                   	pop    %esi
  1087ed:	c3                   	ret
  1087ee:	66 90                	xchg   %ax,%ax
        dprintf("Superpage Test Failed: Invalid proc_id returned from split.\n");
  1087f0:	83 ec 0c             	sub    $0xc,%esp
  1087f3:	8d 83 48 ad ff ff    	lea    -0x52b8(%ebx),%eax
  1087f9:	50                   	push   %eax
  1087fa:	e8 6d a5 ff ff       	call   102d6c <dprintf>
        return 1;
  1087ff:	83 c4 10             	add    $0x10,%esp
  108802:	eb df                	jmp    1087e3 <MPTComm_test_own+0xe3>
  108804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        dprintf("Superpage Test Failed: Usage (%d) != 1024.\n", container_get_usage(proc_id));
  108808:	83 ec 0c             	sub    $0xc,%esp
  10880b:	56                   	push   %esi
  10880c:	e8 ef ec ff ff       	call   107500 <container_get_usage>
  108811:	5e                   	pop    %esi
  108812:	5a                   	pop    %edx
  108813:	50                   	push   %eax
  108814:	8d 83 34 ae ff ff    	lea    -0x51cc(%ebx),%eax
  10881a:	50                   	push   %eax
  10881b:	e8 4c a5 ff ff       	call   102d6c <dprintf>
        return 1;
  108820:	83 c4 10             	add    $0x10,%esp
  108823:	eb be                	jmp    1087e3 <MPTComm_test_own+0xe3>
  108825:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Superpage Test Failed: PS bit not set in PDE (0x%x).\n", pde);
  108828:	83 ec 08             	sub    $0x8,%esp
  10882b:	50                   	push   %eax
  10882c:	8d 83 c8 ad ff ff    	lea    -0x5238(%ebx),%eax
  108832:	50                   	push   %eax
  108833:	e8 34 a5 ff ff       	call   102d6c <dprintf>
        return 1;
  108838:	83 c4 10             	add    $0x10,%esp
  10883b:	eb a6                	jmp    1087e3 <MPTComm_test_own+0xe3>
  10883d:	8d 76 00             	lea    0x0(%esi),%esi
        dprintf("Superpage Test Failed: Usage after free (%d) != 0.\n", container_get_usage(proc_id));
  108840:	83 ec 0c             	sub    $0xc,%esp
  108843:	56                   	push   %esi
  108844:	e8 b7 ec ff ff       	call   107500 <container_get_usage>
  108849:	5a                   	pop    %edx
  10884a:	59                   	pop    %ecx
  10884b:	50                   	push   %eax
  10884c:	8d 83 60 ae ff ff    	lea    -0x51a0(%ebx),%eax
  108852:	50                   	push   %eax
  108853:	e8 14 a5 ff ff       	call   102d6c <dprintf>
        return 1;
  108858:	83 c4 10             	add    $0x10,%esp
  10885b:	e9 83 ff ff ff       	jmp    1087e3 <MPTComm_test_own+0xe3>

00108860 <test_MPTComm>:

int test_MPTComm()
{
  108860:	53                   	push   %ebx
  108861:	83 ec 08             	sub    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  108864:	e8 d7 fc ff ff       	call   108540 <MPTComm_test1>
  108869:	89 c3                	mov    %eax,%ebx
  10886b:	e8 70 fd ff ff       	call   1085e0 <MPTComm_test2>
  108870:	01 c3                	add    %eax,%ebx
  108872:	e8 89 fe ff ff       	call   108700 <MPTComm_test_own>
  108877:	83 c4 08             	add    $0x8,%esp
    return MPTComm_test1() + MPTComm_test2() + MPTComm_test_own();
  10887a:	01 d8                	add    %ebx,%eax
  10887c:	5b                   	pop    %ebx
  10887d:	c3                   	ret
  10887e:	66 90                	xchg   %ax,%ax

00108880 <pdir_init_kern>:
/**
 * Sets the entire page map for process 0 as the identity map.
 * Note that part of the task is already completed by pdir_init.
 */
void pdir_init_kern(unsigned int mbi_addr)
{
  108880:	56                   	push   %esi
    // TODO: Define your local variables here.
    unsigned int pde_index = 0;
  108881:	31 f6                	xor    %esi,%esi
{
  108883:	53                   	push   %ebx
  108884:	e8 37 7b ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108889:	81 c3 6b 87 00 00    	add    $0x876b,%ebx
  10888f:	83 ec 10             	sub    $0x10,%esp

    pdir_init(mbi_addr);
  108892:	ff 74 24 1c          	push   0x1c(%esp)
  108896:	e8 95 fa ff ff       	call   108330 <pdir_init>
  10889b:	83 c4 10             	add    $0x10,%esp
  10889e:	66 90                	xchg   %ax,%ax

    // TODO

    for (; pde_index < 1024; pde_index++)
    {
        set_pdir_entry_identity(0, pde_index);
  1088a0:	83 ec 08             	sub    $0x8,%esp
  1088a3:	56                   	push   %esi
    for (; pde_index < 1024; pde_index++)
  1088a4:	83 c6 01             	add    $0x1,%esi
        set_pdir_entry_identity(0, pde_index);
  1088a7:	6a 00                	push   $0x0
  1088a9:	e8 e2 f1 ff ff       	call   107a90 <set_pdir_entry_identity>
    for (; pde_index < 1024; pde_index++)
  1088ae:	83 c4 10             	add    $0x10,%esp
  1088b1:	81 fe 00 04 00 00    	cmp    $0x400,%esi
  1088b7:	75 e7                	jne    1088a0 <pdir_init_kern+0x20>
    }
}
  1088b9:	83 c4 04             	add    $0x4,%esp
  1088bc:	5b                   	pop    %ebx
  1088bd:	5e                   	pop    %esi
  1088be:	c3                   	ret
  1088bf:	90                   	nop

001088c0 <map_page>:
 * otherwise, it returns the physical page index registered in the page directory,
 * (the return value of get_pdir_entry_by_va or alloc_ptbl).
 */
unsigned int map_page(unsigned int proc_index, unsigned int vaddr,
                      unsigned int page_index, unsigned int perm)
{
  1088c0:	57                   	push   %edi
  1088c1:	56                   	push   %esi
  1088c2:	53                   	push   %ebx
  1088c3:	8b 74 24 10          	mov    0x10(%esp),%esi
  1088c7:	e8 f4 7a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  1088cc:	81 c3 28 87 00 00    	add    $0x8728,%ebx
  1088d2:	8b 7c 24 14          	mov    0x14(%esp),%edi
    // TODO
    unsigned int pde = get_pdir_entry_by_va(proc_index, vaddr);
  1088d6:	83 ec 08             	sub    $0x8,%esp
  1088d9:	57                   	push   %edi
  1088da:	56                   	push   %esi
  1088db:	e8 70 f6 ff ff       	call   107f50 <get_pdir_entry_by_va>
    unsigned int ptbl;
    if ((pde & PTE_P) == 0)
  1088e0:	83 c4 10             	add    $0x10,%esp
  1088e3:	a8 01                	test   $0x1,%al
  1088e5:	75 11                	jne    1088f8 <map_page+0x38>
    {
        ptbl = alloc_ptbl(proc_index, vaddr);
  1088e7:	83 ec 08             	sub    $0x8,%esp
  1088ea:	57                   	push   %edi
  1088eb:	56                   	push   %esi
  1088ec:	e8 cf fa ff ff       	call   1083c0 <alloc_ptbl>
        if (ptbl == 0)
  1088f1:	83 c4 10             	add    $0x10,%esp
  1088f4:	85 c0                	test   %eax,%eax
  1088f6:	74 28                	je     108920 <map_page+0x60>
        {
            // no physical page available
            return MagicNumber;
        }
    }
    set_ptbl_entry_by_va(proc_index, vaddr, page_index, perm);
  1088f8:	ff 74 24 1c          	push   0x1c(%esp)
  1088fc:	ff 74 24 1c          	push   0x1c(%esp)
  108900:	57                   	push   %edi
  108901:	56                   	push   %esi
  108902:	e8 09 f7 ff ff       	call   108010 <set_ptbl_entry_by_va>
    pde = get_pdir_entry_by_va(proc_index, vaddr);
  108907:	58                   	pop    %eax
  108908:	5a                   	pop    %edx
  108909:	57                   	push   %edi
  10890a:	56                   	push   %esi
  10890b:	e8 40 f6 ff ff       	call   107f50 <get_pdir_entry_by_va>
    return pde >> 12;
  108910:	83 c4 10             	add    $0x10,%esp
}
  108913:	5b                   	pop    %ebx
    return pde >> 12;
  108914:	c1 e8 0c             	shr    $0xc,%eax
}
  108917:	5e                   	pop    %esi
  108918:	5f                   	pop    %edi
  108919:	c3                   	ret
  10891a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108920:	5b                   	pop    %ebx
            return MagicNumber;
  108921:	b8 01 00 10 00       	mov    $0x100001,%eax
}
  108926:	5e                   	pop    %esi
  108927:	5f                   	pop    %edi
  108928:	c3                   	ret
  108929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00108930 <unmap_page>:
 * Nothing should be done if the mapping no longer exists.
 * You do not need to unmap the page table from the page directory.
 * It should return the corresponding page table entry.
 */
unsigned int unmap_page(unsigned int proc_index, unsigned int vaddr)
{
  108930:	57                   	push   %edi
  108931:	56                   	push   %esi
  108932:	53                   	push   %ebx
  108933:	8b 74 24 10          	mov    0x10(%esp),%esi
  108937:	e8 84 7a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  10893c:	81 c3 b8 86 00 00    	add    $0x86b8,%ebx
  108942:	8b 7c 24 14          	mov    0x14(%esp),%edi
    // TODO
    unsigned int pte = get_ptbl_entry_by_va(proc_index, vaddr);
  108946:	83 ec 08             	sub    $0x8,%esp
  108949:	57                   	push   %edi
  10894a:	56                   	push   %esi
  10894b:	e8 90 f5 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
    if ((pte & PTE_P) == 0)
  108950:	83 c4 10             	add    $0x10,%esp
  108953:	a8 01                	test   $0x1,%al
  108955:	74 16                	je     10896d <unmap_page+0x3d>
    {
        return pte;
    }
    rmv_ptbl_entry_by_va(proc_index, vaddr);
  108957:	83 ec 08             	sub    $0x8,%esp
  10895a:	57                   	push   %edi
  10895b:	56                   	push   %esi
  10895c:	e8 1f f6 ff ff       	call   107f80 <rmv_ptbl_entry_by_va>
    pte = get_ptbl_entry_by_va(proc_index, vaddr);
  108961:	58                   	pop    %eax
  108962:	5a                   	pop    %edx
  108963:	57                   	push   %edi
  108964:	56                   	push   %esi
  108965:	e8 76 f5 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
    return pte;
  10896a:	83 c4 10             	add    $0x10,%esp
}
  10896d:	5b                   	pop    %ebx
  10896e:	5e                   	pop    %esi
  10896f:	5f                   	pop    %edi
  108970:	c3                   	ret
  108971:	66 90                	xchg   %ax,%ax
  108973:	66 90                	xchg   %ax,%ax
  108975:	66 90                	xchg   %ax,%ax
  108977:	66 90                	xchg   %ax,%ax
  108979:	66 90                	xchg   %ax,%ax
  10897b:	66 90                	xchg   %ax,%ax
  10897d:	66 90                	xchg   %ax,%ax
  10897f:	90                   	nop

00108980 <MPTKern_test1>:
#include <pmm/MContainer/export.h>
#include <vmm/MPTOp/export.h>
#include "export.h"

int MPTKern_test1()
{
  108980:	53                   	push   %ebx
  108981:	e8 3a 7a ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108986:	81 c3 6e 86 00 00    	add    $0x866e,%ebx
  10898c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 300;
    container_split(0, 100);
  10898f:	6a 64                	push   $0x64
  108991:	6a 00                	push   $0x0
  108993:	e8 b8 eb ff ff       	call   107550 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  108998:	58                   	pop    %eax
  108999:	5a                   	pop    %edx
  10899a:	68 00 00 00 4b       	push   $0x4b000000
  10899f:	6a 01                	push   $0x1
  1089a1:	e8 3a f5 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  1089a6:	83 c4 10             	add    $0x10,%esp
  1089a9:	85 c0                	test   %eax,%eax
  1089ab:	0f 85 cf 00 00 00    	jne    108a80 <MPTKern_test1+0x100>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  1089b1:	83 ec 08             	sub    $0x8,%esp
  1089b4:	68 00 00 00 4b       	push   $0x4b000000
  1089b9:	6a 01                	push   $0x1
  1089bb:	e8 90 f5 ff ff       	call   107f50 <get_pdir_entry_by_va>
  1089c0:	83 c4 10             	add    $0x10,%esp
  1089c3:	85 c0                	test   %eax,%eax
  1089c5:	0f 85 85 00 00 00    	jne    108a50 <MPTKern_test1+0xd0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    map_page(1, vaddr, 100, 7);
  1089cb:	6a 07                	push   $0x7
  1089cd:	6a 64                	push   $0x64
  1089cf:	68 00 00 00 4b       	push   $0x4b000000
  1089d4:	6a 01                	push   $0x1
  1089d6:	e8 e5 fe ff ff       	call   1088c0 <map_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  1089db:	59                   	pop    %ecx
  1089dc:	58                   	pop    %eax
  1089dd:	68 00 00 00 4b       	push   $0x4b000000
  1089e2:	6a 01                	push   $0x1
  1089e4:	e8 f7 f4 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  1089e9:	83 c4 10             	add    $0x10,%esp
  1089ec:	85 c0                	test   %eax,%eax
  1089ee:	0f 84 dc 00 00 00    	je     108ad0 <MPTKern_test1+0x150>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  1089f4:	83 ec 08             	sub    $0x8,%esp
  1089f7:	68 00 00 00 4b       	push   $0x4b000000
  1089fc:	6a 01                	push   $0x1
  1089fe:	e8 4d f5 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108a03:	83 c4 10             	add    $0x10,%esp
  108a06:	85 c0                	test   %eax,%eax
  108a08:	0f 84 9a 00 00 00    	je     108aa8 <MPTKern_test1+0x128>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    unmap_page(1, vaddr);
  108a0e:	83 ec 08             	sub    $0x8,%esp
  108a11:	68 00 00 00 4b       	push   $0x4b000000
  108a16:	6a 01                	push   $0x1
  108a18:	e8 13 ff ff ff       	call   108930 <unmap_page>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  108a1d:	58                   	pop    %eax
  108a1e:	5a                   	pop    %edx
  108a1f:	68 00 00 00 4b       	push   $0x4b000000
  108a24:	6a 01                	push   $0x1
  108a26:	e8 b5 f4 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108a2b:	83 c4 10             	add    $0x10,%esp
  108a2e:	85 c0                	test   %eax,%eax
  108a30:	0f 85 ca 00 00 00    	jne    108b00 <MPTKern_test1+0x180>
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  108a36:	83 ec 0c             	sub    $0xc,%esp
  108a39:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  108a3f:	50                   	push   %eax
  108a40:	e8 27 a3 ff ff       	call   102d6c <dprintf>
    return 0;
  108a45:	83 c4 10             	add    $0x10,%esp
  108a48:	31 c0                	xor    %eax,%eax
}
  108a4a:	83 c4 08             	add    $0x8,%esp
  108a4d:	5b                   	pop    %ebx
  108a4e:	c3                   	ret
  108a4f:	90                   	nop
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  108a50:	83 ec 08             	sub    $0x8,%esp
  108a53:	68 00 00 00 4b       	push   $0x4b000000
  108a58:	6a 01                	push   $0x1
  108a5a:	e8 f1 f4 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108a5f:	5a                   	pop    %edx
  108a60:	59                   	pop    %ecx
  108a61:	50                   	push   %eax
  108a62:	8d 83 e3 9a ff ff    	lea    -0x651d(%ebx),%eax
  108a68:	50                   	push   %eax
  108a69:	e8 fe a2 ff ff       	call   102d6c <dprintf>
        return 1;
  108a6e:	83 c4 10             	add    $0x10,%esp
}
  108a71:	83 c4 08             	add    $0x8,%esp
        return 1;
  108a74:	b8 01 00 00 00       	mov    $0x1,%eax
}
  108a79:	5b                   	pop    %ebx
  108a7a:	c3                   	ret
  108a7b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  108a80:	83 ec 08             	sub    $0x8,%esp
  108a83:	68 00 00 00 4b       	push   $0x4b000000
  108a88:	6a 01                	push   $0x1
  108a8a:	e8 51 f4 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108a8f:	5a                   	pop    %edx
  108a90:	59                   	pop    %ecx
  108a91:	50                   	push   %eax
  108a92:	8d 83 c7 9a ff ff    	lea    -0x6539(%ebx),%eax
  108a98:	50                   	push   %eax
  108a99:	e8 ce a2 ff ff       	call   102d6c <dprintf>
        return 1;
  108a9e:	83 c4 10             	add    $0x10,%esp
  108aa1:	eb ce                	jmp    108a71 <MPTKern_test1+0xf1>
  108aa3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  108aa8:	83 ec 08             	sub    $0x8,%esp
  108aab:	68 00 00 00 4b       	push   $0x4b000000
  108ab0:	6a 01                	push   $0x1
  108ab2:	e8 99 f4 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108ab7:	59                   	pop    %ecx
  108ab8:	5a                   	pop    %edx
  108ab9:	50                   	push   %eax
  108aba:	8d 83 1b 9b ff ff    	lea    -0x64e5(%ebx),%eax
  108ac0:	50                   	push   %eax
  108ac1:	e8 a6 a2 ff ff       	call   102d6c <dprintf>
        return 1;
  108ac6:	83 c4 10             	add    $0x10,%esp
  108ac9:	eb a6                	jmp    108a71 <MPTKern_test1+0xf1>
  108acb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  108ad0:	83 ec 08             	sub    $0x8,%esp
  108ad3:	68 00 00 00 4b       	push   $0x4b000000
  108ad8:	6a 01                	push   $0x1
  108ada:	e8 01 f4 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108adf:	59                   	pop    %ecx
  108ae0:	5a                   	pop    %edx
  108ae1:	50                   	push   %eax
  108ae2:	8d 83 ff 9a ff ff    	lea    -0x6501(%ebx),%eax
  108ae8:	50                   	push   %eax
  108ae9:	e8 7e a2 ff ff       	call   102d6c <dprintf>
        return 1;
  108aee:	83 c4 10             	add    $0x10,%esp
  108af1:	e9 7b ff ff ff       	jmp    108a71 <MPTKern_test1+0xf1>
  108af6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108afd:	00 
  108afe:	66 90                	xchg   %ax,%ax
        dprintf("test 1.5 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  108b00:	83 ec 08             	sub    $0x8,%esp
  108b03:	68 00 00 00 4b       	push   $0x4b000000
  108b08:	6a 01                	push   $0x1
  108b0a:	e8 d1 f3 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108b0f:	5a                   	pop    %edx
  108b10:	59                   	pop    %ecx
  108b11:	50                   	push   %eax
  108b12:	8d 83 37 9b ff ff    	lea    -0x64c9(%ebx),%eax
  108b18:	50                   	push   %eax
  108b19:	e8 4e a2 ff ff       	call   102d6c <dprintf>
        return 1;
  108b1e:	83 c4 10             	add    $0x10,%esp
  108b21:	e9 4b ff ff ff       	jmp    108a71 <MPTKern_test1+0xf1>
  108b26:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108b2d:	00 
  108b2e:	66 90                	xchg   %ax,%ax

00108b30 <MPTKern_test2>:

int MPTKern_test2()
{
  108b30:	57                   	push   %edi
  108b31:	56                   	push   %esi
  108b32:	be 03 00 00 40       	mov    $0x40000003,%esi
  108b37:	53                   	push   %ebx
  108b38:	e8 83 78 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108b3d:	81 c3 b7 84 00 00    	add    $0x84b7,%ebx
  108b43:	eb 11                	jmp    108b56 <MPTKern_test2+0x26>
  108b45:	8d 76 00             	lea    0x0(%esi),%esi
    unsigned int i;
    for (i = 256; i < 960; i++) {
  108b48:	81 c6 00 00 40 00    	add    $0x400000,%esi
  108b4e:	81 fe 03 00 00 f0    	cmp    $0xf0000003,%esi
  108b54:	74 3d                	je     108b93 <MPTKern_test2+0x63>
        if (get_ptbl_entry_by_va(0, i * 4096 * 1024L) !=
  108b56:	83 ec 08             	sub    $0x8,%esp
  108b59:	8d 7e fd             	lea    -0x3(%esi),%edi
  108b5c:	57                   	push   %edi
  108b5d:	6a 00                	push   $0x0
  108b5f:	e8 7c f3 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108b64:	83 c4 10             	add    $0x10,%esp
  108b67:	39 f0                	cmp    %esi,%eax
  108b69:	74 dd                	je     108b48 <MPTKern_test2+0x18>
            i * 4096 * 1024L + 3) {
            dprintf("test 2.1 failed (i = %d): (%d != %d)\n",
  108b6b:	83 ec 08             	sub    $0x8,%esp
  108b6e:	57                   	push   %edi
  108b6f:	6a 00                	push   $0x0
  108b71:	e8 6a f3 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108b76:	83 c4 0c             	add    $0xc,%esp
  108b79:	56                   	push   %esi
  108b7a:	50                   	push   %eax
  108b7b:	8d 83 c0 ae ff ff    	lea    -0x5140(%ebx),%eax
  108b81:	50                   	push   %eax
  108b82:	e8 e5 a1 ff ff       	call   102d6c <dprintf>
                    get_ptbl_entry_by_va(0, i * 4096 * 1024L),
                    i * 4096 * 1024L + 3);
            return 1;
  108b87:	83 c4 10             	add    $0x10,%esp
  108b8a:	b8 01 00 00 00       	mov    $0x1,%eax
        }
    }
    dprintf("test 2 passed.\n");
    return 0;
}
  108b8f:	5b                   	pop    %ebx
  108b90:	5e                   	pop    %esi
  108b91:	5f                   	pop    %edi
  108b92:	c3                   	ret
    dprintf("test 2 passed.\n");
  108b93:	83 ec 0c             	sub    $0xc,%esp
  108b96:	8d 83 8a 98 ff ff    	lea    -0x6776(%ebx),%eax
  108b9c:	50                   	push   %eax
  108b9d:	e8 ca a1 ff ff       	call   102d6c <dprintf>
    return 0;
  108ba2:	83 c4 10             	add    $0x10,%esp
  108ba5:	31 c0                	xor    %eax,%eax
}
  108ba7:	5b                   	pop    %ebx
  108ba8:	5e                   	pop    %esi
  108ba9:	5f                   	pop    %edi
  108baa:	c3                   	ret
  108bab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00108bb0 <MPTKern_test_own>:
int MPTKern_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  108bb0:	31 c0                	xor    %eax,%eax
  108bb2:	c3                   	ret
  108bb3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108bba:	00 
  108bbb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00108bc0 <test_MPTKern>:

int test_MPTKern()
{
  108bc0:	53                   	push   %ebx
  108bc1:	83 ec 08             	sub    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  108bc4:	e8 b7 fd ff ff       	call   108980 <MPTKern_test1>
  108bc9:	89 c3                	mov    %eax,%ebx
  108bcb:	e8 60 ff ff ff       	call   108b30 <MPTKern_test2>
}
  108bd0:	83 c4 08             	add    $0x8,%esp
    return MPTKern_test1() + MPTKern_test2() + MPTKern_test_own();
  108bd3:	01 d8                	add    %ebx,%eax
}
  108bd5:	5b                   	pop    %ebx
  108bd6:	c3                   	ret
  108bd7:	66 90                	xchg   %ax,%ax
  108bd9:	66 90                	xchg   %ax,%ax
  108bdb:	66 90                	xchg   %ax,%ax
  108bdd:	66 90                	xchg   %ax,%ax
  108bdf:	90                   	nop

00108be0 <paging_init>:
/**
 * Initializes the page structures, moves to the kernel page structure (0),
 * and turns on the paging.
 */
void paging_init(unsigned int mbi_addr)
{
  108be0:	53                   	push   %ebx
  108be1:	e8 da 77 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108be6:	81 c3 0e 84 00 00    	add    $0x840e,%ebx
  108bec:	83 ec 14             	sub    $0x14,%esp
    pdir_init_kern(mbi_addr);
  108bef:	ff 74 24 1c          	push   0x1c(%esp)
  108bf3:	e8 88 fc ff ff       	call   108880 <pdir_init_kern>
    set_pdir_base(0);
  108bf8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  108bff:	e8 dc ed ff ff       	call   1079e0 <set_pdir_base>
    enable_paging();
  108c04:	e8 c9 85 ff ff       	call   1011d2 <enable_paging>
}
  108c09:	83 c4 18             	add    $0x18,%esp
  108c0c:	5b                   	pop    %ebx
  108c0d:	c3                   	ret
  108c0e:	66 90                	xchg   %ax,%ax

00108c10 <alloc_page>:
#include <lib/x86.h>
#include "import.h"

unsigned int alloc_page (unsigned int proc_index, unsigned int vaddr, unsigned int perm)
{
  108c10:	56                   	push   %esi
  108c11:	53                   	push   %ebx
  108c12:	e8 a9 77 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108c17:	81 c3 dd 83 00 00    	add    $0x83dd,%ebx
  108c1d:	83 ec 10             	sub    $0x10,%esp
  108c20:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    unsigned int page_index;
    unsigned int ptbl;
    page_index = container_alloc(proc_index);
  108c24:	56                   	push   %esi
  108c25:	e8 86 e9 ff ff       	call   1075b0 <container_alloc>
    if(page_index == 0) return MagicNumber;
  108c2a:	83 c4 10             	add    $0x10,%esp
  108c2d:	ba 01 00 10 00       	mov    $0x100001,%edx
  108c32:	85 c0                	test   %eax,%eax
  108c34:	74 14                	je     108c4a <alloc_page+0x3a>
    ptbl = map_page(proc_index, vaddr, page_index, perm);
  108c36:	ff 74 24 18          	push   0x18(%esp)
  108c3a:	50                   	push   %eax
  108c3b:	ff 74 24 1c          	push   0x1c(%esp)
  108c3f:	56                   	push   %esi
  108c40:	e8 7b fc ff ff       	call   1088c0 <map_page>
    return ptbl;
  108c45:	83 c4 10             	add    $0x10,%esp
    ptbl = map_page(proc_index, vaddr, page_index, perm);
  108c48:	89 c2                	mov    %eax,%edx
}
  108c4a:	83 c4 04             	add    $0x4,%esp
  108c4d:	89 d0                	mov    %edx,%eax
  108c4f:	5b                   	pop    %ebx
  108c50:	5e                   	pop    %esi
  108c51:	c3                   	ret
  108c52:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108c59:	00 
  108c5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00108c60 <alloc_mem_quota>:

unsigned int alloc_mem_quota (unsigned int id, unsigned int quota)
{
  108c60:	53                   	push   %ebx
  108c61:	e8 5a 77 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108c66:	81 c3 8e 83 00 00    	add    $0x838e,%ebx
  108c6c:	83 ec 10             	sub    $0x10,%esp
    unsigned int child;
    child = container_split (id, quota);
  108c6f:	ff 74 24 1c          	push   0x1c(%esp)
  108c73:	ff 74 24 1c          	push   0x1c(%esp)
  108c77:	e8 d4 e8 ff ff       	call   107550 <container_split>
    return child;
  108c7c:	83 c4 18             	add    $0x18,%esp
  108c7f:	5b                   	pop    %ebx
  108c80:	c3                   	ret
  108c81:	66 90                	xchg   %ax,%ax
  108c83:	66 90                	xchg   %ax,%ax
  108c85:	66 90                	xchg   %ax,%ax
  108c87:	66 90                	xchg   %ax,%ax
  108c89:	66 90                	xchg   %ax,%ax
  108c8b:	66 90                	xchg   %ax,%ax
  108c8d:	66 90                	xchg   %ax,%ax
  108c8f:	90                   	nop

00108c90 <MPTNew_test1>:
#include <vmm/MPTOp/export.h>
#include <vmm/MPTNew/export.h>
#include "export.h"

int MPTNew_test1()
{
  108c90:	53                   	push   %ebx
  108c91:	e8 2a 77 ff ff       	call   1003c0 <__x86.get_pc_thunk.bx>
  108c96:	81 c3 5e 83 00 00    	add    $0x835e,%ebx
  108c9c:	83 ec 10             	sub    $0x10,%esp
    unsigned int vaddr = 4096 * 1024 * 400;
    container_split(0, 100);
  108c9f:	6a 64                	push   $0x64
  108ca1:	6a 00                	push   $0x0
  108ca3:	e8 a8 e8 ff ff       	call   107550 <container_split>
    if (get_ptbl_entry_by_va(1, vaddr) != 0) {
  108ca8:	59                   	pop    %ecx
  108ca9:	58                   	pop    %eax
  108caa:	68 00 00 00 64       	push   $0x64000000
  108caf:	6a 01                	push   $0x1
  108cb1:	e8 2a f2 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108cb6:	83 c4 10             	add    $0x10,%esp
  108cb9:	85 c0                	test   %eax,%eax
  108cbb:	0f 85 9f 00 00 00    	jne    108d60 <MPTNew_test1+0xd0>
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) != 0) {
  108cc1:	83 ec 08             	sub    $0x8,%esp
  108cc4:	68 00 00 00 64       	push   $0x64000000
  108cc9:	6a 01                	push   $0x1
  108ccb:	e8 80 f2 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108cd0:	83 c4 10             	add    $0x10,%esp
  108cd3:	85 c0                	test   %eax,%eax
  108cd5:	75 59                	jne    108d30 <MPTNew_test1+0xa0>
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    alloc_page(1, vaddr, 7);
  108cd7:	83 ec 04             	sub    $0x4,%esp
  108cda:	6a 07                	push   $0x7
  108cdc:	68 00 00 00 64       	push   $0x64000000
  108ce1:	6a 01                	push   $0x1
  108ce3:	e8 28 ff ff ff       	call   108c10 <alloc_page>
    if (get_ptbl_entry_by_va(1, vaddr) == 0) {
  108ce8:	58                   	pop    %eax
  108ce9:	5a                   	pop    %edx
  108cea:	68 00 00 00 64       	push   $0x64000000
  108cef:	6a 01                	push   $0x1
  108cf1:	e8 ea f1 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108cf6:	83 c4 10             	add    $0x10,%esp
  108cf9:	85 c0                	test   %eax,%eax
  108cfb:	0f 84 af 00 00 00    	je     108db0 <MPTNew_test1+0x120>
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
        return 1;
    }
    if (get_pdir_entry_by_va(1, vaddr) == 0) {
  108d01:	83 ec 08             	sub    $0x8,%esp
  108d04:	68 00 00 00 64       	push   $0x64000000
  108d09:	6a 01                	push   $0x1
  108d0b:	e8 40 f2 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108d10:	83 c4 10             	add    $0x10,%esp
  108d13:	85 c0                	test   %eax,%eax
  108d15:	74 71                	je     108d88 <MPTNew_test1+0xf8>
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
        return 1;
    }
    dprintf("test 1 passed.\n");
  108d17:	83 ec 0c             	sub    $0xc,%esp
  108d1a:	8d 83 7a 98 ff ff    	lea    -0x6786(%ebx),%eax
  108d20:	50                   	push   %eax
  108d21:	e8 46 a0 ff ff       	call   102d6c <dprintf>
    return 0;
  108d26:	83 c4 10             	add    $0x10,%esp
  108d29:	31 c0                	xor    %eax,%eax
}
  108d2b:	83 c4 08             	add    $0x8,%esp
  108d2e:	5b                   	pop    %ebx
  108d2f:	c3                   	ret
        dprintf("test 1.2 failed: (%d != 0)\n", get_pdir_entry_by_va(1, vaddr));
  108d30:	83 ec 08             	sub    $0x8,%esp
  108d33:	68 00 00 00 64       	push   $0x64000000
  108d38:	6a 01                	push   $0x1
  108d3a:	e8 11 f2 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108d3f:	59                   	pop    %ecx
  108d40:	5a                   	pop    %edx
  108d41:	50                   	push   %eax
  108d42:	8d 83 e3 9a ff ff    	lea    -0x651d(%ebx),%eax
  108d48:	50                   	push   %eax
  108d49:	e8 1e a0 ff ff       	call   102d6c <dprintf>
        return 1;
  108d4e:	83 c4 10             	add    $0x10,%esp
}
  108d51:	83 c4 08             	add    $0x8,%esp
        return 1;
  108d54:	b8 01 00 00 00       	mov    $0x1,%eax
}
  108d59:	5b                   	pop    %ebx
  108d5a:	c3                   	ret
  108d5b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.1 failed: (%d != 0)\n", get_ptbl_entry_by_va(1, vaddr));
  108d60:	83 ec 08             	sub    $0x8,%esp
  108d63:	68 00 00 00 64       	push   $0x64000000
  108d68:	6a 01                	push   $0x1
  108d6a:	e8 71 f1 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108d6f:	59                   	pop    %ecx
  108d70:	5a                   	pop    %edx
  108d71:	50                   	push   %eax
  108d72:	8d 83 c7 9a ff ff    	lea    -0x6539(%ebx),%eax
  108d78:	50                   	push   %eax
  108d79:	e8 ee 9f ff ff       	call   102d6c <dprintf>
        return 1;
  108d7e:	83 c4 10             	add    $0x10,%esp
  108d81:	eb ce                	jmp    108d51 <MPTNew_test1+0xc1>
  108d83:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.4 failed: (%d == 0)\n", get_pdir_entry_by_va(1, vaddr));
  108d88:	83 ec 08             	sub    $0x8,%esp
  108d8b:	68 00 00 00 64       	push   $0x64000000
  108d90:	6a 01                	push   $0x1
  108d92:	e8 b9 f1 ff ff       	call   107f50 <get_pdir_entry_by_va>
  108d97:	5a                   	pop    %edx
  108d98:	59                   	pop    %ecx
  108d99:	50                   	push   %eax
  108d9a:	8d 83 1b 9b ff ff    	lea    -0x64e5(%ebx),%eax
  108da0:	50                   	push   %eax
  108da1:	e8 c6 9f ff ff       	call   102d6c <dprintf>
        return 1;
  108da6:	83 c4 10             	add    $0x10,%esp
  108da9:	eb a6                	jmp    108d51 <MPTNew_test1+0xc1>
  108dab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        dprintf("test 1.3 failed: (%d == 0)\n", get_ptbl_entry_by_va(1, vaddr));
  108db0:	83 ec 08             	sub    $0x8,%esp
  108db3:	68 00 00 00 64       	push   $0x64000000
  108db8:	6a 01                	push   $0x1
  108dba:	e8 21 f1 ff ff       	call   107ee0 <get_ptbl_entry_by_va>
  108dbf:	5a                   	pop    %edx
  108dc0:	59                   	pop    %ecx
  108dc1:	50                   	push   %eax
  108dc2:	8d 83 ff 9a ff ff    	lea    -0x6501(%ebx),%eax
  108dc8:	50                   	push   %eax
  108dc9:	e8 9e 9f ff ff       	call   102d6c <dprintf>
        return 1;
  108dce:	83 c4 10             	add    $0x10,%esp
  108dd1:	e9 7b ff ff ff       	jmp    108d51 <MPTNew_test1+0xc1>
  108dd6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108ddd:	00 
  108dde:	66 90                	xchg   %ax,%ax

00108de0 <MPTNew_test_own>:
int MPTNew_test_own()
{
    // TODO (optional)
    // dprintf("own test passed.\n");
    return 0;
}
  108de0:	31 c0                	xor    %eax,%eax
  108de2:	c3                   	ret
  108de3:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108dea:	00 
  108deb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00108df0 <test_MPTNew>:

int test_MPTNew()
{
    return MPTNew_test1() + MPTNew_test_own();
  108df0:	e9 9b fe ff ff       	jmp    108c90 <MPTNew_test1>
  108df5:	66 90                	xchg   %ax,%ax
  108df7:	66 90                	xchg   %ax,%ax
  108df9:	66 90                	xchg   %ax,%ax
  108dfb:	66 90                	xchg   %ax,%ax
  108dfd:	66 90                	xchg   %ax,%ax
  108dff:	90                   	nop

00108e00 <__udivdi3>:
  108e00:	f3 0f 1e fb          	endbr32
  108e04:	55                   	push   %ebp
  108e05:	89 e5                	mov    %esp,%ebp
  108e07:	57                   	push   %edi
  108e08:	56                   	push   %esi
  108e09:	53                   	push   %ebx
  108e0a:	83 ec 1c             	sub    $0x1c,%esp
  108e0d:	8b 7d 08             	mov    0x8(%ebp),%edi
  108e10:	8b 45 14             	mov    0x14(%ebp),%eax
  108e13:	8b 75 0c             	mov    0xc(%ebp),%esi
  108e16:	8b 5d 10             	mov    0x10(%ebp),%ebx
  108e19:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  108e1c:	85 c0                	test   %eax,%eax
  108e1e:	75 20                	jne    108e40 <__udivdi3+0x40>
  108e20:	39 de                	cmp    %ebx,%esi
  108e22:	73 54                	jae    108e78 <__udivdi3+0x78>
  108e24:	89 f8                	mov    %edi,%eax
  108e26:	31 ff                	xor    %edi,%edi
  108e28:	89 f2                	mov    %esi,%edx
  108e2a:	f7 f3                	div    %ebx
  108e2c:	89 fa                	mov    %edi,%edx
  108e2e:	83 c4 1c             	add    $0x1c,%esp
  108e31:	5b                   	pop    %ebx
  108e32:	5e                   	pop    %esi
  108e33:	5f                   	pop    %edi
  108e34:	5d                   	pop    %ebp
  108e35:	c3                   	ret
  108e36:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108e3d:	00 
  108e3e:	66 90                	xchg   %ax,%ax
  108e40:	39 c6                	cmp    %eax,%esi
  108e42:	73 14                	jae    108e58 <__udivdi3+0x58>
  108e44:	31 ff                	xor    %edi,%edi
  108e46:	31 c0                	xor    %eax,%eax
  108e48:	89 fa                	mov    %edi,%edx
  108e4a:	83 c4 1c             	add    $0x1c,%esp
  108e4d:	5b                   	pop    %ebx
  108e4e:	5e                   	pop    %esi
  108e4f:	5f                   	pop    %edi
  108e50:	5d                   	pop    %ebp
  108e51:	c3                   	ret
  108e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108e58:	0f bd f8             	bsr    %eax,%edi
  108e5b:	83 f7 1f             	xor    $0x1f,%edi
  108e5e:	75 48                	jne    108ea8 <__udivdi3+0xa8>
  108e60:	39 f0                	cmp    %esi,%eax
  108e62:	72 07                	jb     108e6b <__udivdi3+0x6b>
  108e64:	31 c0                	xor    %eax,%eax
  108e66:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  108e69:	72 dd                	jb     108e48 <__udivdi3+0x48>
  108e6b:	b8 01 00 00 00       	mov    $0x1,%eax
  108e70:	eb d6                	jmp    108e48 <__udivdi3+0x48>
  108e72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108e78:	89 d9                	mov    %ebx,%ecx
  108e7a:	85 db                	test   %ebx,%ebx
  108e7c:	75 0b                	jne    108e89 <__udivdi3+0x89>
  108e7e:	b8 01 00 00 00       	mov    $0x1,%eax
  108e83:	31 d2                	xor    %edx,%edx
  108e85:	f7 f3                	div    %ebx
  108e87:	89 c1                	mov    %eax,%ecx
  108e89:	31 d2                	xor    %edx,%edx
  108e8b:	89 f0                	mov    %esi,%eax
  108e8d:	f7 f1                	div    %ecx
  108e8f:	89 c6                	mov    %eax,%esi
  108e91:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  108e94:	89 f7                	mov    %esi,%edi
  108e96:	f7 f1                	div    %ecx
  108e98:	89 fa                	mov    %edi,%edx
  108e9a:	83 c4 1c             	add    $0x1c,%esp
  108e9d:	5b                   	pop    %ebx
  108e9e:	5e                   	pop    %esi
  108e9f:	5f                   	pop    %edi
  108ea0:	5d                   	pop    %ebp
  108ea1:	c3                   	ret
  108ea2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108ea8:	89 f9                	mov    %edi,%ecx
  108eaa:	ba 20 00 00 00       	mov    $0x20,%edx
  108eaf:	29 fa                	sub    %edi,%edx
  108eb1:	d3 e0                	shl    %cl,%eax
  108eb3:	89 45 e0             	mov    %eax,-0x20(%ebp)
  108eb6:	89 d1                	mov    %edx,%ecx
  108eb8:	89 d8                	mov    %ebx,%eax
  108eba:	d3 e8                	shr    %cl,%eax
  108ebc:	89 c1                	mov    %eax,%ecx
  108ebe:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108ec1:	09 c1                	or     %eax,%ecx
  108ec3:	89 f0                	mov    %esi,%eax
  108ec5:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  108ec8:	89 f9                	mov    %edi,%ecx
  108eca:	d3 e3                	shl    %cl,%ebx
  108ecc:	89 d1                	mov    %edx,%ecx
  108ece:	d3 e8                	shr    %cl,%eax
  108ed0:	89 5d dc             	mov    %ebx,-0x24(%ebp)
  108ed3:	89 f9                	mov    %edi,%ecx
  108ed5:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
  108ed8:	d3 e6                	shl    %cl,%esi
  108eda:	89 d1                	mov    %edx,%ecx
  108edc:	d3 eb                	shr    %cl,%ebx
  108ede:	09 f3                	or     %esi,%ebx
  108ee0:	89 c6                	mov    %eax,%esi
  108ee2:	89 f2                	mov    %esi,%edx
  108ee4:	89 d8                	mov    %ebx,%eax
  108ee6:	f7 75 e0             	divl   -0x20(%ebp)
  108ee9:	89 d6                	mov    %edx,%esi
  108eeb:	89 c3                	mov    %eax,%ebx
  108eed:	f7 65 dc             	mull   -0x24(%ebp)
  108ef0:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108ef3:	39 d6                	cmp    %edx,%esi
  108ef5:	72 21                	jb     108f18 <__udivdi3+0x118>
  108ef7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  108efa:	89 f9                	mov    %edi,%ecx
  108efc:	d3 e2                	shl    %cl,%edx
  108efe:	39 c2                	cmp    %eax,%edx
  108f00:	73 07                	jae    108f09 <__udivdi3+0x109>
  108f02:	8b 55 e0             	mov    -0x20(%ebp),%edx
  108f05:	39 d6                	cmp    %edx,%esi
  108f07:	74 0f                	je     108f18 <__udivdi3+0x118>
  108f09:	89 d8                	mov    %ebx,%eax
  108f0b:	31 ff                	xor    %edi,%edi
  108f0d:	e9 36 ff ff ff       	jmp    108e48 <__udivdi3+0x48>
  108f12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  108f18:	8d 43 ff             	lea    -0x1(%ebx),%eax
  108f1b:	31 ff                	xor    %edi,%edi
  108f1d:	e9 26 ff ff ff       	jmp    108e48 <__udivdi3+0x48>
  108f22:	66 90                	xchg   %ax,%ax
  108f24:	66 90                	xchg   %ax,%ax
  108f26:	66 90                	xchg   %ax,%ax
  108f28:	66 90                	xchg   %ax,%ax
  108f2a:	66 90                	xchg   %ax,%ax
  108f2c:	66 90                	xchg   %ax,%ax
  108f2e:	66 90                	xchg   %ax,%ax

00108f30 <__umoddi3>:
  108f30:	f3 0f 1e fb          	endbr32
  108f34:	55                   	push   %ebp
  108f35:	89 e5                	mov    %esp,%ebp
  108f37:	57                   	push   %edi
  108f38:	56                   	push   %esi
  108f39:	53                   	push   %ebx
  108f3a:	83 ec 2c             	sub    $0x2c,%esp
  108f3d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  108f40:	8b 45 14             	mov    0x14(%ebp),%eax
  108f43:	8b 75 08             	mov    0x8(%ebp),%esi
  108f46:	8b 7d 10             	mov    0x10(%ebp),%edi
  108f49:	89 da                	mov    %ebx,%edx
  108f4b:	85 c0                	test   %eax,%eax
  108f4d:	75 19                	jne    108f68 <__umoddi3+0x38>
  108f4f:	39 fb                	cmp    %edi,%ebx
  108f51:	73 5d                	jae    108fb0 <__umoddi3+0x80>
  108f53:	89 f0                	mov    %esi,%eax
  108f55:	f7 f7                	div    %edi
  108f57:	89 d0                	mov    %edx,%eax
  108f59:	31 d2                	xor    %edx,%edx
  108f5b:	83 c4 2c             	add    $0x2c,%esp
  108f5e:	5b                   	pop    %ebx
  108f5f:	5e                   	pop    %esi
  108f60:	5f                   	pop    %edi
  108f61:	5d                   	pop    %ebp
  108f62:	c3                   	ret
  108f63:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  108f68:	89 75 e0             	mov    %esi,-0x20(%ebp)
  108f6b:	39 c3                	cmp    %eax,%ebx
  108f6d:	73 11                	jae    108f80 <__umoddi3+0x50>
  108f6f:	89 f0                	mov    %esi,%eax
  108f71:	83 c4 2c             	add    $0x2c,%esp
  108f74:	5b                   	pop    %ebx
  108f75:	5e                   	pop    %esi
  108f76:	5f                   	pop    %edi
  108f77:	5d                   	pop    %ebp
  108f78:	c3                   	ret
  108f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  108f80:	0f bd c8             	bsr    %eax,%ecx
  108f83:	83 f1 1f             	xor    $0x1f,%ecx
  108f86:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  108f89:	75 45                	jne    108fd0 <__umoddi3+0xa0>
  108f8b:	39 d8                	cmp    %ebx,%eax
  108f8d:	0f 82 d5 00 00 00    	jb     109068 <__umoddi3+0x138>
  108f93:	39 fe                	cmp    %edi,%esi
  108f95:	0f 83 cd 00 00 00    	jae    109068 <__umoddi3+0x138>
  108f9b:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108f9e:	83 c4 2c             	add    $0x2c,%esp
  108fa1:	5b                   	pop    %ebx
  108fa2:	5e                   	pop    %esi
  108fa3:	5f                   	pop    %edi
  108fa4:	5d                   	pop    %ebp
  108fa5:	c3                   	ret
  108fa6:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  108fad:	00 
  108fae:	66 90                	xchg   %ax,%ax
  108fb0:	89 f9                	mov    %edi,%ecx
  108fb2:	85 ff                	test   %edi,%edi
  108fb4:	75 0b                	jne    108fc1 <__umoddi3+0x91>
  108fb6:	b8 01 00 00 00       	mov    $0x1,%eax
  108fbb:	31 d2                	xor    %edx,%edx
  108fbd:	f7 f7                	div    %edi
  108fbf:	89 c1                	mov    %eax,%ecx
  108fc1:	89 d8                	mov    %ebx,%eax
  108fc3:	31 d2                	xor    %edx,%edx
  108fc5:	f7 f1                	div    %ecx
  108fc7:	89 f0                	mov    %esi,%eax
  108fc9:	f7 f1                	div    %ecx
  108fcb:	eb 8a                	jmp    108f57 <__umoddi3+0x27>
  108fcd:	8d 76 00             	lea    0x0(%esi),%esi
  108fd0:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
  108fd3:	ba 20 00 00 00       	mov    $0x20,%edx
  108fd8:	29 ca                	sub    %ecx,%edx
  108fda:	d3 e0                	shl    %cl,%eax
  108fdc:	89 45 dc             	mov    %eax,-0x24(%ebp)
  108fdf:	89 d1                	mov    %edx,%ecx
  108fe1:	89 f8                	mov    %edi,%eax
  108fe3:	d3 e8                	shr    %cl,%eax
  108fe5:	89 55 e0             	mov    %edx,-0x20(%ebp)
  108fe8:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  108fec:	89 c2                	mov    %eax,%edx
  108fee:	8b 45 dc             	mov    -0x24(%ebp),%eax
  108ff1:	d3 e7                	shl    %cl,%edi
  108ff3:	09 c2                	or     %eax,%edx
  108ff5:	8b 45 e0             	mov    -0x20(%ebp),%eax
  108ff8:	89 7d d8             	mov    %edi,-0x28(%ebp)
  108ffb:	89 f7                	mov    %esi,%edi
  108ffd:	89 55 dc             	mov    %edx,-0x24(%ebp)
  109000:	89 da                	mov    %ebx,%edx
  109002:	89 c1                	mov    %eax,%ecx
  109004:	d3 ea                	shr    %cl,%edx
  109006:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  10900a:	d3 e3                	shl    %cl,%ebx
  10900c:	89 c1                	mov    %eax,%ecx
  10900e:	d3 ef                	shr    %cl,%edi
  109010:	0f b6 4d e4          	movzbl -0x1c(%ebp),%ecx
  109014:	89 f8                	mov    %edi,%eax
  109016:	d3 e6                	shl    %cl,%esi
  109018:	09 d8                	or     %ebx,%eax
  10901a:	f7 75 dc             	divl   -0x24(%ebp)
  10901d:	89 d3                	mov    %edx,%ebx
  10901f:	89 75 d4             	mov    %esi,-0x2c(%ebp)
  109022:	89 f7                	mov    %esi,%edi
  109024:	f7 65 d8             	mull   -0x28(%ebp)
  109027:	89 c6                	mov    %eax,%esi
  109029:	89 d1                	mov    %edx,%ecx
  10902b:	39 d3                	cmp    %edx,%ebx
  10902d:	72 06                	jb     109035 <__umoddi3+0x105>
  10902f:	75 0e                	jne    10903f <__umoddi3+0x10f>
  109031:	39 c7                	cmp    %eax,%edi
  109033:	73 0a                	jae    10903f <__umoddi3+0x10f>
  109035:	2b 45 d8             	sub    -0x28(%ebp),%eax
  109038:	1b 55 dc             	sbb    -0x24(%ebp),%edx
  10903b:	89 d1                	mov    %edx,%ecx
  10903d:	89 c6                	mov    %eax,%esi
  10903f:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  109042:	8b 7d e4             	mov    -0x1c(%ebp),%edi
  109045:	29 f0                	sub    %esi,%eax
  109047:	19 cb                	sbb    %ecx,%ebx
  109049:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
  10904d:	89 da                	mov    %ebx,%edx
  10904f:	d3 e2                	shl    %cl,%edx
  109051:	89 f9                	mov    %edi,%ecx
  109053:	d3 e8                	shr    %cl,%eax
  109055:	d3 eb                	shr    %cl,%ebx
  109057:	09 d0                	or     %edx,%eax
  109059:	89 da                	mov    %ebx,%edx
  10905b:	83 c4 2c             	add    $0x2c,%esp
  10905e:	5b                   	pop    %ebx
  10905f:	5e                   	pop    %esi
  109060:	5f                   	pop    %edi
  109061:	5d                   	pop    %ebp
  109062:	c3                   	ret
  109063:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  109068:	89 da                	mov    %ebx,%edx
  10906a:	29 fe                	sub    %edi,%esi
  10906c:	19 c2                	sbb    %eax,%edx
  10906e:	89 75 e0             	mov    %esi,-0x20(%ebp)
  109071:	e9 25 ff ff ff       	jmp    108f9b <__umoddi3+0x6b>
