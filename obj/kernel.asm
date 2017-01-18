
bin/kernel:     file format elf32-i386


Disassembly of section .text:

00100000 <kern_init>:
#define MACRO_ADC64(x)      MACRO_ADC32(x); MACRO_ADC32(x)
#define MACRO_ADC128(x)     MACRO_ADC64(x); MACRO_ADC64(x)
#define MACRO_ADC256(x)     MACRO_ADC128(x); MACRO_ADC128(x)

int
kern_init(void) {
  100000:	55                   	push   %ebp
  100001:	89 e5                	mov    %esp,%ebp
  100003:	83 ec 18             	sub    $0x18,%esp
    extern char edata[], end[];
    memset(edata, 0, end - edata);
  100006:	ba a0 1d 11 00       	mov    $0x111da0,%edx
  10000b:	b8 76 0a 11 00       	mov    $0x110a76,%eax
  100010:	29 c2                	sub    %eax,%edx
  100012:	89 d0                	mov    %edx,%eax
  100014:	83 ec 04             	sub    $0x4,%esp
  100017:	50                   	push   %eax
  100018:	6a 00                	push   $0x0
  10001a:	68 76 0a 11 00       	push   $0x110a76
  10001f:	e8 b2 39 00 00       	call   1039d6 <memset>
  100024:	83 c4 10             	add    $0x10,%esp

    cons_init();                // init the console
  100027:	e8 74 23 00 00       	call   1023a0 <cons_init>

    const char *message = "(THU.CST) os is loading ...";
  10002c:	c7 45 f0 80 41 10 00 	movl   $0x104180,-0x10(%ebp)
    cprintf("%s\n\n", message);
  100033:	83 ec 08             	sub    $0x8,%esp
  100036:	ff 75 f0             	pushl  -0x10(%ebp)
  100039:	68 9c 41 10 00       	push   $0x10419c
  10003e:	e8 8c 04 00 00       	call   1004cf <cprintf>
  100043:	83 c4 10             	add    $0x10,%esp

    print_kerninfo();
  100046:	e8 4c 0b 00 00       	call   100b97 <print_kerninfo>

    debug_init();               // init debug registers
  10004b:	e8 56 11 00 00       	call   1011a6 <debug_init>
    pmm_init();                 // init physical memory management
  100050:	e8 45 36 00 00       	call   10369a <pmm_init>

    pic_init();                 // init interrupt controller
  100055:	e8 89 24 00 00       	call   1024e3 <pic_init>
    idt_init();                 // init interrupt descriptor table
  10005a:	e8 cf 25 00 00       	call   10262e <idt_init>

    clock_init();               // init clock interrupt
  10005f:	e8 21 1b 00 00       	call   101b85 <clock_init>
    intr_enable();              // enable irq interrupt
  100064:	e8 b7 25 00 00       	call   102620 <intr_enable>

    int num = 0;
  100069:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    while (1) {
        MACRO_ADC256(num);
  100070:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100074:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100078:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10007c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100080:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100084:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100088:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10008c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100090:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100094:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100098:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10009c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000a4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000a8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000ac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000b0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000b4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000c0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000cc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000d0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000d8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000dc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000e0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000e8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000ec:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000f0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000f4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000f8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1000fc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100100:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100104:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100108:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10010c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100110:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100114:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100118:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10011c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100120:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100124:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100128:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10012c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100130:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100134:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100138:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10013c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100140:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100144:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100148:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10014c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100150:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100154:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100158:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10015c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100160:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100164:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100168:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10016c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100170:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100174:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100178:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10017c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100180:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100184:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100188:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10018c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100190:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100194:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100198:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10019c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001a4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001a8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001ac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001b0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001b4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001c0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001cc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001d0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001d8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001dc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001e0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001e8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001ec:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001f0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001f4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001f8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1001fc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100200:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100204:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100208:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10020c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100210:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100214:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100218:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10021c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100220:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100224:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100228:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10022c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100230:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100234:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100238:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10023c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100240:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100244:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100248:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10024c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100250:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100254:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100258:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10025c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100260:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100264:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100268:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10026c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100270:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100274:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100278:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10027c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100280:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100284:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100288:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10028c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100290:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100294:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100298:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10029c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002a4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002a8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002ac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002b0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002b4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002cc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002d0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002d8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002dc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002e0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002e8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002ec:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002f0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002f4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002f8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1002fc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100300:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100304:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100308:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10030c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100310:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100314:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100318:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10031c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100320:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100324:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100328:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10032c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100330:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100334:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100338:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10033c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100340:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100344:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100348:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10034c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100350:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100354:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100358:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10035c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100360:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100364:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100368:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10036c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100370:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100374:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100378:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10037c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100380:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100384:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100388:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10038c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100390:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100394:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100398:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10039c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003a0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003a4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003a8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003ac:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003b0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003b4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003b8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003bc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003c0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003c4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003cc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003d0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003d4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003d8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003dc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003e0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003e4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003e8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003ec:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003f0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003f4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003f8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1003fc:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100400:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100404:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100408:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10040c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100410:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100414:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100418:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10041c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100420:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100424:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100428:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10042c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100430:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100434:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100438:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10043c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100440:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100444:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100448:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10044c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100450:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100454:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100458:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10045c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100460:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100464:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100468:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10046c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
        watch_value ++;
  100470:	a1 80 0a 11 00       	mov    0x110a80,%eax
  100475:	83 c0 01             	add    $0x1,%eax
  100478:	a3 80 0a 11 00       	mov    %eax,0x110a80
    }
  10047d:	e9 ee fb ff ff       	jmp    100070 <kern_init+0x70>

00100482 <cputch>:
/* *
 * cputch - writes a single character @c to stdout, and it will
 * increace the value of counter pointed by @cnt.
 * */
static void
cputch(int c, int *cnt) {
  100482:	55                   	push   %ebp
  100483:	89 e5                	mov    %esp,%ebp
  100485:	83 ec 08             	sub    $0x8,%esp
    cons_putc(c);
  100488:	83 ec 0c             	sub    $0xc,%esp
  10048b:	ff 75 08             	pushl  0x8(%ebp)
  10048e:	e8 3e 1f 00 00       	call   1023d1 <cons_putc>
  100493:	83 c4 10             	add    $0x10,%esp
    (*cnt) ++;
  100496:	8b 45 0c             	mov    0xc(%ebp),%eax
  100499:	8b 00                	mov    (%eax),%eax
  10049b:	8d 50 01             	lea    0x1(%eax),%edx
  10049e:	8b 45 0c             	mov    0xc(%ebp),%eax
  1004a1:	89 10                	mov    %edx,(%eax)
}
  1004a3:	90                   	nop
  1004a4:	c9                   	leave  
  1004a5:	c3                   	ret    

001004a6 <vcprintf>:
 *
 * Call this function if you are already dealing with a va_list.
 * Or you probably want cprintf() instead.
 * */
int
vcprintf(const char *fmt, va_list ap) {
  1004a6:	55                   	push   %ebp
  1004a7:	89 e5                	mov    %esp,%ebp
  1004a9:	83 ec 18             	sub    $0x18,%esp
    int cnt = 0;
  1004ac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    vprintfmt((void*)cputch, &cnt, fmt, ap);
  1004b3:	ff 75 0c             	pushl  0xc(%ebp)
  1004b6:	ff 75 08             	pushl  0x8(%ebp)
  1004b9:	8d 45 f4             	lea    -0xc(%ebp),%eax
  1004bc:	50                   	push   %eax
  1004bd:	68 82 04 10 00       	push   $0x100482
  1004c2:	e8 45 38 00 00       	call   103d0c <vprintfmt>
  1004c7:	83 c4 10             	add    $0x10,%esp
    return cnt;
  1004ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  1004cd:	c9                   	leave  
  1004ce:	c3                   	ret    

001004cf <cprintf>:
 *
 * The return value is the number of characters which would be
 * written to stdout.
 * */
int
cprintf(const char *fmt, ...) {
  1004cf:	55                   	push   %ebp
  1004d0:	89 e5                	mov    %esp,%ebp
  1004d2:	83 ec 18             	sub    $0x18,%esp
    va_list ap;
    int cnt;
    va_start(ap, fmt);
  1004d5:	8d 45 0c             	lea    0xc(%ebp),%eax
  1004d8:	89 45 f0             	mov    %eax,-0x10(%ebp)
    cnt = vcprintf(fmt, ap);
  1004db:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1004de:	83 ec 08             	sub    $0x8,%esp
  1004e1:	50                   	push   %eax
  1004e2:	ff 75 08             	pushl  0x8(%ebp)
  1004e5:	e8 bc ff ff ff       	call   1004a6 <vcprintf>
  1004ea:	83 c4 10             	add    $0x10,%esp
  1004ed:	89 45 f4             	mov    %eax,-0xc(%ebp)
    va_end(ap);
    return cnt;
  1004f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  1004f3:	c9                   	leave  
  1004f4:	c3                   	ret    

001004f5 <cputchar>:

/* cputchar - writes a single character to stdout */
void
cputchar(int c) {
  1004f5:	55                   	push   %ebp
  1004f6:	89 e5                	mov    %esp,%ebp
  1004f8:	83 ec 08             	sub    $0x8,%esp
    cons_putc(c);
  1004fb:	83 ec 0c             	sub    $0xc,%esp
  1004fe:	ff 75 08             	pushl  0x8(%ebp)
  100501:	e8 cb 1e 00 00       	call   1023d1 <cons_putc>
  100506:	83 c4 10             	add    $0x10,%esp
}
  100509:	90                   	nop
  10050a:	c9                   	leave  
  10050b:	c3                   	ret    

0010050c <cputs>:
/* *
 * cputs- writes the string pointed by @str to stdout and
 * appends a newline character.
 * */
int
cputs(const char *str) {
  10050c:	55                   	push   %ebp
  10050d:	89 e5                	mov    %esp,%ebp
  10050f:	83 ec 18             	sub    $0x18,%esp
    int cnt = 0;
  100512:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    char c;
    while ((c = *str ++) != '\0') {
  100519:	eb 14                	jmp    10052f <cputs+0x23>
        cputch(c, &cnt);
  10051b:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
  10051f:	83 ec 08             	sub    $0x8,%esp
  100522:	8d 55 f0             	lea    -0x10(%ebp),%edx
  100525:	52                   	push   %edx
  100526:	50                   	push   %eax
  100527:	e8 56 ff ff ff       	call   100482 <cputch>
  10052c:	83 c4 10             	add    $0x10,%esp
 * */
int
cputs(const char *str) {
    int cnt = 0;
    char c;
    while ((c = *str ++) != '\0') {
  10052f:	8b 45 08             	mov    0x8(%ebp),%eax
  100532:	8d 50 01             	lea    0x1(%eax),%edx
  100535:	89 55 08             	mov    %edx,0x8(%ebp)
  100538:	0f b6 00             	movzbl (%eax),%eax
  10053b:	88 45 f7             	mov    %al,-0x9(%ebp)
  10053e:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
  100542:	75 d7                	jne    10051b <cputs+0xf>
        cputch(c, &cnt);
    }
    cputch('\n', &cnt);
  100544:	83 ec 08             	sub    $0x8,%esp
  100547:	8d 45 f0             	lea    -0x10(%ebp),%eax
  10054a:	50                   	push   %eax
  10054b:	6a 0a                	push   $0xa
  10054d:	e8 30 ff ff ff       	call   100482 <cputch>
  100552:	83 c4 10             	add    $0x10,%esp
    return cnt;
  100555:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
  100558:	c9                   	leave  
  100559:	c3                   	ret    

0010055a <getchar>:

/* getchar - reads a single non-zero character from stdin */
int
getchar(void) {
  10055a:	55                   	push   %ebp
  10055b:	89 e5                	mov    %esp,%ebp
  10055d:	83 ec 18             	sub    $0x18,%esp
    int c;
    while ((c = cons_getc()) == 0)
  100560:	e8 9c 1e 00 00       	call   102401 <cons_getc>
  100565:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100568:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  10056c:	74 f2                	je     100560 <getchar+0x6>
        /* do nothing */;
    return c;
  10056e:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  100571:	c9                   	leave  
  100572:	c3                   	ret    

00100573 <readline>:
 * The readline() function returns the text of the line read. If some errors
 * are happened, NULL is returned. The return value is a global variable,
 * thus it should be copied before it is used.
 * */
char *
readline(const char *prompt) {
  100573:	55                   	push   %ebp
  100574:	89 e5                	mov    %esp,%ebp
  100576:	83 ec 18             	sub    $0x18,%esp
    if (prompt != NULL) {
  100579:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10057d:	74 13                	je     100592 <readline+0x1f>
        cprintf("%s", prompt);
  10057f:	83 ec 08             	sub    $0x8,%esp
  100582:	ff 75 08             	pushl  0x8(%ebp)
  100585:	68 a1 41 10 00       	push   $0x1041a1
  10058a:	e8 40 ff ff ff       	call   1004cf <cprintf>
  10058f:	83 c4 10             	add    $0x10,%esp
    }
    int i = 0, c;
  100592:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    while (1) {
        c = getchar();
  100599:	e8 bc ff ff ff       	call   10055a <getchar>
  10059e:	89 45 f0             	mov    %eax,-0x10(%ebp)
        if (c < 0) {
  1005a1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  1005a5:	79 0a                	jns    1005b1 <readline+0x3e>
            return NULL;
  1005a7:	b8 00 00 00 00       	mov    $0x0,%eax
  1005ac:	e9 82 00 00 00       	jmp    100633 <readline+0xc0>
        }
        else if (c >= ' ' && i < BUFSIZE - 1) {
  1005b1:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
  1005b5:	7e 2b                	jle    1005e2 <readline+0x6f>
  1005b7:	81 7d f4 fe 03 00 00 	cmpl   $0x3fe,-0xc(%ebp)
  1005be:	7f 22                	jg     1005e2 <readline+0x6f>
            cputchar(c);
  1005c0:	83 ec 0c             	sub    $0xc,%esp
  1005c3:	ff 75 f0             	pushl  -0x10(%ebp)
  1005c6:	e8 2a ff ff ff       	call   1004f5 <cputchar>
  1005cb:	83 c4 10             	add    $0x10,%esp
            buf[i ++] = c;
  1005ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1005d1:	8d 50 01             	lea    0x1(%eax),%edx
  1005d4:	89 55 f4             	mov    %edx,-0xc(%ebp)
  1005d7:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1005da:	88 90 a0 0a 11 00    	mov    %dl,0x110aa0(%eax)
  1005e0:	eb 4c                	jmp    10062e <readline+0xbb>
        }
        else if (c == '\b' && i > 0) {
  1005e2:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
  1005e6:	75 1a                	jne    100602 <readline+0x8f>
  1005e8:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1005ec:	7e 14                	jle    100602 <readline+0x8f>
            cputchar(c);
  1005ee:	83 ec 0c             	sub    $0xc,%esp
  1005f1:	ff 75 f0             	pushl  -0x10(%ebp)
  1005f4:	e8 fc fe ff ff       	call   1004f5 <cputchar>
  1005f9:	83 c4 10             	add    $0x10,%esp
            i --;
  1005fc:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
  100600:	eb 2c                	jmp    10062e <readline+0xbb>
        }
        else if (c == '\n' || c == '\r') {
  100602:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
  100606:	74 06                	je     10060e <readline+0x9b>
  100608:	83 7d f0 0d          	cmpl   $0xd,-0x10(%ebp)
  10060c:	75 8b                	jne    100599 <readline+0x26>
            cputchar(c);
  10060e:	83 ec 0c             	sub    $0xc,%esp
  100611:	ff 75 f0             	pushl  -0x10(%ebp)
  100614:	e8 dc fe ff ff       	call   1004f5 <cputchar>
  100619:	83 c4 10             	add    $0x10,%esp
            buf[i] = '\0';
  10061c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10061f:	05 a0 0a 11 00       	add    $0x110aa0,%eax
  100624:	c6 00 00             	movb   $0x0,(%eax)
            return buf;
  100627:	b8 a0 0a 11 00       	mov    $0x110aa0,%eax
  10062c:	eb 05                	jmp    100633 <readline+0xc0>
        }
    }
  10062e:	e9 66 ff ff ff       	jmp    100599 <readline+0x26>
}
  100633:	c9                   	leave  
  100634:	c3                   	ret    

00100635 <__panic>:
/* *
 * __panic - __panic is called on unresolvable fatal errors. it prints
 * "panic: 'message'", and then enters the kernel monitor.
 * */
void
__panic(const char *file, int line, const char *fmt, ...) {
  100635:	55                   	push   %ebp
  100636:	89 e5                	mov    %esp,%ebp
  100638:	83 ec 18             	sub    $0x18,%esp
    if (is_panic) {
  10063b:	a1 a0 0e 11 00       	mov    0x110ea0,%eax
  100640:	85 c0                	test   %eax,%eax
  100642:	75 4a                	jne    10068e <__panic+0x59>
        goto panic_dead;
    }
    is_panic = 1;
  100644:	c7 05 a0 0e 11 00 01 	movl   $0x1,0x110ea0
  10064b:	00 00 00 

    // print the 'message'
    va_list ap;
    va_start(ap, fmt);
  10064e:	8d 45 14             	lea    0x14(%ebp),%eax
  100651:	89 45 f4             	mov    %eax,-0xc(%ebp)
    cprintf("kernel panic at %s:%d:\n    ", file, line);
  100654:	83 ec 04             	sub    $0x4,%esp
  100657:	ff 75 0c             	pushl  0xc(%ebp)
  10065a:	ff 75 08             	pushl  0x8(%ebp)
  10065d:	68 a4 41 10 00       	push   $0x1041a4
  100662:	e8 68 fe ff ff       	call   1004cf <cprintf>
  100667:	83 c4 10             	add    $0x10,%esp
    vcprintf(fmt, ap);
  10066a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10066d:	83 ec 08             	sub    $0x8,%esp
  100670:	50                   	push   %eax
  100671:	ff 75 10             	pushl  0x10(%ebp)
  100674:	e8 2d fe ff ff       	call   1004a6 <vcprintf>
  100679:	83 c4 10             	add    $0x10,%esp
    cprintf("\n");
  10067c:	83 ec 0c             	sub    $0xc,%esp
  10067f:	68 c0 41 10 00       	push   $0x1041c0
  100684:	e8 46 fe ff ff       	call   1004cf <cprintf>
  100689:	83 c4 10             	add    $0x10,%esp
  10068c:	eb 01                	jmp    10068f <__panic+0x5a>
 * "panic: 'message'", and then enters the kernel monitor.
 * */
void
__panic(const char *file, int line, const char *fmt, ...) {
    if (is_panic) {
        goto panic_dead;
  10068e:	90                   	nop
    vcprintf(fmt, ap);
    cprintf("\n");
    va_end(ap);

panic_dead:
    intr_disable();
  10068f:	e8 93 1f 00 00       	call   102627 <intr_disable>
    while (1) {
        monitor(NULL);
  100694:	83 ec 0c             	sub    $0xc,%esp
  100697:	6a 00                	push   $0x0
  100699:	e8 83 0e 00 00       	call   101521 <monitor>
  10069e:	83 c4 10             	add    $0x10,%esp
    }
  1006a1:	eb f1                	jmp    100694 <__panic+0x5f>

001006a3 <__warn>:
}

/* __warn - like panic, but don't */
void
__warn(const char *file, int line, const char *fmt, ...) {
  1006a3:	55                   	push   %ebp
  1006a4:	89 e5                	mov    %esp,%ebp
  1006a6:	83 ec 18             	sub    $0x18,%esp
    va_list ap;
    va_start(ap, fmt);
  1006a9:	8d 45 14             	lea    0x14(%ebp),%eax
  1006ac:	89 45 f4             	mov    %eax,-0xc(%ebp)
    cprintf("kernel warning at %s:%d:\n    ", file, line);
  1006af:	83 ec 04             	sub    $0x4,%esp
  1006b2:	ff 75 0c             	pushl  0xc(%ebp)
  1006b5:	ff 75 08             	pushl  0x8(%ebp)
  1006b8:	68 c2 41 10 00       	push   $0x1041c2
  1006bd:	e8 0d fe ff ff       	call   1004cf <cprintf>
  1006c2:	83 c4 10             	add    $0x10,%esp
    vcprintf(fmt, ap);
  1006c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1006c8:	83 ec 08             	sub    $0x8,%esp
  1006cb:	50                   	push   %eax
  1006cc:	ff 75 10             	pushl  0x10(%ebp)
  1006cf:	e8 d2 fd ff ff       	call   1004a6 <vcprintf>
  1006d4:	83 c4 10             	add    $0x10,%esp
    cprintf("\n");
  1006d7:	83 ec 0c             	sub    $0xc,%esp
  1006da:	68 c0 41 10 00       	push   $0x1041c0
  1006df:	e8 eb fd ff ff       	call   1004cf <cprintf>
  1006e4:	83 c4 10             	add    $0x10,%esp
    va_end(ap);
}
  1006e7:	90                   	nop
  1006e8:	c9                   	leave  
  1006e9:	c3                   	ret    

001006ea <is_kernel_panic>:

bool
is_kernel_panic(void) {
  1006ea:	55                   	push   %ebp
  1006eb:	89 e5                	mov    %esp,%ebp
    return is_panic;
  1006ed:	a1 a0 0e 11 00       	mov    0x110ea0,%eax
}
  1006f2:	5d                   	pop    %ebp
  1006f3:	c3                   	ret    

001006f4 <__intr_save>:
#include <x86.h>
#include <intr.h>
#include <mmu.h>

static inline bool
__intr_save(void) {
  1006f4:	55                   	push   %ebp
  1006f5:	89 e5                	mov    %esp,%ebp
  1006f7:	83 ec 18             	sub    $0x18,%esp
}

static inline uint32_t
read_eflags(void) {
    uint32_t eflags;
    asm volatile ("pushfl; popl %0" : "=r" (eflags));
  1006fa:	9c                   	pushf  
  1006fb:	58                   	pop    %eax
  1006fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
    return eflags;
  1006ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
    if (read_eflags() & FL_IF) {
  100702:	25 00 02 00 00       	and    $0x200,%eax
  100707:	85 c0                	test   %eax,%eax
  100709:	74 0c                	je     100717 <__intr_save+0x23>
        intr_disable();
  10070b:	e8 17 1f 00 00       	call   102627 <intr_disable>
        return 1;
  100710:	b8 01 00 00 00       	mov    $0x1,%eax
  100715:	eb 05                	jmp    10071c <__intr_save+0x28>
    }
    return 0;
  100717:	b8 00 00 00 00       	mov    $0x0,%eax
}
  10071c:	c9                   	leave  
  10071d:	c3                   	ret    

0010071e <__intr_restore>:

static inline void
__intr_restore(bool flag) {
  10071e:	55                   	push   %ebp
  10071f:	89 e5                	mov    %esp,%ebp
  100721:	83 ec 08             	sub    $0x8,%esp
    if (flag) {
  100724:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  100728:	74 05                	je     10072f <__intr_restore+0x11>
        intr_enable();
  10072a:	e8 f1 1e 00 00       	call   102620 <intr_enable>
    }
}
  10072f:	90                   	nop
  100730:	c9                   	leave  
  100731:	c3                   	ret    

00100732 <stab_binsearch>:
 *      stab_binsearch(stabs, &left, &right, N_SO, 0xf0100184);
 * will exit setting left = 118, right = 554.
 * */
static void
stab_binsearch(const struct stab *stabs, int *region_left, int *region_right,
           int type, uintptr_t addr) {
  100732:	55                   	push   %ebp
  100733:	89 e5                	mov    %esp,%ebp
  100735:	83 ec 20             	sub    $0x20,%esp
    int l = *region_left, r = *region_right, any_matches = 0;
  100738:	8b 45 0c             	mov    0xc(%ebp),%eax
  10073b:	8b 00                	mov    (%eax),%eax
  10073d:	89 45 fc             	mov    %eax,-0x4(%ebp)
  100740:	8b 45 10             	mov    0x10(%ebp),%eax
  100743:	8b 00                	mov    (%eax),%eax
  100745:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100748:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)

    while (l <= r) {
  10074f:	e9 d2 00 00 00       	jmp    100826 <stab_binsearch+0xf4>
        int true_m = (l + r) / 2, m = true_m;
  100754:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100757:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10075a:	01 d0                	add    %edx,%eax
  10075c:	89 c2                	mov    %eax,%edx
  10075e:	c1 ea 1f             	shr    $0x1f,%edx
  100761:	01 d0                	add    %edx,%eax
  100763:	d1 f8                	sar    %eax
  100765:	89 45 ec             	mov    %eax,-0x14(%ebp)
  100768:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10076b:	89 45 f0             	mov    %eax,-0x10(%ebp)

        // search for earliest stab with right type
        while (m >= l && stabs[m].n_type != type) {
  10076e:	eb 04                	jmp    100774 <stab_binsearch+0x42>
            m --;
  100770:	83 6d f0 01          	subl   $0x1,-0x10(%ebp)

    while (l <= r) {
        int true_m = (l + r) / 2, m = true_m;

        // search for earliest stab with right type
        while (m >= l && stabs[m].n_type != type) {
  100774:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100777:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  10077a:	7c 1f                	jl     10079b <stab_binsearch+0x69>
  10077c:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10077f:	89 d0                	mov    %edx,%eax
  100781:	01 c0                	add    %eax,%eax
  100783:	01 d0                	add    %edx,%eax
  100785:	c1 e0 02             	shl    $0x2,%eax
  100788:	89 c2                	mov    %eax,%edx
  10078a:	8b 45 08             	mov    0x8(%ebp),%eax
  10078d:	01 d0                	add    %edx,%eax
  10078f:	0f b6 40 04          	movzbl 0x4(%eax),%eax
  100793:	0f b6 c0             	movzbl %al,%eax
  100796:	3b 45 14             	cmp    0x14(%ebp),%eax
  100799:	75 d5                	jne    100770 <stab_binsearch+0x3e>
            m --;
        }
        if (m < l) {    // no match in [l, m]
  10079b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10079e:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  1007a1:	7d 0b                	jge    1007ae <stab_binsearch+0x7c>
            l = true_m + 1;
  1007a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1007a6:	83 c0 01             	add    $0x1,%eax
  1007a9:	89 45 fc             	mov    %eax,-0x4(%ebp)
            continue;
  1007ac:	eb 78                	jmp    100826 <stab_binsearch+0xf4>
        }

        // actual binary search
        any_matches = 1;
  1007ae:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
        if (stabs[m].n_value < addr) {
  1007b5:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1007b8:	89 d0                	mov    %edx,%eax
  1007ba:	01 c0                	add    %eax,%eax
  1007bc:	01 d0                	add    %edx,%eax
  1007be:	c1 e0 02             	shl    $0x2,%eax
  1007c1:	89 c2                	mov    %eax,%edx
  1007c3:	8b 45 08             	mov    0x8(%ebp),%eax
  1007c6:	01 d0                	add    %edx,%eax
  1007c8:	8b 40 08             	mov    0x8(%eax),%eax
  1007cb:	3b 45 18             	cmp    0x18(%ebp),%eax
  1007ce:	73 13                	jae    1007e3 <stab_binsearch+0xb1>
            *region_left = m;
  1007d0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1007d3:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1007d6:	89 10                	mov    %edx,(%eax)
            l = true_m + 1;
  1007d8:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1007db:	83 c0 01             	add    $0x1,%eax
  1007de:	89 45 fc             	mov    %eax,-0x4(%ebp)
  1007e1:	eb 43                	jmp    100826 <stab_binsearch+0xf4>
        } else if (stabs[m].n_value > addr) {
  1007e3:	8b 55 f0             	mov    -0x10(%ebp),%edx
  1007e6:	89 d0                	mov    %edx,%eax
  1007e8:	01 c0                	add    %eax,%eax
  1007ea:	01 d0                	add    %edx,%eax
  1007ec:	c1 e0 02             	shl    $0x2,%eax
  1007ef:	89 c2                	mov    %eax,%edx
  1007f1:	8b 45 08             	mov    0x8(%ebp),%eax
  1007f4:	01 d0                	add    %edx,%eax
  1007f6:	8b 40 08             	mov    0x8(%eax),%eax
  1007f9:	3b 45 18             	cmp    0x18(%ebp),%eax
  1007fc:	76 16                	jbe    100814 <stab_binsearch+0xe2>
            *region_right = m - 1;
  1007fe:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100801:	8d 50 ff             	lea    -0x1(%eax),%edx
  100804:	8b 45 10             	mov    0x10(%ebp),%eax
  100807:	89 10                	mov    %edx,(%eax)
            r = m - 1;
  100809:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10080c:	83 e8 01             	sub    $0x1,%eax
  10080f:	89 45 f8             	mov    %eax,-0x8(%ebp)
  100812:	eb 12                	jmp    100826 <stab_binsearch+0xf4>
        } else {
            // exact match for 'addr', but continue loop to find
            // *region_right
            *region_left = m;
  100814:	8b 45 0c             	mov    0xc(%ebp),%eax
  100817:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10081a:	89 10                	mov    %edx,(%eax)
            l = m;
  10081c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10081f:	89 45 fc             	mov    %eax,-0x4(%ebp)
            addr ++;
  100822:	83 45 18 01          	addl   $0x1,0x18(%ebp)
static void
stab_binsearch(const struct stab *stabs, int *region_left, int *region_right,
           int type, uintptr_t addr) {
    int l = *region_left, r = *region_right, any_matches = 0;

    while (l <= r) {
  100826:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100829:	3b 45 f8             	cmp    -0x8(%ebp),%eax
  10082c:	0f 8e 22 ff ff ff    	jle    100754 <stab_binsearch+0x22>
            l = m;
            addr ++;
        }
    }

    if (!any_matches) {
  100832:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100836:	75 0f                	jne    100847 <stab_binsearch+0x115>
        *region_right = *region_left - 1;
  100838:	8b 45 0c             	mov    0xc(%ebp),%eax
  10083b:	8b 00                	mov    (%eax),%eax
  10083d:	8d 50 ff             	lea    -0x1(%eax),%edx
  100840:	8b 45 10             	mov    0x10(%ebp),%eax
  100843:	89 10                	mov    %edx,(%eax)
        l = *region_right;
        for (; l > *region_left && stabs[l].n_type != type; l --)
            /* do nothing */;
        *region_left = l;
    }
}
  100845:	eb 3f                	jmp    100886 <stab_binsearch+0x154>
    if (!any_matches) {
        *region_right = *region_left - 1;
    }
    else {
        // find rightmost region containing 'addr'
        l = *region_right;
  100847:	8b 45 10             	mov    0x10(%ebp),%eax
  10084a:	8b 00                	mov    (%eax),%eax
  10084c:	89 45 fc             	mov    %eax,-0x4(%ebp)
        for (; l > *region_left && stabs[l].n_type != type; l --)
  10084f:	eb 04                	jmp    100855 <stab_binsearch+0x123>
  100851:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
  100855:	8b 45 0c             	mov    0xc(%ebp),%eax
  100858:	8b 00                	mov    (%eax),%eax
  10085a:	3b 45 fc             	cmp    -0x4(%ebp),%eax
  10085d:	7d 1f                	jge    10087e <stab_binsearch+0x14c>
  10085f:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100862:	89 d0                	mov    %edx,%eax
  100864:	01 c0                	add    %eax,%eax
  100866:	01 d0                	add    %edx,%eax
  100868:	c1 e0 02             	shl    $0x2,%eax
  10086b:	89 c2                	mov    %eax,%edx
  10086d:	8b 45 08             	mov    0x8(%ebp),%eax
  100870:	01 d0                	add    %edx,%eax
  100872:	0f b6 40 04          	movzbl 0x4(%eax),%eax
  100876:	0f b6 c0             	movzbl %al,%eax
  100879:	3b 45 14             	cmp    0x14(%ebp),%eax
  10087c:	75 d3                	jne    100851 <stab_binsearch+0x11f>
            /* do nothing */;
        *region_left = l;
  10087e:	8b 45 0c             	mov    0xc(%ebp),%eax
  100881:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100884:	89 10                	mov    %edx,(%eax)
    }
}
  100886:	90                   	nop
  100887:	c9                   	leave  
  100888:	c3                   	ret    

00100889 <debuginfo_eip>:
 * the specified instruction address, @addr.  Returns 0 if information
 * was found, and negative if not.  But even if it returns negative it
 * has stored some information into '*info'.
 * */
int
debuginfo_eip(uintptr_t addr, struct eipdebuginfo *info) {
  100889:	55                   	push   %ebp
  10088a:	89 e5                	mov    %esp,%ebp
  10088c:	83 ec 38             	sub    $0x38,%esp
    const struct stab *stabs, *stab_end;
    const char *stabstr, *stabstr_end;

    info->eip_file = "<unknown>";
  10088f:	8b 45 0c             	mov    0xc(%ebp),%eax
  100892:	c7 00 e0 41 10 00    	movl   $0x1041e0,(%eax)
    info->eip_line = 0;
  100898:	8b 45 0c             	mov    0xc(%ebp),%eax
  10089b:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    info->eip_fn_name = "<unknown>";
  1008a2:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008a5:	c7 40 08 e0 41 10 00 	movl   $0x1041e0,0x8(%eax)
    info->eip_fn_namelen = 9;
  1008ac:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008af:	c7 40 0c 09 00 00 00 	movl   $0x9,0xc(%eax)
    info->eip_fn_addr = addr;
  1008b6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008b9:	8b 55 08             	mov    0x8(%ebp),%edx
  1008bc:	89 50 10             	mov    %edx,0x10(%eax)
    info->eip_fn_narg = 0;
  1008bf:	8b 45 0c             	mov    0xc(%ebp),%eax
  1008c2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)

    stabs = __STAB_BEGIN__;
  1008c9:	c7 45 f4 0c 50 10 00 	movl   $0x10500c,-0xc(%ebp)
    stab_end = __STAB_END__;
  1008d0:	c7 45 f0 0c da 10 00 	movl   $0x10da0c,-0x10(%ebp)
    stabstr = __STABSTR_BEGIN__;
  1008d7:	c7 45 ec 0d da 10 00 	movl   $0x10da0d,-0x14(%ebp)
    stabstr_end = __STABSTR_END__;
  1008de:	c7 45 e8 c8 fb 10 00 	movl   $0x10fbc8,-0x18(%ebp)

    // String table validity checks
    if (stabstr_end <= stabstr || stabstr_end[-1] != 0) {
  1008e5:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1008e8:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  1008eb:	76 0d                	jbe    1008fa <debuginfo_eip+0x71>
  1008ed:	8b 45 e8             	mov    -0x18(%ebp),%eax
  1008f0:	83 e8 01             	sub    $0x1,%eax
  1008f3:	0f b6 00             	movzbl (%eax),%eax
  1008f6:	84 c0                	test   %al,%al
  1008f8:	74 0a                	je     100904 <debuginfo_eip+0x7b>
        return -1;
  1008fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  1008ff:	e9 91 02 00 00       	jmp    100b95 <debuginfo_eip+0x30c>
    // 'eip'.  First, we find the basic source file containing 'eip'.
    // Then, we look in that source file for the function.  Then we look
    // for the line number.

    // Search the entire set of stabs for the source file (type N_SO).
    int lfile = 0, rfile = (stab_end - stabs) - 1;
  100904:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  10090b:	8b 55 f0             	mov    -0x10(%ebp),%edx
  10090e:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100911:	29 c2                	sub    %eax,%edx
  100913:	89 d0                	mov    %edx,%eax
  100915:	c1 f8 02             	sar    $0x2,%eax
  100918:	69 c0 ab aa aa aa    	imul   $0xaaaaaaab,%eax,%eax
  10091e:	83 e8 01             	sub    $0x1,%eax
  100921:	89 45 e0             	mov    %eax,-0x20(%ebp)
    stab_binsearch(stabs, &lfile, &rfile, N_SO, addr);
  100924:	ff 75 08             	pushl  0x8(%ebp)
  100927:	6a 64                	push   $0x64
  100929:	8d 45 e0             	lea    -0x20(%ebp),%eax
  10092c:	50                   	push   %eax
  10092d:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  100930:	50                   	push   %eax
  100931:	ff 75 f4             	pushl  -0xc(%ebp)
  100934:	e8 f9 fd ff ff       	call   100732 <stab_binsearch>
  100939:	83 c4 14             	add    $0x14,%esp
    if (lfile == 0)
  10093c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10093f:	85 c0                	test   %eax,%eax
  100941:	75 0a                	jne    10094d <debuginfo_eip+0xc4>
        return -1;
  100943:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100948:	e9 48 02 00 00       	jmp    100b95 <debuginfo_eip+0x30c>

    // Search within that file's stabs for the function definition
    // (N_FUN).
    int lfun = lfile, rfun = rfile;
  10094d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100950:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100953:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100956:	89 45 d8             	mov    %eax,-0x28(%ebp)
    int lline, rline;
    stab_binsearch(stabs, &lfun, &rfun, N_FUN, addr);
  100959:	ff 75 08             	pushl  0x8(%ebp)
  10095c:	6a 24                	push   $0x24
  10095e:	8d 45 d8             	lea    -0x28(%ebp),%eax
  100961:	50                   	push   %eax
  100962:	8d 45 dc             	lea    -0x24(%ebp),%eax
  100965:	50                   	push   %eax
  100966:	ff 75 f4             	pushl  -0xc(%ebp)
  100969:	e8 c4 fd ff ff       	call   100732 <stab_binsearch>
  10096e:	83 c4 14             	add    $0x14,%esp

    if (lfun <= rfun) {
  100971:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100974:	8b 45 d8             	mov    -0x28(%ebp),%eax
  100977:	39 c2                	cmp    %eax,%edx
  100979:	7f 7c                	jg     1009f7 <debuginfo_eip+0x16e>
        // stabs[lfun] points to the function name
        // in the string table, but check bounds just in case.
        if (stabs[lfun].n_strx < stabstr_end - stabstr) {
  10097b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  10097e:	89 c2                	mov    %eax,%edx
  100980:	89 d0                	mov    %edx,%eax
  100982:	01 c0                	add    %eax,%eax
  100984:	01 d0                	add    %edx,%eax
  100986:	c1 e0 02             	shl    $0x2,%eax
  100989:	89 c2                	mov    %eax,%edx
  10098b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10098e:	01 d0                	add    %edx,%eax
  100990:	8b 00                	mov    (%eax),%eax
  100992:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  100995:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100998:	29 d1                	sub    %edx,%ecx
  10099a:	89 ca                	mov    %ecx,%edx
  10099c:	39 d0                	cmp    %edx,%eax
  10099e:	73 22                	jae    1009c2 <debuginfo_eip+0x139>
            info->eip_fn_name = stabstr + stabs[lfun].n_strx;
  1009a0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1009a3:	89 c2                	mov    %eax,%edx
  1009a5:	89 d0                	mov    %edx,%eax
  1009a7:	01 c0                	add    %eax,%eax
  1009a9:	01 d0                	add    %edx,%eax
  1009ab:	c1 e0 02             	shl    $0x2,%eax
  1009ae:	89 c2                	mov    %eax,%edx
  1009b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009b3:	01 d0                	add    %edx,%eax
  1009b5:	8b 10                	mov    (%eax),%edx
  1009b7:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1009ba:	01 c2                	add    %eax,%edx
  1009bc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009bf:	89 50 08             	mov    %edx,0x8(%eax)
        }
        info->eip_fn_addr = stabs[lfun].n_value;
  1009c2:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1009c5:	89 c2                	mov    %eax,%edx
  1009c7:	89 d0                	mov    %edx,%eax
  1009c9:	01 c0                	add    %eax,%eax
  1009cb:	01 d0                	add    %edx,%eax
  1009cd:	c1 e0 02             	shl    $0x2,%eax
  1009d0:	89 c2                	mov    %eax,%edx
  1009d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1009d5:	01 d0                	add    %edx,%eax
  1009d7:	8b 50 08             	mov    0x8(%eax),%edx
  1009da:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009dd:	89 50 10             	mov    %edx,0x10(%eax)
        addr -= info->eip_fn_addr;
  1009e0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009e3:	8b 40 10             	mov    0x10(%eax),%eax
  1009e6:	29 45 08             	sub    %eax,0x8(%ebp)
        // Search within the function definition for the line number.
        lline = lfun;
  1009e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1009ec:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        rline = rfun;
  1009ef:	8b 45 d8             	mov    -0x28(%ebp),%eax
  1009f2:	89 45 d0             	mov    %eax,-0x30(%ebp)
  1009f5:	eb 15                	jmp    100a0c <debuginfo_eip+0x183>
    } else {
        // Couldn't find function stab!  Maybe we're in an assembly
        // file.  Search the whole file for the line number.
        info->eip_fn_addr = addr;
  1009f7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1009fa:	8b 55 08             	mov    0x8(%ebp),%edx
  1009fd:	89 50 10             	mov    %edx,0x10(%eax)
        lline = lfile;
  100a00:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100a03:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        rline = rfile;
  100a06:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100a09:	89 45 d0             	mov    %eax,-0x30(%ebp)
    }
    info->eip_fn_namelen = strfind(info->eip_fn_name, ':') - info->eip_fn_name;
  100a0c:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a0f:	8b 40 08             	mov    0x8(%eax),%eax
  100a12:	83 ec 08             	sub    $0x8,%esp
  100a15:	6a 3a                	push   $0x3a
  100a17:	50                   	push   %eax
  100a18:	e8 2d 2e 00 00       	call   10384a <strfind>
  100a1d:	83 c4 10             	add    $0x10,%esp
  100a20:	89 c2                	mov    %eax,%edx
  100a22:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a25:	8b 40 08             	mov    0x8(%eax),%eax
  100a28:	29 c2                	sub    %eax,%edx
  100a2a:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a2d:	89 50 0c             	mov    %edx,0xc(%eax)

    // Search within [lline, rline] for the line number stab.
    // If found, set info->eip_line to the right line number.
    // If not found, return -1.
    stab_binsearch(stabs, &lline, &rline, N_SLINE, addr);
  100a30:	83 ec 0c             	sub    $0xc,%esp
  100a33:	ff 75 08             	pushl  0x8(%ebp)
  100a36:	6a 44                	push   $0x44
  100a38:	8d 45 d0             	lea    -0x30(%ebp),%eax
  100a3b:	50                   	push   %eax
  100a3c:	8d 45 d4             	lea    -0x2c(%ebp),%eax
  100a3f:	50                   	push   %eax
  100a40:	ff 75 f4             	pushl  -0xc(%ebp)
  100a43:	e8 ea fc ff ff       	call   100732 <stab_binsearch>
  100a48:	83 c4 20             	add    $0x20,%esp
    if (lline <= rline) {
  100a4b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100a4e:	8b 45 d0             	mov    -0x30(%ebp),%eax
  100a51:	39 c2                	cmp    %eax,%edx
  100a53:	7f 24                	jg     100a79 <debuginfo_eip+0x1f0>
        info->eip_line = stabs[rline].n_desc;
  100a55:	8b 45 d0             	mov    -0x30(%ebp),%eax
  100a58:	89 c2                	mov    %eax,%edx
  100a5a:	89 d0                	mov    %edx,%eax
  100a5c:	01 c0                	add    %eax,%eax
  100a5e:	01 d0                	add    %edx,%eax
  100a60:	c1 e0 02             	shl    $0x2,%eax
  100a63:	89 c2                	mov    %eax,%edx
  100a65:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100a68:	01 d0                	add    %edx,%eax
  100a6a:	0f b7 40 06          	movzwl 0x6(%eax),%eax
  100a6e:	0f b7 d0             	movzwl %ax,%edx
  100a71:	8b 45 0c             	mov    0xc(%ebp),%eax
  100a74:	89 50 04             	mov    %edx,0x4(%eax)

    // Search backwards from the line number for the relevant filename stab.
    // We can't just use the "lfile" stab because inlined functions
    // can interpolate code from a different file!
    // Such included source files use the N_SOL stab type.
    while (lline >= lfile
  100a77:	eb 13                	jmp    100a8c <debuginfo_eip+0x203>
    // If not found, return -1.
    stab_binsearch(stabs, &lline, &rline, N_SLINE, addr);
    if (lline <= rline) {
        info->eip_line = stabs[rline].n_desc;
    } else {
        return -1;
  100a79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  100a7e:	e9 12 01 00 00       	jmp    100b95 <debuginfo_eip+0x30c>
    // can interpolate code from a different file!
    // Such included source files use the N_SOL stab type.
    while (lline >= lfile
           && stabs[lline].n_type != N_SOL
           && (stabs[lline].n_type != N_SO || !stabs[lline].n_value)) {
        lline --;
  100a83:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100a86:	83 e8 01             	sub    $0x1,%eax
  100a89:	89 45 d4             	mov    %eax,-0x2c(%ebp)

    // Search backwards from the line number for the relevant filename stab.
    // We can't just use the "lfile" stab because inlined functions
    // can interpolate code from a different file!
    // Such included source files use the N_SOL stab type.
    while (lline >= lfile
  100a8c:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100a8f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100a92:	39 c2                	cmp    %eax,%edx
  100a94:	7c 56                	jl     100aec <debuginfo_eip+0x263>
           && stabs[lline].n_type != N_SOL
  100a96:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100a99:	89 c2                	mov    %eax,%edx
  100a9b:	89 d0                	mov    %edx,%eax
  100a9d:	01 c0                	add    %eax,%eax
  100a9f:	01 d0                	add    %edx,%eax
  100aa1:	c1 e0 02             	shl    $0x2,%eax
  100aa4:	89 c2                	mov    %eax,%edx
  100aa6:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100aa9:	01 d0                	add    %edx,%eax
  100aab:	0f b6 40 04          	movzbl 0x4(%eax),%eax
  100aaf:	3c 84                	cmp    $0x84,%al
  100ab1:	74 39                	je     100aec <debuginfo_eip+0x263>
           && (stabs[lline].n_type != N_SO || !stabs[lline].n_value)) {
  100ab3:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100ab6:	89 c2                	mov    %eax,%edx
  100ab8:	89 d0                	mov    %edx,%eax
  100aba:	01 c0                	add    %eax,%eax
  100abc:	01 d0                	add    %edx,%eax
  100abe:	c1 e0 02             	shl    $0x2,%eax
  100ac1:	89 c2                	mov    %eax,%edx
  100ac3:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ac6:	01 d0                	add    %edx,%eax
  100ac8:	0f b6 40 04          	movzbl 0x4(%eax),%eax
  100acc:	3c 64                	cmp    $0x64,%al
  100ace:	75 b3                	jne    100a83 <debuginfo_eip+0x1fa>
  100ad0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100ad3:	89 c2                	mov    %eax,%edx
  100ad5:	89 d0                	mov    %edx,%eax
  100ad7:	01 c0                	add    %eax,%eax
  100ad9:	01 d0                	add    %edx,%eax
  100adb:	c1 e0 02             	shl    $0x2,%eax
  100ade:	89 c2                	mov    %eax,%edx
  100ae0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ae3:	01 d0                	add    %edx,%eax
  100ae5:	8b 40 08             	mov    0x8(%eax),%eax
  100ae8:	85 c0                	test   %eax,%eax
  100aea:	74 97                	je     100a83 <debuginfo_eip+0x1fa>
        lline --;
    }
    if (lline >= lfile && stabs[lline].n_strx < stabstr_end - stabstr) {
  100aec:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100aef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100af2:	39 c2                	cmp    %eax,%edx
  100af4:	7c 46                	jl     100b3c <debuginfo_eip+0x2b3>
  100af6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100af9:	89 c2                	mov    %eax,%edx
  100afb:	89 d0                	mov    %edx,%eax
  100afd:	01 c0                	add    %eax,%eax
  100aff:	01 d0                	add    %edx,%eax
  100b01:	c1 e0 02             	shl    $0x2,%eax
  100b04:	89 c2                	mov    %eax,%edx
  100b06:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100b09:	01 d0                	add    %edx,%eax
  100b0b:	8b 00                	mov    (%eax),%eax
  100b0d:	8b 4d e8             	mov    -0x18(%ebp),%ecx
  100b10:	8b 55 ec             	mov    -0x14(%ebp),%edx
  100b13:	29 d1                	sub    %edx,%ecx
  100b15:	89 ca                	mov    %ecx,%edx
  100b17:	39 d0                	cmp    %edx,%eax
  100b19:	73 21                	jae    100b3c <debuginfo_eip+0x2b3>
        info->eip_file = stabstr + stabs[lline].n_strx;
  100b1b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100b1e:	89 c2                	mov    %eax,%edx
  100b20:	89 d0                	mov    %edx,%eax
  100b22:	01 c0                	add    %eax,%eax
  100b24:	01 d0                	add    %edx,%eax
  100b26:	c1 e0 02             	shl    $0x2,%eax
  100b29:	89 c2                	mov    %eax,%edx
  100b2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100b2e:	01 d0                	add    %edx,%eax
  100b30:	8b 10                	mov    (%eax),%edx
  100b32:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100b35:	01 c2                	add    %eax,%edx
  100b37:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b3a:	89 10                	mov    %edx,(%eax)
    }

    // Set eip_fn_narg to the number of arguments taken by the function,
    // or 0 if there was no containing function.
    if (lfun < rfun) {
  100b3c:	8b 55 dc             	mov    -0x24(%ebp),%edx
  100b3f:	8b 45 d8             	mov    -0x28(%ebp),%eax
  100b42:	39 c2                	cmp    %eax,%edx
  100b44:	7d 4a                	jge    100b90 <debuginfo_eip+0x307>
        for (lline = lfun + 1;
  100b46:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100b49:	83 c0 01             	add    $0x1,%eax
  100b4c:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  100b4f:	eb 18                	jmp    100b69 <debuginfo_eip+0x2e0>
             lline < rfun && stabs[lline].n_type == N_PSYM;
             lline ++) {
            info->eip_fn_narg ++;
  100b51:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b54:	8b 40 14             	mov    0x14(%eax),%eax
  100b57:	8d 50 01             	lea    0x1(%eax),%edx
  100b5a:	8b 45 0c             	mov    0xc(%ebp),%eax
  100b5d:	89 50 14             	mov    %edx,0x14(%eax)
    // Set eip_fn_narg to the number of arguments taken by the function,
    // or 0 if there was no containing function.
    if (lfun < rfun) {
        for (lline = lfun + 1;
             lline < rfun && stabs[lline].n_type == N_PSYM;
             lline ++) {
  100b60:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100b63:	83 c0 01             	add    $0x1,%eax
  100b66:	89 45 d4             	mov    %eax,-0x2c(%ebp)

    // Set eip_fn_narg to the number of arguments taken by the function,
    // or 0 if there was no containing function.
    if (lfun < rfun) {
        for (lline = lfun + 1;
             lline < rfun && stabs[lline].n_type == N_PSYM;
  100b69:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  100b6c:	8b 45 d8             	mov    -0x28(%ebp),%eax
    }

    // Set eip_fn_narg to the number of arguments taken by the function,
    // or 0 if there was no containing function.
    if (lfun < rfun) {
        for (lline = lfun + 1;
  100b6f:	39 c2                	cmp    %eax,%edx
  100b71:	7d 1d                	jge    100b90 <debuginfo_eip+0x307>
             lline < rfun && stabs[lline].n_type == N_PSYM;
  100b73:	8b 45 d4             	mov    -0x2c(%ebp),%eax
  100b76:	89 c2                	mov    %eax,%edx
  100b78:	89 d0                	mov    %edx,%eax
  100b7a:	01 c0                	add    %eax,%eax
  100b7c:	01 d0                	add    %edx,%eax
  100b7e:	c1 e0 02             	shl    $0x2,%eax
  100b81:	89 c2                	mov    %eax,%edx
  100b83:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100b86:	01 d0                	add    %edx,%eax
  100b88:	0f b6 40 04          	movzbl 0x4(%eax),%eax
  100b8c:	3c a0                	cmp    $0xa0,%al
  100b8e:	74 c1                	je     100b51 <debuginfo_eip+0x2c8>
             lline ++) {
            info->eip_fn_narg ++;
        }
    }
    return 0;
  100b90:	b8 00 00 00 00       	mov    $0x0,%eax
}
  100b95:	c9                   	leave  
  100b96:	c3                   	ret    

00100b97 <print_kerninfo>:
 * print_kerninfo - print the information about kernel, including the location
 * of kernel entry, the start addresses of data and text segements, the start
 * address of free memory and how many memory that kernel has used.
 * */
void
print_kerninfo(void) {
  100b97:	55                   	push   %ebp
  100b98:	89 e5                	mov    %esp,%ebp
  100b9a:	83 ec 08             	sub    $0x8,%esp
    extern char etext[], edata[], end[], kern_init[];
    cprintf("Special kernel symbols:\n");
  100b9d:	83 ec 0c             	sub    $0xc,%esp
  100ba0:	68 ea 41 10 00       	push   $0x1041ea
  100ba5:	e8 25 f9 ff ff       	call   1004cf <cprintf>
  100baa:	83 c4 10             	add    $0x10,%esp
    cprintf("  entry  0x%08x (phys)\n", kern_init);
  100bad:	83 ec 08             	sub    $0x8,%esp
  100bb0:	68 00 00 10 00       	push   $0x100000
  100bb5:	68 03 42 10 00       	push   $0x104203
  100bba:	e8 10 f9 ff ff       	call   1004cf <cprintf>
  100bbf:	83 c4 10             	add    $0x10,%esp
    cprintf("  etext  0x%08x (phys)\n", etext);
  100bc2:	83 ec 08             	sub    $0x8,%esp
  100bc5:	68 6d 41 10 00       	push   $0x10416d
  100bca:	68 1b 42 10 00       	push   $0x10421b
  100bcf:	e8 fb f8 ff ff       	call   1004cf <cprintf>
  100bd4:	83 c4 10             	add    $0x10,%esp
    cprintf("  edata  0x%08x (phys)\n", edata);
  100bd7:	83 ec 08             	sub    $0x8,%esp
  100bda:	68 76 0a 11 00       	push   $0x110a76
  100bdf:	68 33 42 10 00       	push   $0x104233
  100be4:	e8 e6 f8 ff ff       	call   1004cf <cprintf>
  100be9:	83 c4 10             	add    $0x10,%esp
    cprintf("  end    0x%08x (phys)\n", end);
  100bec:	83 ec 08             	sub    $0x8,%esp
  100bef:	68 a0 1d 11 00       	push   $0x111da0
  100bf4:	68 4b 42 10 00       	push   $0x10424b
  100bf9:	e8 d1 f8 ff ff       	call   1004cf <cprintf>
  100bfe:	83 c4 10             	add    $0x10,%esp
    cprintf("Kernel executable memory footprint: %dKB\n", (end - kern_init + 1023)/1024);
  100c01:	b8 a0 1d 11 00       	mov    $0x111da0,%eax
  100c06:	05 ff 03 00 00       	add    $0x3ff,%eax
  100c0b:	ba 00 00 10 00       	mov    $0x100000,%edx
  100c10:	29 d0                	sub    %edx,%eax
  100c12:	8d 90 ff 03 00 00    	lea    0x3ff(%eax),%edx
  100c18:	85 c0                	test   %eax,%eax
  100c1a:	0f 48 c2             	cmovs  %edx,%eax
  100c1d:	c1 f8 0a             	sar    $0xa,%eax
  100c20:	83 ec 08             	sub    $0x8,%esp
  100c23:	50                   	push   %eax
  100c24:	68 64 42 10 00       	push   $0x104264
  100c29:	e8 a1 f8 ff ff       	call   1004cf <cprintf>
  100c2e:	83 c4 10             	add    $0x10,%esp
}
  100c31:	90                   	nop
  100c32:	c9                   	leave  
  100c33:	c3                   	ret    

00100c34 <print_debuginfo>:
/* *
 * print_debuginfo - read and print the stat information for the address @eip,
 * and info.eip_fn_addr should be the first address of the related function.
 * */
void
print_debuginfo(uintptr_t eip) {
  100c34:	55                   	push   %ebp
  100c35:	89 e5                	mov    %esp,%ebp
  100c37:	81 ec 28 01 00 00    	sub    $0x128,%esp
    struct eipdebuginfo info;
    if (debuginfo_eip(eip, &info) != 0) {
  100c3d:	83 ec 08             	sub    $0x8,%esp
  100c40:	8d 45 dc             	lea    -0x24(%ebp),%eax
  100c43:	50                   	push   %eax
  100c44:	ff 75 08             	pushl  0x8(%ebp)
  100c47:	e8 3d fc ff ff       	call   100889 <debuginfo_eip>
  100c4c:	83 c4 10             	add    $0x10,%esp
  100c4f:	85 c0                	test   %eax,%eax
  100c51:	74 15                	je     100c68 <print_debuginfo+0x34>
        cprintf("    <unknow>: -- 0x%08x --\n", eip);
  100c53:	83 ec 08             	sub    $0x8,%esp
  100c56:	ff 75 08             	pushl  0x8(%ebp)
  100c59:	68 8e 42 10 00       	push   $0x10428e
  100c5e:	e8 6c f8 ff ff       	call   1004cf <cprintf>
  100c63:	83 c4 10             	add    $0x10,%esp
        }
        fnname[j] = '\0';
        cprintf("    %s:%d: %s+%d\n", info.eip_file, info.eip_line,
                fnname, eip - info.eip_fn_addr);
    }
}
  100c66:	eb 65                	jmp    100ccd <print_debuginfo+0x99>
        cprintf("    <unknow>: -- 0x%08x --\n", eip);
    }
    else {
        char fnname[256];
        int j;
        for (j = 0; j < info.eip_fn_namelen; j ++) {
  100c68:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  100c6f:	eb 1c                	jmp    100c8d <print_debuginfo+0x59>
            fnname[j] = info.eip_fn_name[j];
  100c71:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100c74:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c77:	01 d0                	add    %edx,%eax
  100c79:	0f b6 00             	movzbl (%eax),%eax
  100c7c:	8d 8d dc fe ff ff    	lea    -0x124(%ebp),%ecx
  100c82:	8b 55 f4             	mov    -0xc(%ebp),%edx
  100c85:	01 ca                	add    %ecx,%edx
  100c87:	88 02                	mov    %al,(%edx)
        cprintf("    <unknow>: -- 0x%08x --\n", eip);
    }
    else {
        char fnname[256];
        int j;
        for (j = 0; j < info.eip_fn_namelen; j ++) {
  100c89:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  100c8d:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100c90:	3b 45 f4             	cmp    -0xc(%ebp),%eax
  100c93:	7f dc                	jg     100c71 <print_debuginfo+0x3d>
            fnname[j] = info.eip_fn_name[j];
        }
        fnname[j] = '\0';
  100c95:	8d 95 dc fe ff ff    	lea    -0x124(%ebp),%edx
  100c9b:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100c9e:	01 d0                	add    %edx,%eax
  100ca0:	c6 00 00             	movb   $0x0,(%eax)
        cprintf("    %s:%d: %s+%d\n", info.eip_file, info.eip_line,
                fnname, eip - info.eip_fn_addr);
  100ca3:	8b 45 ec             	mov    -0x14(%ebp),%eax
        int j;
        for (j = 0; j < info.eip_fn_namelen; j ++) {
            fnname[j] = info.eip_fn_name[j];
        }
        fnname[j] = '\0';
        cprintf("    %s:%d: %s+%d\n", info.eip_file, info.eip_line,
  100ca6:	8b 55 08             	mov    0x8(%ebp),%edx
  100ca9:	89 d1                	mov    %edx,%ecx
  100cab:	29 c1                	sub    %eax,%ecx
  100cad:	8b 55 e0             	mov    -0x20(%ebp),%edx
  100cb0:	8b 45 dc             	mov    -0x24(%ebp),%eax
  100cb3:	83 ec 0c             	sub    $0xc,%esp
  100cb6:	51                   	push   %ecx
  100cb7:	8d 8d dc fe ff ff    	lea    -0x124(%ebp),%ecx
  100cbd:	51                   	push   %ecx
  100cbe:	52                   	push   %edx
  100cbf:	50                   	push   %eax
  100cc0:	68 aa 42 10 00       	push   $0x1042aa
  100cc5:	e8 05 f8 ff ff       	call   1004cf <cprintf>
  100cca:	83 c4 20             	add    $0x20,%esp
                fnname, eip - info.eip_fn_addr);
    }
}
  100ccd:	90                   	nop
  100cce:	c9                   	leave  
  100ccf:	c3                   	ret    

00100cd0 <read_eip>:

static uint32_t read_eip(void) __attribute__((noinline));

static uint32_t
read_eip(void) {
  100cd0:	55                   	push   %ebp
  100cd1:	89 e5                	mov    %esp,%ebp
  100cd3:	83 ec 10             	sub    $0x10,%esp
    uint32_t eip;
    asm volatile("movl 4(%%ebp), %0" : "=r" (eip));
  100cd6:	8b 45 04             	mov    0x4(%ebp),%eax
  100cd9:	89 45 fc             	mov    %eax,-0x4(%ebp)
    return eip;
  100cdc:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  100cdf:	c9                   	leave  
  100ce0:	c3                   	ret    

00100ce1 <print_stackframe>:
 *
 * Note that, the length of ebp-chain is limited. In boot/bootasm.S, before jumping
 * to the kernel entry, the value of ebp has been set to zero, that's the boundary.
 * */
void
print_stackframe(void) {
  100ce1:	55                   	push   %ebp
  100ce2:	89 e5                	mov    %esp,%ebp
  100ce4:	83 ec 28             	sub    $0x28,%esp
}

static inline uint32_t
read_ebp(void) {
    uint32_t ebp;
    asm volatile ("movl %%ebp, %0" : "=r" (ebp));
  100ce7:	89 e8                	mov    %ebp,%eax
  100ce9:	89 45 e0             	mov    %eax,-0x20(%ebp)
    return ebp;
  100cec:	8b 45 e0             	mov    -0x20(%ebp),%eax
    uint32_t ebp = read_ebp(), eip = read_eip();
  100cef:	89 45 f4             	mov    %eax,-0xc(%ebp)
  100cf2:	e8 d9 ff ff ff       	call   100cd0 <read_eip>
  100cf7:	89 45 f0             	mov    %eax,-0x10(%ebp)

    int i, j;
    for (i = 0; ebp != 0 && i < STACKFRAME_DEPTH; i ++) {
  100cfa:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  100d01:	e9 8d 00 00 00       	jmp    100d93 <print_stackframe+0xb2>
        cprintf("ebp:0x%08x eip:0x%08x args:", ebp, eip);
  100d06:	83 ec 04             	sub    $0x4,%esp
  100d09:	ff 75 f0             	pushl  -0x10(%ebp)
  100d0c:	ff 75 f4             	pushl  -0xc(%ebp)
  100d0f:	68 bc 42 10 00       	push   $0x1042bc
  100d14:	e8 b6 f7 ff ff       	call   1004cf <cprintf>
  100d19:	83 c4 10             	add    $0x10,%esp
        uint32_t *args = (uint32_t *)ebp + 2;
  100d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d1f:	83 c0 08             	add    $0x8,%eax
  100d22:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        for (j = 0; j < 4; j ++) {
  100d25:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  100d2c:	eb 26                	jmp    100d54 <print_stackframe+0x73>
            cprintf("0x%08x ", args[j]);
  100d2e:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100d31:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  100d38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100d3b:	01 d0                	add    %edx,%eax
  100d3d:	8b 00                	mov    (%eax),%eax
  100d3f:	83 ec 08             	sub    $0x8,%esp
  100d42:	50                   	push   %eax
  100d43:	68 d8 42 10 00       	push   $0x1042d8
  100d48:	e8 82 f7 ff ff       	call   1004cf <cprintf>
  100d4d:	83 c4 10             	add    $0x10,%esp

    int i, j;
    for (i = 0; ebp != 0 && i < STACKFRAME_DEPTH; i ++) {
        cprintf("ebp:0x%08x eip:0x%08x args:", ebp, eip);
        uint32_t *args = (uint32_t *)ebp + 2;
        for (j = 0; j < 4; j ++) {
  100d50:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
  100d54:	83 7d e8 03          	cmpl   $0x3,-0x18(%ebp)
  100d58:	7e d4                	jle    100d2e <print_stackframe+0x4d>
            cprintf("0x%08x ", args[j]);
        }
        cprintf("\n");
  100d5a:	83 ec 0c             	sub    $0xc,%esp
  100d5d:	68 e0 42 10 00       	push   $0x1042e0
  100d62:	e8 68 f7 ff ff       	call   1004cf <cprintf>
  100d67:	83 c4 10             	add    $0x10,%esp
        print_debuginfo(eip - 1);
  100d6a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100d6d:	83 e8 01             	sub    $0x1,%eax
  100d70:	83 ec 0c             	sub    $0xc,%esp
  100d73:	50                   	push   %eax
  100d74:	e8 bb fe ff ff       	call   100c34 <print_debuginfo>
  100d79:	83 c4 10             	add    $0x10,%esp
        eip = ((uint32_t *)ebp)[1];
  100d7c:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d7f:	83 c0 04             	add    $0x4,%eax
  100d82:	8b 00                	mov    (%eax),%eax
  100d84:	89 45 f0             	mov    %eax,-0x10(%ebp)
        ebp = ((uint32_t *)ebp)[0];
  100d87:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100d8a:	8b 00                	mov    (%eax),%eax
  100d8c:	89 45 f4             	mov    %eax,-0xc(%ebp)
void
print_stackframe(void) {
    uint32_t ebp = read_ebp(), eip = read_eip();

    int i, j;
    for (i = 0; ebp != 0 && i < STACKFRAME_DEPTH; i ++) {
  100d8f:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  100d93:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  100d97:	74 0a                	je     100da3 <print_stackframe+0xc2>
  100d99:	83 7d ec 13          	cmpl   $0x13,-0x14(%ebp)
  100d9d:	0f 8e 63 ff ff ff    	jle    100d06 <print_stackframe+0x25>
        cprintf("\n");
        print_debuginfo(eip - 1);
        eip = ((uint32_t *)ebp)[1];
        ebp = ((uint32_t *)ebp)[0];
    }
}
  100da3:	90                   	nop
  100da4:	c9                   	leave  
  100da5:	c3                   	ret    

00100da6 <save_all_dr>:

static unsigned int local_dr_counter[MAX_DR_NUM];

/* save_all_dr - save all debug registers to memory and then disable them */
static void
save_all_dr(void) {
  100da6:	55                   	push   %ebp
  100da7:	89 e5                	mov    %esp,%ebp
  100da9:	83 ec 30             	sub    $0x30,%esp
    int i;
    for (i = 0; i < MAX_DR_NUM; i ++) {
  100dac:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100db3:	eb 61                	jmp    100e16 <save_all_dr+0x70>
        local_dr[i] = read_dr(i);
  100db5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100db8:	89 45 e8             	mov    %eax,-0x18(%ebp)
    asm volatile ("int $3");
}

static inline uint32_t
read_dr(unsigned regnum) {
    uint32_t value = 0;
  100dbb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    switch (regnum) {
  100dc2:	83 7d e8 07          	cmpl   $0x7,-0x18(%ebp)
  100dc6:	77 3d                	ja     100e05 <save_all_dr+0x5f>
  100dc8:	8b 45 e8             	mov    -0x18(%ebp),%eax
  100dcb:	c1 e0 02             	shl    $0x2,%eax
  100dce:	05 e4 42 10 00       	add    $0x1042e4,%eax
  100dd3:	8b 00                	mov    (%eax),%eax
  100dd5:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %%db0, %0" : "=r" (value)); break;
  100dd7:	0f 21 c0             	mov    %db0,%eax
  100dda:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100ddd:	eb 26                	jmp    100e05 <save_all_dr+0x5f>
    case 1: asm volatile ("movl %%db1, %0" : "=r" (value)); break;
  100ddf:	0f 21 c8             	mov    %db1,%eax
  100de2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100de5:	eb 1e                	jmp    100e05 <save_all_dr+0x5f>
    case 2: asm volatile ("movl %%db2, %0" : "=r" (value)); break;
  100de7:	0f 21 d0             	mov    %db2,%eax
  100dea:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100ded:	eb 16                	jmp    100e05 <save_all_dr+0x5f>
    case 3: asm volatile ("movl %%db3, %0" : "=r" (value)); break;
  100def:	0f 21 d8             	mov    %db3,%eax
  100df2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100df5:	eb 0e                	jmp    100e05 <save_all_dr+0x5f>
    case 6: asm volatile ("movl %%db6, %0" : "=r" (value)); break;
  100df7:	0f 21 f0             	mov    %db6,%eax
  100dfa:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  100dfd:	eb 06                	jmp    100e05 <save_all_dr+0x5f>
    case 7: asm volatile ("movl %%db7, %0" : "=r" (value)); break;
  100dff:	0f 21 f8             	mov    %db7,%eax
  100e02:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    }
    return value;
  100e05:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  100e08:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100e0b:	89 14 85 a4 0e 11 00 	mov    %edx,0x110ea4(,%eax,4)

/* save_all_dr - save all debug registers to memory and then disable them */
static void
save_all_dr(void) {
    int i;
    for (i = 0; i < MAX_DR_NUM; i ++) {
  100e12:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100e16:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
  100e1a:	7e 99                	jle    100db5 <save_all_dr+0xf>
  100e1c:	c7 45 f0 06 00 00 00 	movl   $0x6,-0x10(%ebp)
    asm volatile ("int $3");
}

static inline uint32_t
read_dr(unsigned regnum) {
    uint32_t value = 0;
  100e23:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
    switch (regnum) {
  100e2a:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
  100e2e:	77 3d                	ja     100e6d <save_all_dr+0xc7>
  100e30:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100e33:	c1 e0 02             	shl    $0x2,%eax
  100e36:	05 04 43 10 00       	add    $0x104304,%eax
  100e3b:	8b 00                	mov    (%eax),%eax
  100e3d:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %%db0, %0" : "=r" (value)); break;
  100e3f:	0f 21 c0             	mov    %db0,%eax
  100e42:	89 45 d8             	mov    %eax,-0x28(%ebp)
  100e45:	eb 26                	jmp    100e6d <save_all_dr+0xc7>
    case 1: asm volatile ("movl %%db1, %0" : "=r" (value)); break;
  100e47:	0f 21 c8             	mov    %db1,%eax
  100e4a:	89 45 d8             	mov    %eax,-0x28(%ebp)
  100e4d:	eb 1e                	jmp    100e6d <save_all_dr+0xc7>
    case 2: asm volatile ("movl %%db2, %0" : "=r" (value)); break;
  100e4f:	0f 21 d0             	mov    %db2,%eax
  100e52:	89 45 d8             	mov    %eax,-0x28(%ebp)
  100e55:	eb 16                	jmp    100e6d <save_all_dr+0xc7>
    case 3: asm volatile ("movl %%db3, %0" : "=r" (value)); break;
  100e57:	0f 21 d8             	mov    %db3,%eax
  100e5a:	89 45 d8             	mov    %eax,-0x28(%ebp)
  100e5d:	eb 0e                	jmp    100e6d <save_all_dr+0xc7>
    case 6: asm volatile ("movl %%db6, %0" : "=r" (value)); break;
  100e5f:	0f 21 f0             	mov    %db6,%eax
  100e62:	89 45 d8             	mov    %eax,-0x28(%ebp)
  100e65:	eb 06                	jmp    100e6d <save_all_dr+0xc7>
    case 7: asm volatile ("movl %%db7, %0" : "=r" (value)); break;
  100e67:	0f 21 f8             	mov    %db7,%eax
  100e6a:	89 45 d8             	mov    %eax,-0x28(%ebp)
    }
    return value;
  100e6d:	8b 45 d8             	mov    -0x28(%ebp),%eax
        local_dr[i] = read_dr(i);
    }
    status_dr = read_dr(DR_STATUS);
  100e70:	a3 b4 0e 11 00       	mov    %eax,0x110eb4
  100e75:	c7 45 ec 07 00 00 00 	movl   $0x7,-0x14(%ebp)
    asm volatile ("int $3");
}

static inline uint32_t
read_dr(unsigned regnum) {
    uint32_t value = 0;
  100e7c:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    switch (regnum) {
  100e83:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
  100e87:	77 3d                	ja     100ec6 <save_all_dr+0x120>
  100e89:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100e8c:	c1 e0 02             	shl    $0x2,%eax
  100e8f:	05 24 43 10 00       	add    $0x104324,%eax
  100e94:	8b 00                	mov    (%eax),%eax
  100e96:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %%db0, %0" : "=r" (value)); break;
  100e98:	0f 21 c0             	mov    %db0,%eax
  100e9b:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100e9e:	eb 26                	jmp    100ec6 <save_all_dr+0x120>
    case 1: asm volatile ("movl %%db1, %0" : "=r" (value)); break;
  100ea0:	0f 21 c8             	mov    %db1,%eax
  100ea3:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100ea6:	eb 1e                	jmp    100ec6 <save_all_dr+0x120>
    case 2: asm volatile ("movl %%db2, %0" : "=r" (value)); break;
  100ea8:	0f 21 d0             	mov    %db2,%eax
  100eab:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100eae:	eb 16                	jmp    100ec6 <save_all_dr+0x120>
    case 3: asm volatile ("movl %%db3, %0" : "=r" (value)); break;
  100eb0:	0f 21 d8             	mov    %db3,%eax
  100eb3:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100eb6:	eb 0e                	jmp    100ec6 <save_all_dr+0x120>
    case 6: asm volatile ("movl %%db6, %0" : "=r" (value)); break;
  100eb8:	0f 21 f0             	mov    %db6,%eax
  100ebb:	89 45 dc             	mov    %eax,-0x24(%ebp)
  100ebe:	eb 06                	jmp    100ec6 <save_all_dr+0x120>
    case 7: asm volatile ("movl %%db7, %0" : "=r" (value)); break;
  100ec0:	0f 21 f8             	mov    %db7,%eax
  100ec3:	89 45 dc             	mov    %eax,-0x24(%ebp)
    }
    return value;
  100ec6:	8b 45 dc             	mov    -0x24(%ebp),%eax
    control_dr = read_dr(DR_CONTROL);
  100ec9:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
  100ece:	c7 45 f4 07 00 00 00 	movl   $0x7,-0xc(%ebp)
  100ed5:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
}

static void
write_dr(unsigned regnum, uint32_t value) {
    switch (regnum) {
  100edc:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
  100ee0:	77 3d                	ja     100f1f <save_all_dr+0x179>
  100ee2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100ee5:	c1 e0 02             	shl    $0x2,%eax
  100ee8:	05 44 43 10 00       	add    $0x104344,%eax
  100eed:	8b 00                	mov    (%eax),%eax
  100eef:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %0, %%db0" :: "r" (value)); break;
  100ef1:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100ef4:	0f 23 c0             	mov    %eax,%db0
  100ef7:	eb 26                	jmp    100f1f <save_all_dr+0x179>
    case 1: asm volatile ("movl %0, %%db1" :: "r" (value)); break;
  100ef9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100efc:	0f 23 c8             	mov    %eax,%db1
  100eff:	eb 1e                	jmp    100f1f <save_all_dr+0x179>
    case 2: asm volatile ("movl %0, %%db2" :: "r" (value)); break;
  100f01:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100f04:	0f 23 d0             	mov    %eax,%db2
  100f07:	eb 16                	jmp    100f1f <save_all_dr+0x179>
    case 3: asm volatile ("movl %0, %%db3" :: "r" (value)); break;
  100f09:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100f0c:	0f 23 d8             	mov    %eax,%db3
  100f0f:	eb 0e                	jmp    100f1f <save_all_dr+0x179>
    case 6: asm volatile ("movl %0, %%db6" :: "r" (value)); break;
  100f11:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100f14:	0f 23 f0             	mov    %eax,%db6
  100f17:	eb 06                	jmp    100f1f <save_all_dr+0x179>
    case 7: asm volatile ("movl %0, %%db7" :: "r" (value)); break;
  100f19:	8b 45 e0             	mov    -0x20(%ebp),%eax
  100f1c:	0f 23 f8             	mov    %eax,%db7
    // disable breakpoints while debugger is running
    write_dr(DR_CONTROL, 0);

    // increase Debug Register Counter
    unsigned regnum;
    for (regnum = 0; regnum < MAX_DR_NUM; regnum ++) {
  100f1f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  100f26:	eb 36                	jmp    100f5e <save_all_dr+0x1b8>
        if (status_dr & (1 << regnum)) {
  100f28:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100f2b:	ba 01 00 00 00       	mov    $0x1,%edx
  100f30:	89 c1                	mov    %eax,%ecx
  100f32:	d3 e2                	shl    %cl,%edx
  100f34:	89 d0                	mov    %edx,%eax
  100f36:	89 c2                	mov    %eax,%edx
  100f38:	a1 b4 0e 11 00       	mov    0x110eb4,%eax
  100f3d:	21 d0                	and    %edx,%eax
  100f3f:	85 c0                	test   %eax,%eax
  100f41:	74 17                	je     100f5a <save_all_dr+0x1b4>
            local_dr_counter[regnum] ++;
  100f43:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100f46:	8b 04 85 bc 0e 11 00 	mov    0x110ebc(,%eax,4),%eax
  100f4d:	8d 50 01             	lea    0x1(%eax),%edx
  100f50:	8b 45 f8             	mov    -0x8(%ebp),%eax
  100f53:	89 14 85 bc 0e 11 00 	mov    %edx,0x110ebc(,%eax,4)
    // disable breakpoints while debugger is running
    write_dr(DR_CONTROL, 0);

    // increase Debug Register Counter
    unsigned regnum;
    for (regnum = 0; regnum < MAX_DR_NUM; regnum ++) {
  100f5a:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
  100f5e:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
  100f62:	76 c4                	jbe    100f28 <save_all_dr+0x182>
        if (status_dr & (1 << regnum)) {
            local_dr_counter[regnum] ++;
        }
    }
}
  100f64:	90                   	nop
  100f65:	c9                   	leave  
  100f66:	c3                   	ret    

00100f67 <restore_all_dr>:

/* restore_all_dr - reset all debug registers and clear the status register DR6 */
static void
restore_all_dr(void) {
  100f67:	55                   	push   %ebp
  100f68:	89 e5                	mov    %esp,%ebp
  100f6a:	83 ec 20             	sub    $0x20,%esp
    int i;
    for (i = 0; i < MAX_DR_NUM; i ++) {
  100f6d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  100f74:	eb 5a                	jmp    100fd0 <restore_all_dr+0x69>
        write_dr(i, local_dr[i]);
  100f76:	8b 45 fc             	mov    -0x4(%ebp),%eax
  100f79:	8b 04 85 a4 0e 11 00 	mov    0x110ea4(,%eax,4),%eax
  100f80:	8b 55 fc             	mov    -0x4(%ebp),%edx
  100f83:	89 55 f0             	mov    %edx,-0x10(%ebp)
  100f86:	89 45 ec             	mov    %eax,-0x14(%ebp)
    return value;
}

static void
write_dr(unsigned regnum, uint32_t value) {
    switch (regnum) {
  100f89:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
  100f8d:	77 3d                	ja     100fcc <restore_all_dr+0x65>
  100f8f:	8b 45 f0             	mov    -0x10(%ebp),%eax
  100f92:	c1 e0 02             	shl    $0x2,%eax
  100f95:	05 64 43 10 00       	add    $0x104364,%eax
  100f9a:	8b 00                	mov    (%eax),%eax
  100f9c:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %0, %%db0" :: "r" (value)); break;
  100f9e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fa1:	0f 23 c0             	mov    %eax,%db0
  100fa4:	eb 26                	jmp    100fcc <restore_all_dr+0x65>
    case 1: asm volatile ("movl %0, %%db1" :: "r" (value)); break;
  100fa6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fa9:	0f 23 c8             	mov    %eax,%db1
  100fac:	eb 1e                	jmp    100fcc <restore_all_dr+0x65>
    case 2: asm volatile ("movl %0, %%db2" :: "r" (value)); break;
  100fae:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fb1:	0f 23 d0             	mov    %eax,%db2
  100fb4:	eb 16                	jmp    100fcc <restore_all_dr+0x65>
    case 3: asm volatile ("movl %0, %%db3" :: "r" (value)); break;
  100fb6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fb9:	0f 23 d8             	mov    %eax,%db3
  100fbc:	eb 0e                	jmp    100fcc <restore_all_dr+0x65>
    case 6: asm volatile ("movl %0, %%db6" :: "r" (value)); break;
  100fbe:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fc1:	0f 23 f0             	mov    %eax,%db6
  100fc4:	eb 06                	jmp    100fcc <restore_all_dr+0x65>
    case 7: asm volatile ("movl %0, %%db7" :: "r" (value)); break;
  100fc6:	8b 45 ec             	mov    -0x14(%ebp),%eax
  100fc9:	0f 23 f8             	mov    %eax,%db7

/* restore_all_dr - reset all debug registers and clear the status register DR6 */
static void
restore_all_dr(void) {
    int i;
    for (i = 0; i < MAX_DR_NUM; i ++) {
  100fcc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  100fd0:	83 7d fc 03          	cmpl   $0x3,-0x4(%ebp)
  100fd4:	7e a0                	jle    100f76 <restore_all_dr+0xf>
  100fd6:	c7 45 f4 06 00 00 00 	movl   $0x6,-0xc(%ebp)
  100fdd:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    return value;
}

static void
write_dr(unsigned regnum, uint32_t value) {
    switch (regnum) {
  100fe4:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
  100fe8:	77 3d                	ja     101027 <restore_all_dr+0xc0>
  100fea:	8b 45 f4             	mov    -0xc(%ebp),%eax
  100fed:	c1 e0 02             	shl    $0x2,%eax
  100ff0:	05 84 43 10 00       	add    $0x104384,%eax
  100ff5:	8b 00                	mov    (%eax),%eax
  100ff7:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %0, %%db0" :: "r" (value)); break;
  100ff9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  100ffc:	0f 23 c0             	mov    %eax,%db0
  100fff:	eb 26                	jmp    101027 <restore_all_dr+0xc0>
    case 1: asm volatile ("movl %0, %%db1" :: "r" (value)); break;
  101001:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101004:	0f 23 c8             	mov    %eax,%db1
  101007:	eb 1e                	jmp    101027 <restore_all_dr+0xc0>
    case 2: asm volatile ("movl %0, %%db2" :: "r" (value)); break;
  101009:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10100c:	0f 23 d0             	mov    %eax,%db2
  10100f:	eb 16                	jmp    101027 <restore_all_dr+0xc0>
    case 3: asm volatile ("movl %0, %%db3" :: "r" (value)); break;
  101011:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101014:	0f 23 d8             	mov    %eax,%db3
  101017:	eb 0e                	jmp    101027 <restore_all_dr+0xc0>
    case 6: asm volatile ("movl %0, %%db6" :: "r" (value)); break;
  101019:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10101c:	0f 23 f0             	mov    %eax,%db6
  10101f:	eb 06                	jmp    101027 <restore_all_dr+0xc0>
    case 7: asm volatile ("movl %0, %%db7" :: "r" (value)); break;
  101021:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101024:	0f 23 f8             	mov    %eax,%db7
        write_dr(i, local_dr[i]);
    }
    write_dr(DR_STATUS, 0);
    write_dr(DR_CONTROL, control_dr);
  101027:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  10102c:	c7 45 f8 07 00 00 00 	movl   $0x7,-0x8(%ebp)
  101033:	89 45 e8             	mov    %eax,-0x18(%ebp)
    return value;
}

static void
write_dr(unsigned regnum, uint32_t value) {
    switch (regnum) {
  101036:	83 7d f8 07          	cmpl   $0x7,-0x8(%ebp)
  10103a:	77 3d                	ja     101079 <restore_all_dr+0x112>
  10103c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10103f:	c1 e0 02             	shl    $0x2,%eax
  101042:	05 a4 43 10 00       	add    $0x1043a4,%eax
  101047:	8b 00                	mov    (%eax),%eax
  101049:	ff e0                	jmp    *%eax
    case 0: asm volatile ("movl %0, %%db0" :: "r" (value)); break;
  10104b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10104e:	0f 23 c0             	mov    %eax,%db0
}
  101051:	eb 26                	jmp    101079 <restore_all_dr+0x112>
    case 1: asm volatile ("movl %0, %%db1" :: "r" (value)); break;
  101053:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101056:	0f 23 c8             	mov    %eax,%db1
  101059:	eb 1e                	jmp    101079 <restore_all_dr+0x112>
    case 2: asm volatile ("movl %0, %%db2" :: "r" (value)); break;
  10105b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10105e:	0f 23 d0             	mov    %eax,%db2
  101061:	eb 16                	jmp    101079 <restore_all_dr+0x112>
    case 3: asm volatile ("movl %0, %%db3" :: "r" (value)); break;
  101063:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101066:	0f 23 d8             	mov    %eax,%db3
  101069:	eb 0e                	jmp    101079 <restore_all_dr+0x112>
    case 6: asm volatile ("movl %0, %%db6" :: "r" (value)); break;
  10106b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10106e:	0f 23 f0             	mov    %eax,%db6
  101071:	eb 06                	jmp    101079 <restore_all_dr+0x112>
    case 7: asm volatile ("movl %0, %%db7" :: "r" (value)); break;
  101073:	8b 45 e8             	mov    -0x18(%ebp),%eax
  101076:	0f 23 f8             	mov    %eax,%db7
  101079:	90                   	nop
  10107a:	c9                   	leave  
  10107b:	c3                   	ret    

0010107c <debug_enable_dr>:

/* debug_enable_dr - set and enable debug register @regnum locally */
int
debug_enable_dr(unsigned regnum, uintptr_t addr, unsigned type, unsigned len) {
  10107c:	55                   	push   %ebp
  10107d:	89 e5                	mov    %esp,%ebp
  10107f:	83 ec 10             	sub    $0x10,%esp
    if (regnum < MAX_DR_NUM) {
  101082:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
  101086:	0f 87 a9 00 00 00    	ja     101135 <debug_enable_dr+0xb9>
        local_dr[regnum] = addr;
  10108c:	8b 45 08             	mov    0x8(%ebp),%eax
  10108f:	8b 55 0c             	mov    0xc(%ebp),%edx
  101092:	89 14 85 a4 0e 11 00 	mov    %edx,0x110ea4(,%eax,4)
        local_dr_counter[regnum] = 0;
  101099:	8b 45 08             	mov    0x8(%ebp),%eax
  10109c:	c7 04 85 bc 0e 11 00 	movl   $0x0,0x110ebc(,%eax,4)
  1010a3:	00 00 00 00 
        unsigned shift = (regnum * 4) + 16;
  1010a7:	8b 45 08             	mov    0x8(%ebp),%eax
  1010aa:	83 c0 04             	add    $0x4,%eax
  1010ad:	c1 e0 02             	shl    $0x2,%eax
  1010b0:	89 45 fc             	mov    %eax,-0x4(%ebp)
        uint32_t mask = (0xF << shift);
  1010b3:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1010b6:	ba 0f 00 00 00       	mov    $0xf,%edx
  1010bb:	89 c1                	mov    %eax,%ecx
  1010bd:	d3 e2                	shl    %cl,%edx
  1010bf:	89 d0                	mov    %edx,%eax
  1010c1:	89 45 f8             	mov    %eax,-0x8(%ebp)
        control_dr &= ~mask;
  1010c4:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1010c7:	f7 d0                	not    %eax
  1010c9:	89 c2                	mov    %eax,%edx
  1010cb:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  1010d0:	21 d0                	and    %edx,%eax
  1010d2:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
        control_dr |= ((type & 3) << shift);
  1010d7:	8b 45 10             	mov    0x10(%ebp),%eax
  1010da:	83 e0 03             	and    $0x3,%eax
  1010dd:	89 c2                	mov    %eax,%edx
  1010df:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1010e2:	89 c1                	mov    %eax,%ecx
  1010e4:	d3 e2                	shl    %cl,%edx
  1010e6:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  1010eb:	09 d0                	or     %edx,%eax
  1010ed:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
        control_dr |= ((len & 3) << (shift + 2));
  1010f2:	8b 45 14             	mov    0x14(%ebp),%eax
  1010f5:	83 e0 03             	and    $0x3,%eax
  1010f8:	89 c2                	mov    %eax,%edx
  1010fa:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1010fd:	83 c0 02             	add    $0x2,%eax
  101100:	89 c1                	mov    %eax,%ecx
  101102:	d3 e2                	shl    %cl,%edx
  101104:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  101109:	09 d0                	or     %edx,%eax
  10110b:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
        control_dr |= (1 << (regnum * 2));
  101110:	8b 45 08             	mov    0x8(%ebp),%eax
  101113:	01 c0                	add    %eax,%eax
  101115:	ba 01 00 00 00       	mov    $0x1,%edx
  10111a:	89 c1                	mov    %eax,%ecx
  10111c:	d3 e2                	shl    %cl,%edx
  10111e:	89 d0                	mov    %edx,%eax
  101120:	89 c2                	mov    %eax,%edx
  101122:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  101127:	09 d0                	or     %edx,%eax
  101129:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
        return 0;
  10112e:	b8 00 00 00 00       	mov    $0x0,%eax
  101133:	eb 05                	jmp    10113a <debug_enable_dr+0xbe>
    }
    return -1;
  101135:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  10113a:	c9                   	leave  
  10113b:	c3                   	ret    

0010113c <debug_disable_dr>:

/* debug_disable_dr - disable debug register @regnum locally */
int
debug_disable_dr(unsigned regnum) {
  10113c:	55                   	push   %ebp
  10113d:	89 e5                	mov    %esp,%ebp
  10113f:	83 ec 10             	sub    $0x10,%esp
    if (regnum < MAX_DR_NUM) {
  101142:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
  101146:	77 57                	ja     10119f <debug_disable_dr+0x63>
        unsigned shift = (regnum * 4) + 16;
  101148:	8b 45 08             	mov    0x8(%ebp),%eax
  10114b:	83 c0 04             	add    $0x4,%eax
  10114e:	c1 e0 02             	shl    $0x2,%eax
  101151:	89 45 fc             	mov    %eax,-0x4(%ebp)
        uint32_t mask = (0xF << shift);
  101154:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101157:	ba 0f 00 00 00       	mov    $0xf,%edx
  10115c:	89 c1                	mov    %eax,%ecx
  10115e:	d3 e2                	shl    %cl,%edx
  101160:	89 d0                	mov    %edx,%eax
  101162:	89 45 f8             	mov    %eax,-0x8(%ebp)
        control_dr &= ~mask;
  101165:	8b 45 f8             	mov    -0x8(%ebp),%eax
  101168:	f7 d0                	not    %eax
  10116a:	89 c2                	mov    %eax,%edx
  10116c:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  101171:	21 d0                	and    %edx,%eax
  101173:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
        control_dr &= ~(1 << (regnum * 2));
  101178:	8b 45 08             	mov    0x8(%ebp),%eax
  10117b:	01 c0                	add    %eax,%eax
  10117d:	ba 01 00 00 00       	mov    $0x1,%edx
  101182:	89 c1                	mov    %eax,%ecx
  101184:	d3 e2                	shl    %cl,%edx
  101186:	89 d0                	mov    %edx,%eax
  101188:	f7 d0                	not    %eax
  10118a:	89 c2                	mov    %eax,%edx
  10118c:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  101191:	21 d0                	and    %edx,%eax
  101193:	a3 b8 0e 11 00       	mov    %eax,0x110eb8
        return 0;
  101198:	b8 00 00 00 00       	mov    $0x0,%eax
  10119d:	eb 05                	jmp    1011a4 <debug_disable_dr+0x68>
    }
    return -1;
  10119f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  1011a4:	c9                   	leave  
  1011a5:	c3                   	ret    

001011a6 <debug_init>:
// mark if local_dr, status_dr and contorl_dr are valid
static bool is_dr_saved = 0;

/* debug_init - init all debug registers by using restore_dr */
void
debug_init(void) {
  1011a6:	55                   	push   %ebp
  1011a7:	89 e5                	mov    %esp,%ebp
  1011a9:	83 ec 08             	sub    $0x8,%esp
    memset(local_dr, 0, sizeof(local_dr));
  1011ac:	83 ec 04             	sub    $0x4,%esp
  1011af:	6a 10                	push   $0x10
  1011b1:	6a 00                	push   $0x0
  1011b3:	68 a4 0e 11 00       	push   $0x110ea4
  1011b8:	e8 19 28 00 00       	call   1039d6 <memset>
  1011bd:	83 c4 10             	add    $0x10,%esp
    memset(local_dr_counter, 0, sizeof(local_dr_counter));
  1011c0:	83 ec 04             	sub    $0x4,%esp
  1011c3:	6a 10                	push   $0x10
  1011c5:	6a 00                	push   $0x0
  1011c7:	68 bc 0e 11 00       	push   $0x110ebc
  1011cc:	e8 05 28 00 00       	call   1039d6 <memset>
  1011d1:	83 c4 10             	add    $0x10,%esp
    control_dr = DR7_GEXACT | DR7_LEXACT;
  1011d4:	c7 05 b8 0e 11 00 00 	movl   $0x300,0x110eb8
  1011db:	03 00 00 
    restore_all_dr();
  1011de:	e8 84 fd ff ff       	call   100f67 <restore_all_dr>
}
  1011e3:	90                   	nop
  1011e4:	c9                   	leave  
  1011e5:	c3                   	ret    

001011e6 <debug_list_dr>:

/* debug_list_dr - list and print all debug registrs' value and type */
void
debug_list_dr(void) {
  1011e6:	55                   	push   %ebp
  1011e7:	89 e5                	mov    %esp,%ebp
  1011e9:	53                   	push   %ebx
  1011ea:	83 ec 24             	sub    $0x24,%esp
    bool has = 0;
  1011ed:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    int regnum;
    for (regnum = 0; regnum < MAX_DR_NUM; regnum ++) {
  1011f4:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  1011fb:	e9 ba 00 00 00       	jmp    1012ba <debug_list_dr+0xd4>
        if (control_dr & (1 << (regnum * 2))) {
  101200:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101203:	01 c0                	add    %eax,%eax
  101205:	ba 01 00 00 00       	mov    $0x1,%edx
  10120a:	89 c1                	mov    %eax,%ecx
  10120c:	d3 e2                	shl    %cl,%edx
  10120e:	89 d0                	mov    %edx,%eax
  101210:	89 c2                	mov    %eax,%edx
  101212:	a1 b8 0e 11 00       	mov    0x110eb8,%eax
  101217:	21 d0                	and    %edx,%eax
  101219:	85 c0                	test   %eax,%eax
  10121b:	0f 84 95 00 00 00    	je     1012b6 <debug_list_dr+0xd0>
            if (!has) {
  101221:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  101225:	75 17                	jne    10123e <debug_list_dr+0x58>
                has = 1;
  101227:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
                cprintf("    Num Address    Type       Len    Count\n");
  10122e:	83 ec 0c             	sub    $0xc,%esp
  101231:	68 00 44 10 00       	push   $0x104400
  101236:	e8 94 f2 ff ff       	call   1004cf <cprintf>
  10123b:	83 c4 10             	add    $0x10,%esp
            }
            unsigned shift = (regnum * 4) + 16;
  10123e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101241:	83 c0 04             	add    $0x4,%eax
  101244:	c1 e0 02             	shl    $0x2,%eax
  101247:	89 45 ec             	mov    %eax,-0x14(%ebp)
            unsigned type = ((control_dr >> shift) & 3);
  10124a:	8b 15 b8 0e 11 00    	mov    0x110eb8,%edx
  101250:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101253:	89 c1                	mov    %eax,%ecx
  101255:	d3 ea                	shr    %cl,%edx
  101257:	89 d0                	mov    %edx,%eax
  101259:	83 e0 03             	and    $0x3,%eax
  10125c:	89 45 e8             	mov    %eax,-0x18(%ebp)
            unsigned len = ((control_dr >> (shift + 2)) & 3);
  10125f:	8b 15 b8 0e 11 00    	mov    0x110eb8,%edx
  101265:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101268:	83 c0 02             	add    $0x2,%eax
  10126b:	89 c1                	mov    %eax,%ecx
  10126d:	d3 ea                	shr    %cl,%edx
  10126f:	89 d0                	mov    %edx,%eax
  101271:	83 e0 03             	and    $0x3,%eax
  101274:	89 45 e4             	mov    %eax,-0x1c(%ebp)
            cprintf("    %1d   0x%08x %-10s %6s %d\n", regnum, local_dr[regnum],
  101277:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10127a:	8b 1c 85 bc 0e 11 00 	mov    0x110ebc(,%eax,4),%ebx
  101281:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101284:	8b 0c 85 10 00 11 00 	mov    0x110010(,%eax,4),%ecx
  10128b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  10128e:	8b 14 85 00 00 11 00 	mov    0x110000(,%eax,4),%edx
  101295:	8b 45 f0             	mov    -0x10(%ebp),%eax
  101298:	8b 04 85 a4 0e 11 00 	mov    0x110ea4(,%eax,4),%eax
  10129f:	83 ec 08             	sub    $0x8,%esp
  1012a2:	53                   	push   %ebx
  1012a3:	51                   	push   %ecx
  1012a4:	52                   	push   %edx
  1012a5:	50                   	push   %eax
  1012a6:	ff 75 f0             	pushl  -0x10(%ebp)
  1012a9:	68 2c 44 10 00       	push   $0x10442c
  1012ae:	e8 1c f2 ff ff       	call   1004cf <cprintf>
  1012b3:	83 c4 20             	add    $0x20,%esp
/* debug_list_dr - list and print all debug registrs' value and type */
void
debug_list_dr(void) {
    bool has = 0;
    int regnum;
    for (regnum = 0; regnum < MAX_DR_NUM; regnum ++) {
  1012b6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
  1012ba:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
  1012be:	0f 8e 3c ff ff ff    	jle    101200 <debug_list_dr+0x1a>
            unsigned len = ((control_dr >> (shift + 2)) & 3);
            cprintf("    %1d   0x%08x %-10s %6s %d\n", regnum, local_dr[regnum],
                    BreakDescription[type], BreakLengthDescription[len], local_dr_counter[regnum]);
        }
    }
    if (!has) {
  1012c4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  1012c8:	75 10                	jne    1012da <debug_list_dr+0xf4>
        cprintf("no breakpoints or watchpoints.\n");
  1012ca:	83 ec 0c             	sub    $0xc,%esp
  1012cd:	68 4c 44 10 00       	push   $0x10444c
  1012d2:	e8 f8 f1 ff ff       	call   1004cf <cprintf>
  1012d7:	83 c4 10             	add    $0x10,%esp
    }
}
  1012da:	90                   	nop
  1012db:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  1012de:	c9                   	leave  
  1012df:	c3                   	ret    

001012e0 <debug_start>:
 * type 'step' to decide to run a single step, debug_end won't restore all these
 * debug registers, and keep the value of 'is_dr_saved'. When another debug interrupt
 * occurs, it may go into this function again.
 * */
static void
debug_start(struct trapframe *tf) {
  1012e0:	55                   	push   %ebp
  1012e1:	89 e5                	mov    %esp,%ebp
    if (!is_dr_saved) {
  1012e3:	a1 cc 0e 11 00       	mov    0x110ecc,%eax
  1012e8:	85 c0                	test   %eax,%eax
  1012ea:	75 0f                	jne    1012fb <debug_start+0x1b>
        is_dr_saved = 1;
  1012ec:	c7 05 cc 0e 11 00 01 	movl   $0x1,0x110ecc
  1012f3:	00 00 00 
        save_all_dr();
  1012f6:	e8 ab fa ff ff       	call   100da6 <save_all_dr>
    }
}
  1012fb:	90                   	nop
  1012fc:	5d                   	pop    %ebp
  1012fd:	c3                   	ret    

001012fe <debug_end>:
/* *
 * debug_end - restore all debug registers if necessory. Note that, if kernel
 * needs to run a single step, it should not restore them.
 * */
static void
debug_end(struct trapframe *tf) {
  1012fe:	55                   	push   %ebp
  1012ff:	89 e5                	mov    %esp,%ebp
    if (!(tf->tf_eflags & FL_TF) && is_dr_saved) {
  101301:	8b 45 08             	mov    0x8(%ebp),%eax
  101304:	8b 40 38             	mov    0x38(%eax),%eax
  101307:	25 00 01 00 00       	and    $0x100,%eax
  10130c:	85 c0                	test   %eax,%eax
  10130e:	75 18                	jne    101328 <debug_end+0x2a>
  101310:	a1 cc 0e 11 00       	mov    0x110ecc,%eax
  101315:	85 c0                	test   %eax,%eax
  101317:	74 0f                	je     101328 <debug_end+0x2a>
        is_dr_saved = 0;
  101319:	c7 05 cc 0e 11 00 00 	movl   $0x0,0x110ecc
  101320:	00 00 00 
        restore_all_dr();
  101323:	e8 3f fc ff ff       	call   100f67 <restore_all_dr>
    }
}
  101328:	90                   	nop
  101329:	5d                   	pop    %ebp
  10132a:	c3                   	ret    

0010132b <debug_monitor>:

/* debug_monitor - goes into the debugger monitor, and type 'continue' to return */
void
debug_monitor(struct trapframe *tf) {
  10132b:	55                   	push   %ebp
  10132c:	89 e5                	mov    %esp,%ebp
  10132e:	83 ec 18             	sub    $0x18,%esp
    assert(tf != NULL);
  101331:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  101335:	75 19                	jne    101350 <debug_monitor+0x25>
  101337:	68 6c 44 10 00       	push   $0x10446c
  10133c:	68 77 44 10 00       	push   $0x104477
  101341:	68 c9 01 00 00       	push   $0x1c9
  101346:	68 8c 44 10 00       	push   $0x10448c
  10134b:	e8 e5 f2 ff ff       	call   100635 <__panic>
    bool intr_flag;
    local_intr_save(intr_flag);
  101350:	e8 9f f3 ff ff       	call   1006f4 <__intr_save>
  101355:	89 45 f4             	mov    %eax,-0xc(%ebp)
    {
        debug_start(tf);
  101358:	83 ec 0c             	sub    $0xc,%esp
  10135b:	ff 75 08             	pushl  0x8(%ebp)
  10135e:	e8 7d ff ff ff       	call   1012e0 <debug_start>
  101363:	83 c4 10             	add    $0x10,%esp
        cprintf("debug_monitor at:\n");
  101366:	83 ec 0c             	sub    $0xc,%esp
  101369:	68 a0 44 10 00       	push   $0x1044a0
  10136e:	e8 5c f1 ff ff       	call   1004cf <cprintf>
  101373:	83 c4 10             	add    $0x10,%esp
        print_debuginfo(tf->tf_eip);
  101376:	8b 45 08             	mov    0x8(%ebp),%eax
  101379:	8b 40 30             	mov    0x30(%eax),%eax
  10137c:	83 ec 0c             	sub    $0xc,%esp
  10137f:	50                   	push   %eax
  101380:	e8 af f8 ff ff       	call   100c34 <print_debuginfo>
  101385:	83 c4 10             	add    $0x10,%esp
        monitor(tf);
  101388:	83 ec 0c             	sub    $0xc,%esp
  10138b:	ff 75 08             	pushl  0x8(%ebp)
  10138e:	e8 8e 01 00 00       	call   101521 <monitor>
  101393:	83 c4 10             	add    $0x10,%esp
        debug_end(tf);
  101396:	83 ec 0c             	sub    $0xc,%esp
  101399:	ff 75 08             	pushl  0x8(%ebp)
  10139c:	e8 5d ff ff ff       	call   1012fe <debug_end>
  1013a1:	83 c4 10             	add    $0x10,%esp
    }
    local_intr_restore(intr_flag);
  1013a4:	83 ec 0c             	sub    $0xc,%esp
  1013a7:	ff 75 f4             	pushl  -0xc(%ebp)
  1013aa:	e8 6f f3 ff ff       	call   10071e <__intr_restore>
  1013af:	83 c4 10             	add    $0x10,%esp
}
  1013b2:	90                   	nop
  1013b3:	c9                   	leave  
  1013b4:	c3                   	ret    

001013b5 <parse>:
#define MAXARGS         16
#define WHITESPACE      " \t\n\r"

/* parse - parse the command buffer into whitespace-separated arguments */
static int
parse(char *buf, char **argv) {
  1013b5:	55                   	push   %ebp
  1013b6:	89 e5                	mov    %esp,%ebp
  1013b8:	83 ec 18             	sub    $0x18,%esp
    int argc = 0;
  1013bb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    while (1) {
        // find global whitespace
        while (*buf != '\0' && strchr(WHITESPACE, *buf) != NULL) {
  1013c2:	eb 0c                	jmp    1013d0 <parse+0x1b>
            *buf ++ = '\0';
  1013c4:	8b 45 08             	mov    0x8(%ebp),%eax
  1013c7:	8d 50 01             	lea    0x1(%eax),%edx
  1013ca:	89 55 08             	mov    %edx,0x8(%ebp)
  1013cd:	c6 00 00             	movb   $0x0,(%eax)
static int
parse(char *buf, char **argv) {
    int argc = 0;
    while (1) {
        // find global whitespace
        while (*buf != '\0' && strchr(WHITESPACE, *buf) != NULL) {
  1013d0:	8b 45 08             	mov    0x8(%ebp),%eax
  1013d3:	0f b6 00             	movzbl (%eax),%eax
  1013d6:	84 c0                	test   %al,%al
  1013d8:	74 1e                	je     1013f8 <parse+0x43>
  1013da:	8b 45 08             	mov    0x8(%ebp),%eax
  1013dd:	0f b6 00             	movzbl (%eax),%eax
  1013e0:	0f be c0             	movsbl %al,%eax
  1013e3:	83 ec 08             	sub    $0x8,%esp
  1013e6:	50                   	push   %eax
  1013e7:	68 e1 47 10 00       	push   $0x1047e1
  1013ec:	e8 26 24 00 00       	call   103817 <strchr>
  1013f1:	83 c4 10             	add    $0x10,%esp
  1013f4:	85 c0                	test   %eax,%eax
  1013f6:	75 cc                	jne    1013c4 <parse+0xf>
            *buf ++ = '\0';
        }
        if (*buf == '\0') {
  1013f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1013fb:	0f b6 00             	movzbl (%eax),%eax
  1013fe:	84 c0                	test   %al,%al
  101400:	74 69                	je     10146b <parse+0xb6>
            break;
        }

        // save and scan past next arg
        if (argc == MAXARGS - 1) {
  101402:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
  101406:	75 12                	jne    10141a <parse+0x65>
            cprintf("Too many arguments (max %d).\n", MAXARGS);
  101408:	83 ec 08             	sub    $0x8,%esp
  10140b:	6a 10                	push   $0x10
  10140d:	68 e6 47 10 00       	push   $0x1047e6
  101412:	e8 b8 f0 ff ff       	call   1004cf <cprintf>
  101417:	83 c4 10             	add    $0x10,%esp
        }
        argv[argc ++] = buf;
  10141a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  10141d:	8d 50 01             	lea    0x1(%eax),%edx
  101420:	89 55 f4             	mov    %edx,-0xc(%ebp)
  101423:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  10142a:	8b 45 0c             	mov    0xc(%ebp),%eax
  10142d:	01 c2                	add    %eax,%edx
  10142f:	8b 45 08             	mov    0x8(%ebp),%eax
  101432:	89 02                	mov    %eax,(%edx)
        while (*buf != '\0' && strchr(WHITESPACE, *buf) == NULL) {
  101434:	eb 04                	jmp    10143a <parse+0x85>
            buf ++;
  101436:	83 45 08 01          	addl   $0x1,0x8(%ebp)
        // save and scan past next arg
        if (argc == MAXARGS - 1) {
            cprintf("Too many arguments (max %d).\n", MAXARGS);
        }
        argv[argc ++] = buf;
        while (*buf != '\0' && strchr(WHITESPACE, *buf) == NULL) {
  10143a:	8b 45 08             	mov    0x8(%ebp),%eax
  10143d:	0f b6 00             	movzbl (%eax),%eax
  101440:	84 c0                	test   %al,%al
  101442:	0f 84 7a ff ff ff    	je     1013c2 <parse+0xd>
  101448:	8b 45 08             	mov    0x8(%ebp),%eax
  10144b:	0f b6 00             	movzbl (%eax),%eax
  10144e:	0f be c0             	movsbl %al,%eax
  101451:	83 ec 08             	sub    $0x8,%esp
  101454:	50                   	push   %eax
  101455:	68 e1 47 10 00       	push   $0x1047e1
  10145a:	e8 b8 23 00 00       	call   103817 <strchr>
  10145f:	83 c4 10             	add    $0x10,%esp
  101462:	85 c0                	test   %eax,%eax
  101464:	74 d0                	je     101436 <parse+0x81>
            buf ++;
        }
    }
  101466:	e9 57 ff ff ff       	jmp    1013c2 <parse+0xd>
        // find global whitespace
        while (*buf != '\0' && strchr(WHITESPACE, *buf) != NULL) {
            *buf ++ = '\0';
        }
        if (*buf == '\0') {
            break;
  10146b:	90                   	nop
        argv[argc ++] = buf;
        while (*buf != '\0' && strchr(WHITESPACE, *buf) == NULL) {
            buf ++;
        }
    }
    return argc;
  10146c:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  10146f:	c9                   	leave  
  101470:	c3                   	ret    

00101471 <runcmd>:
/* *
 * runcmd - parse the input string, split it into separated arguments
 * and then lookup and invoke some related commands/
 * */
static int
runcmd(char *buf, struct trapframe *tf) {
  101471:	55                   	push   %ebp
  101472:	89 e5                	mov    %esp,%ebp
  101474:	83 ec 58             	sub    $0x58,%esp
    char *argv[MAXARGS];
    int argc = parse(buf, argv);
  101477:	83 ec 08             	sub    $0x8,%esp
  10147a:	8d 45 b0             	lea    -0x50(%ebp),%eax
  10147d:	50                   	push   %eax
  10147e:	ff 75 08             	pushl  0x8(%ebp)
  101481:	e8 2f ff ff ff       	call   1013b5 <parse>
  101486:	83 c4 10             	add    $0x10,%esp
  101489:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if (argc == 0) {
  10148c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  101490:	75 0a                	jne    10149c <runcmd+0x2b>
        return 0;
  101492:	b8 00 00 00 00       	mov    $0x0,%eax
  101497:	e9 83 00 00 00       	jmp    10151f <runcmd+0xae>
    }
    int i;
    for (i = 0; i < NCOMMANDS; i ++) {
  10149c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  1014a3:	eb 59                	jmp    1014fe <runcmd+0x8d>
        if (strcmp(commands[i].name, argv[0]) == 0) {
  1014a5:	8b 4d b0             	mov    -0x50(%ebp),%ecx
  1014a8:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1014ab:	89 d0                	mov    %edx,%eax
  1014ad:	01 c0                	add    %eax,%eax
  1014af:	01 d0                	add    %edx,%eax
  1014b1:	c1 e0 02             	shl    $0x2,%eax
  1014b4:	05 20 00 11 00       	add    $0x110020,%eax
  1014b9:	8b 00                	mov    (%eax),%eax
  1014bb:	83 ec 08             	sub    $0x8,%esp
  1014be:	51                   	push   %ecx
  1014bf:	50                   	push   %eax
  1014c0:	e8 b2 22 00 00       	call   103777 <strcmp>
  1014c5:	83 c4 10             	add    $0x10,%esp
  1014c8:	85 c0                	test   %eax,%eax
  1014ca:	75 2e                	jne    1014fa <runcmd+0x89>
            return commands[i].func(argc - 1, argv + 1, tf);
  1014cc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1014cf:	89 d0                	mov    %edx,%eax
  1014d1:	01 c0                	add    %eax,%eax
  1014d3:	01 d0                	add    %edx,%eax
  1014d5:	c1 e0 02             	shl    $0x2,%eax
  1014d8:	05 28 00 11 00       	add    $0x110028,%eax
  1014dd:	8b 10                	mov    (%eax),%edx
  1014df:	8d 45 b0             	lea    -0x50(%ebp),%eax
  1014e2:	83 c0 04             	add    $0x4,%eax
  1014e5:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  1014e8:	83 e9 01             	sub    $0x1,%ecx
  1014eb:	83 ec 04             	sub    $0x4,%esp
  1014ee:	ff 75 0c             	pushl  0xc(%ebp)
  1014f1:	50                   	push   %eax
  1014f2:	51                   	push   %ecx
  1014f3:	ff d2                	call   *%edx
  1014f5:	83 c4 10             	add    $0x10,%esp
  1014f8:	eb 25                	jmp    10151f <runcmd+0xae>
    int argc = parse(buf, argv);
    if (argc == 0) {
        return 0;
    }
    int i;
    for (i = 0; i < NCOMMANDS; i ++) {
  1014fa:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1014fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101501:	83 f8 08             	cmp    $0x8,%eax
  101504:	76 9f                	jbe    1014a5 <runcmd+0x34>
        if (strcmp(commands[i].name, argv[0]) == 0) {
            return commands[i].func(argc - 1, argv + 1, tf);
        }
    }
    cprintf("Unknown command '%s'\n", argv[0]);
  101506:	8b 45 b0             	mov    -0x50(%ebp),%eax
  101509:	83 ec 08             	sub    $0x8,%esp
  10150c:	50                   	push   %eax
  10150d:	68 04 48 10 00       	push   $0x104804
  101512:	e8 b8 ef ff ff       	call   1004cf <cprintf>
  101517:	83 c4 10             	add    $0x10,%esp
    return 0;
  10151a:	b8 00 00 00 00       	mov    $0x0,%eax
}
  10151f:	c9                   	leave  
  101520:	c3                   	ret    

00101521 <monitor>:

/***** Implementations of basic kernel monitor commands *****/

void
monitor(struct trapframe *tf) {
  101521:	55                   	push   %ebp
  101522:	89 e5                	mov    %esp,%ebp
  101524:	83 ec 18             	sub    $0x18,%esp
    cprintf("Welcome to the kernel debug monitor!!\n");
  101527:	83 ec 0c             	sub    $0xc,%esp
  10152a:	68 1c 48 10 00       	push   $0x10481c
  10152f:	e8 9b ef ff ff       	call   1004cf <cprintf>
  101534:	83 c4 10             	add    $0x10,%esp
    cprintf("Type 'help' for a list of commands.\n");
  101537:	83 ec 0c             	sub    $0xc,%esp
  10153a:	68 44 48 10 00       	push   $0x104844
  10153f:	e8 8b ef ff ff       	call   1004cf <cprintf>
  101544:	83 c4 10             	add    $0x10,%esp

    if (tf != NULL) {
  101547:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  10154b:	74 0e                	je     10155b <monitor+0x3a>
        print_trapframe(tf);
  10154d:	83 ec 0c             	sub    $0xc,%esp
  101550:	ff 75 08             	pushl  0x8(%ebp)
  101553:	e8 10 12 00 00       	call   102768 <print_trapframe>
  101558:	83 c4 10             	add    $0x10,%esp
    }

    char *buf;
    while (1) {
        if ((buf = readline("K> ")) != NULL) {
  10155b:	83 ec 0c             	sub    $0xc,%esp
  10155e:	68 69 48 10 00       	push   $0x104869
  101563:	e8 0b f0 ff ff       	call   100573 <readline>
  101568:	83 c4 10             	add    $0x10,%esp
  10156b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10156e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  101572:	74 e7                	je     10155b <monitor+0x3a>
            if (runcmd(buf, tf) < 0) {
  101574:	83 ec 08             	sub    $0x8,%esp
  101577:	ff 75 08             	pushl  0x8(%ebp)
  10157a:	ff 75 f4             	pushl  -0xc(%ebp)
  10157d:	e8 ef fe ff ff       	call   101471 <runcmd>
  101582:	83 c4 10             	add    $0x10,%esp
  101585:	85 c0                	test   %eax,%eax
  101587:	78 02                	js     10158b <monitor+0x6a>
                break;
            }
        }
    }
  101589:	eb d0                	jmp    10155b <monitor+0x3a>

    char *buf;
    while (1) {
        if ((buf = readline("K> ")) != NULL) {
            if (runcmd(buf, tf) < 0) {
                break;
  10158b:	90                   	nop
            }
        }
    }
}
  10158c:	90                   	nop
  10158d:	c9                   	leave  
  10158e:	c3                   	ret    

0010158f <mon_help>:

/* mon_help - print the information about mon_* functions */
int
mon_help(int argc, char **argv, struct trapframe *tf) {
  10158f:	55                   	push   %ebp
  101590:	89 e5                	mov    %esp,%ebp
  101592:	83 ec 18             	sub    $0x18,%esp
    int i;
    for (i = 0; i < NCOMMANDS; i ++) {
  101595:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  10159c:	eb 3c                	jmp    1015da <mon_help+0x4b>
        cprintf("%s - %s\n", commands[i].name, commands[i].desc);
  10159e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1015a1:	89 d0                	mov    %edx,%eax
  1015a3:	01 c0                	add    %eax,%eax
  1015a5:	01 d0                	add    %edx,%eax
  1015a7:	c1 e0 02             	shl    $0x2,%eax
  1015aa:	05 24 00 11 00       	add    $0x110024,%eax
  1015af:	8b 08                	mov    (%eax),%ecx
  1015b1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  1015b4:	89 d0                	mov    %edx,%eax
  1015b6:	01 c0                	add    %eax,%eax
  1015b8:	01 d0                	add    %edx,%eax
  1015ba:	c1 e0 02             	shl    $0x2,%eax
  1015bd:	05 20 00 11 00       	add    $0x110020,%eax
  1015c2:	8b 00                	mov    (%eax),%eax
  1015c4:	83 ec 04             	sub    $0x4,%esp
  1015c7:	51                   	push   %ecx
  1015c8:	50                   	push   %eax
  1015c9:	68 6d 48 10 00       	push   $0x10486d
  1015ce:	e8 fc ee ff ff       	call   1004cf <cprintf>
  1015d3:	83 c4 10             	add    $0x10,%esp

/* mon_help - print the information about mon_* functions */
int
mon_help(int argc, char **argv, struct trapframe *tf) {
    int i;
    for (i = 0; i < NCOMMANDS; i ++) {
  1015d6:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  1015da:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1015dd:	83 f8 08             	cmp    $0x8,%eax
  1015e0:	76 bc                	jbe    10159e <mon_help+0xf>
        cprintf("%s - %s\n", commands[i].name, commands[i].desc);
    }
    return 0;
  1015e2:	b8 00 00 00 00       	mov    $0x0,%eax
}
  1015e7:	c9                   	leave  
  1015e8:	c3                   	ret    

001015e9 <mon_kerninfo>:
/* *
 * mon_kerninfo - call print_kerninfo in kern/debug/kdebug.c to
 * print the memory occupancy in kernel.
 * */
int
mon_kerninfo(int argc, char **argv, struct trapframe *tf) {
  1015e9:	55                   	push   %ebp
  1015ea:	89 e5                	mov    %esp,%ebp
  1015ec:	83 ec 08             	sub    $0x8,%esp
    print_kerninfo();
  1015ef:	e8 a3 f5 ff ff       	call   100b97 <print_kerninfo>
    return 0;
  1015f4:	b8 00 00 00 00       	mov    $0x0,%eax
}
  1015f9:	c9                   	leave  
  1015fa:	c3                   	ret    

001015fb <mon_backtrace>:
/* *
 * mon_backtrace - call print_stackframe in kern/debug/kdebug.c to
 * print a backtrace of the stack.
 * */
int
mon_backtrace(int argc, char **argv, struct trapframe *tf) {
  1015fb:	55                   	push   %ebp
  1015fc:	89 e5                	mov    %esp,%ebp
  1015fe:	83 ec 08             	sub    $0x8,%esp
    print_stackframe();
  101601:	e8 db f6 ff ff       	call   100ce1 <print_stackframe>
    return 0;
  101606:	b8 00 00 00 00       	mov    $0x0,%eax
}
  10160b:	c9                   	leave  
  10160c:	c3                   	ret    

0010160d <mon_continue>:

/* mon_continue - continue execution if it isn't kernel panic */
int
mon_continue(int argc, char **argv, struct trapframe *tf) {
  10160d:	55                   	push   %ebp
  10160e:	89 e5                	mov    %esp,%ebp
  101610:	83 ec 08             	sub    $0x8,%esp
    if (is_kernel_panic()) {
  101613:	e8 d2 f0 ff ff       	call   1006ea <is_kernel_panic>
  101618:	85 c0                	test   %eax,%eax
  10161a:	74 17                	je     101633 <mon_continue+0x26>
        cprintf("can't continue execution in kernel panic.\n");
  10161c:	83 ec 0c             	sub    $0xc,%esp
  10161f:	68 78 48 10 00       	push   $0x104878
  101624:	e8 a6 ee ff ff       	call   1004cf <cprintf>
  101629:	83 c4 10             	add    $0x10,%esp
        return 0;
  10162c:	b8 00 00 00 00       	mov    $0x0,%eax
  101631:	eb 1c                	jmp    10164f <mon_continue+0x42>
    }
    if (tf != NULL) {
  101633:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  101637:	74 11                	je     10164a <mon_continue+0x3d>
        tf->tf_eflags &= ~FL_TF;
  101639:	8b 45 10             	mov    0x10(%ebp),%eax
  10163c:	8b 40 38             	mov    0x38(%eax),%eax
  10163f:	80 e4 fe             	and    $0xfe,%ah
  101642:	89 c2                	mov    %eax,%edx
  101644:	8b 45 10             	mov    0x10(%ebp),%eax
  101647:	89 50 38             	mov    %edx,0x38(%eax)
    }
    return -1;
  10164a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  10164f:	c9                   	leave  
  101650:	c3                   	ret    

00101651 <mon_step>:

/* mon_step - run a single step */
int
mon_step(int argc, char **argv, struct trapframe *tf) {
  101651:	55                   	push   %ebp
  101652:	89 e5                	mov    %esp,%ebp
  101654:	83 ec 08             	sub    $0x8,%esp
    if (is_kernel_panic()) {
  101657:	e8 8e f0 ff ff       	call   1006ea <is_kernel_panic>
  10165c:	85 c0                	test   %eax,%eax
  10165e:	74 17                	je     101677 <mon_step+0x26>
        cprintf("can't continue execution in kernel panic.\n");
  101660:	83 ec 0c             	sub    $0xc,%esp
  101663:	68 78 48 10 00       	push   $0x104878
  101668:	e8 62 ee ff ff       	call   1004cf <cprintf>
  10166d:	83 c4 10             	add    $0x10,%esp
        return 0;
  101670:	b8 00 00 00 00       	mov    $0x0,%eax
  101675:	eb 33                	jmp    1016aa <mon_step+0x59>
    }
    if (tf != NULL) {
  101677:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10167b:	74 18                	je     101695 <mon_step+0x44>
        tf->tf_eflags |= FL_TF;
  10167d:	8b 45 10             	mov    0x10(%ebp),%eax
  101680:	8b 40 38             	mov    0x38(%eax),%eax
  101683:	80 cc 01             	or     $0x1,%ah
  101686:	89 c2                	mov    %eax,%edx
  101688:	8b 45 10             	mov    0x10(%ebp),%eax
  10168b:	89 50 38             	mov    %edx,0x38(%eax)
        return -1;
  10168e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  101693:	eb 15                	jmp    1016aa <mon_step+0x59>
    }
    cprintf("trapframe is NULL, can't run step.\n");
  101695:	83 ec 0c             	sub    $0xc,%esp
  101698:	68 a4 48 10 00       	push   $0x1048a4
  10169d:	e8 2d ee ff ff       	call   1004cf <cprintf>
  1016a2:	83 c4 10             	add    $0x10,%esp
    return 0;
  1016a5:	b8 00 00 00 00       	mov    $0x0,%eax
}
  1016aa:	c9                   	leave  
  1016ab:	c3                   	ret    

001016ac <mon_breakpoint>:

/* mon_breakpoint - set a breakpoint */
int
mon_breakpoint(int argc, char **argv, struct trapframe *tf) {
  1016ac:	55                   	push   %ebp
  1016ad:	89 e5                	mov    %esp,%ebp
  1016af:	83 ec 28             	sub    $0x28,%esp
    if (argc != 2) {
  1016b2:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
  1016b6:	74 1a                	je     1016d2 <mon_breakpoint+0x26>
        cprintf("needs 2 parameter(s).\n");
  1016b8:	83 ec 0c             	sub    $0xc,%esp
  1016bb:	68 c8 48 10 00       	push   $0x1048c8
  1016c0:	e8 0a ee ff ff       	call   1004cf <cprintf>
  1016c5:	83 c4 10             	add    $0x10,%esp
        return 0;
  1016c8:	b8 00 00 00 00       	mov    $0x0,%eax
  1016cd:	e9 7c 01 00 00       	jmp    10184e <mon_breakpoint+0x1a2>
    }
    uintptr_t addr;
    unsigned regnum = MAX_DR_NUM, type = 0, len = 3;
  1016d2:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%ebp)
  1016d9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1016e0:	c7 45 e4 03 00 00 00 	movl   $0x3,-0x1c(%ebp)
    int i;
    for (i = 0; i < argc; i ++) {
  1016e7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  1016ee:	e9 dd 00 00 00       	jmp    1017d0 <mon_breakpoint+0x124>
        if (argv[i][0] == '-') {
  1016f3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1016f6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1016fd:	8b 45 0c             	mov    0xc(%ebp),%eax
  101700:	01 d0                	add    %edx,%eax
  101702:	8b 00                	mov    (%eax),%eax
  101704:	0f b6 00             	movzbl (%eax),%eax
  101707:	3c 2d                	cmp    $0x2d,%al
  101709:	0f 85 8d 00 00 00    	jne    10179c <mon_breakpoint+0xf0>
            if (argv[i][1] != 'r' || strlen(argv[i]) != 3) {
  10170f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101712:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101719:	8b 45 0c             	mov    0xc(%ebp),%eax
  10171c:	01 d0                	add    %edx,%eax
  10171e:	8b 00                	mov    (%eax),%eax
  101720:	83 c0 01             	add    $0x1,%eax
  101723:	0f b6 00             	movzbl (%eax),%eax
  101726:	3c 72                	cmp    $0x72,%al
  101728:	0f 85 f6 00 00 00    	jne    101824 <mon_breakpoint+0x178>
  10172e:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101731:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101738:	8b 45 0c             	mov    0xc(%ebp),%eax
  10173b:	01 d0                	add    %edx,%eax
  10173d:	8b 00                	mov    (%eax),%eax
  10173f:	83 ec 0c             	sub    $0xc,%esp
  101742:	50                   	push   %eax
  101743:	e8 5d 1f 00 00       	call   1036a5 <strlen>
  101748:	83 c4 10             	add    $0x10,%esp
  10174b:	83 f8 03             	cmp    $0x3,%eax
  10174e:	0f 85 d0 00 00 00    	jne    101824 <mon_breakpoint+0x178>
                goto bad_argv;
            }
            else {
                switch (argv[i][2]) {
  101754:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101757:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  10175e:	8b 45 0c             	mov    0xc(%ebp),%eax
  101761:	01 d0                	add    %edx,%eax
  101763:	8b 00                	mov    (%eax),%eax
  101765:	83 c0 02             	add    $0x2,%eax
  101768:	0f b6 00             	movzbl (%eax),%eax
  10176b:	0f be c0             	movsbl %al,%eax
  10176e:	83 e8 30             	sub    $0x30,%eax
  101771:	83 f8 03             	cmp    $0x3,%eax
  101774:	0f 87 a6 00 00 00    	ja     101820 <mon_breakpoint+0x174>
                case '0' ... '3': regnum = argv[i][2] - '0'; break;
  10177a:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10177d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101784:	8b 45 0c             	mov    0xc(%ebp),%eax
  101787:	01 d0                	add    %edx,%eax
  101789:	8b 00                	mov    (%eax),%eax
  10178b:	83 c0 02             	add    $0x2,%eax
  10178e:	0f b6 00             	movzbl (%eax),%eax
  101791:	0f be c0             	movsbl %al,%eax
  101794:	83 e8 30             	sub    $0x30,%eax
  101797:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10179a:	eb 30                	jmp    1017cc <mon_breakpoint+0x120>
                }
            }
        }
        else {
            char *endptr;
            addr = strtol(argv[i], &endptr, 16);
  10179c:	8b 45 ec             	mov    -0x14(%ebp),%eax
  10179f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1017a6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1017a9:	01 d0                	add    %edx,%eax
  1017ab:	8b 00                	mov    (%eax),%eax
  1017ad:	83 ec 04             	sub    $0x4,%esp
  1017b0:	6a 10                	push   $0x10
  1017b2:	8d 55 dc             	lea    -0x24(%ebp),%edx
  1017b5:	52                   	push   %edx
  1017b6:	50                   	push   %eax
  1017b7:	e8 bd 20 00 00       	call   103879 <strtol>
  1017bc:	83 c4 10             	add    $0x10,%esp
  1017bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
            if (*endptr != '\0') {
  1017c2:	8b 45 dc             	mov    -0x24(%ebp),%eax
  1017c5:	0f b6 00             	movzbl (%eax),%eax
  1017c8:	84 c0                	test   %al,%al
  1017ca:	75 57                	jne    101823 <mon_breakpoint+0x177>
        return 0;
    }
    uintptr_t addr;
    unsigned regnum = MAX_DR_NUM, type = 0, len = 3;
    int i;
    for (i = 0; i < argc; i ++) {
  1017cc:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
  1017d0:	8b 45 ec             	mov    -0x14(%ebp),%eax
  1017d3:	3b 45 08             	cmp    0x8(%ebp),%eax
  1017d6:	0f 8c 17 ff ff ff    	jl     1016f3 <mon_breakpoint+0x47>
            if (*endptr != '\0') {
                goto bad_argv;
            }
        }
    }
    int ret = debug_enable_dr(regnum, addr, type, len);
  1017dc:	ff 75 e4             	pushl  -0x1c(%ebp)
  1017df:	ff 75 e8             	pushl  -0x18(%ebp)
  1017e2:	ff 75 f4             	pushl  -0xc(%ebp)
  1017e5:	ff 75 f0             	pushl  -0x10(%ebp)
  1017e8:	e8 8f f8 ff ff       	call   10107c <debug_enable_dr>
  1017ed:	83 c4 10             	add    $0x10,%esp
  1017f0:	89 45 e0             	mov    %eax,-0x20(%ebp)
    cprintf("set breakpoint [%d] at 0x%08x: %s.\n", regnum, addr,
  1017f3:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
  1017f7:	75 07                	jne    101800 <mon_breakpoint+0x154>
  1017f9:	b8 df 48 10 00       	mov    $0x1048df,%eax
  1017fe:	eb 05                	jmp    101805 <mon_breakpoint+0x159>
  101800:	b8 e9 48 10 00       	mov    $0x1048e9,%eax
  101805:	50                   	push   %eax
  101806:	ff 75 f4             	pushl  -0xc(%ebp)
  101809:	ff 75 f0             	pushl  -0x10(%ebp)
  10180c:	68 f0 48 10 00       	push   $0x1048f0
  101811:	e8 b9 ec ff ff       	call   1004cf <cprintf>
  101816:	83 c4 10             	add    $0x10,%esp
            (ret == 0) ? "successed" : "failed");
    return 0;
  101819:	b8 00 00 00 00       	mov    $0x0,%eax
  10181e:	eb 2e                	jmp    10184e <mon_breakpoint+0x1a2>
                goto bad_argv;
            }
            else {
                switch (argv[i][2]) {
                case '0' ... '3': regnum = argv[i][2] - '0'; break;
                default: goto bad_argv;
  101820:	90                   	nop
  101821:	eb 01                	jmp    101824 <mon_breakpoint+0x178>
        }
        else {
            char *endptr;
            addr = strtol(argv[i], &endptr, 16);
            if (*endptr != '\0') {
                goto bad_argv;
  101823:	90                   	nop
    cprintf("set breakpoint [%d] at 0x%08x: %s.\n", regnum, addr,
            (ret == 0) ? "successed" : "failed");
    return 0;

bad_argv:
    cprintf("unknow parameter(s): [%d] %s\n", i, argv[i]);
  101824:	8b 45 ec             	mov    -0x14(%ebp),%eax
  101827:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  10182e:	8b 45 0c             	mov    0xc(%ebp),%eax
  101831:	01 d0                	add    %edx,%eax
  101833:	8b 00                	mov    (%eax),%eax
  101835:	83 ec 04             	sub    $0x4,%esp
  101838:	50                   	push   %eax
  101839:	ff 75 ec             	pushl  -0x14(%ebp)
  10183c:	68 14 49 10 00       	push   $0x104914
  101841:	e8 89 ec ff ff       	call   1004cf <cprintf>
  101846:	83 c4 10             	add    $0x10,%esp
    return 0;
  101849:	b8 00 00 00 00       	mov    $0x0,%eax
}
  10184e:	c9                   	leave  
  10184f:	c3                   	ret    

00101850 <mon_watchpoint>:

/* mon_watchpoint - set a watchpoint */
int
mon_watchpoint(int argc, char **argv, struct trapframe *tf) {
  101850:	55                   	push   %ebp
  101851:	89 e5                	mov    %esp,%ebp
  101853:	83 ec 28             	sub    $0x28,%esp
    if (argc < 2) {
  101856:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  10185a:	7f 1a                	jg     101876 <mon_watchpoint+0x26>
        cprintf("needs at least 2 parameter(s).\n");
  10185c:	83 ec 0c             	sub    $0xc,%esp
  10185f:	68 34 49 10 00       	push   $0x104934
  101864:	e8 66 ec ff ff       	call   1004cf <cprintf>
  101869:	83 c4 10             	add    $0x10,%esp
        return 0;
  10186c:	b8 00 00 00 00       	mov    $0x0,%eax
  101871:	e9 32 02 00 00       	jmp    101aa8 <mon_watchpoint+0x258>
    }
    uintptr_t addr;
    unsigned regnum = MAX_DR_NUM, type = 1, len = 3;
  101876:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%ebp)
  10187d:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
  101884:	c7 45 e8 03 00 00 00 	movl   $0x3,-0x18(%ebp)
    int i;
    for (i = 0; i < argc; i ++) {
  10188b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  101892:	e9 93 01 00 00       	jmp    101a2a <mon_watchpoint+0x1da>
        if (argv[i][0] == '-') {
  101897:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10189a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1018a1:	8b 45 0c             	mov    0xc(%ebp),%eax
  1018a4:	01 d0                	add    %edx,%eax
  1018a6:	8b 00                	mov    (%eax),%eax
  1018a8:	0f b6 00             	movzbl (%eax),%eax
  1018ab:	3c 2d                	cmp    $0x2d,%al
  1018ad:	0f 85 43 01 00 00    	jne    1019f6 <mon_watchpoint+0x1a6>
            char c = argv[i][1];
  1018b3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1018b6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1018bd:	8b 45 0c             	mov    0xc(%ebp),%eax
  1018c0:	01 d0                	add    %edx,%eax
  1018c2:	8b 00                	mov    (%eax),%eax
  1018c4:	0f b6 40 01          	movzbl 0x1(%eax),%eax
  1018c8:	88 45 e3             	mov    %al,-0x1d(%ebp)
            if ((c != 'r' && c != 't' && c != 'l') || strlen(argv[i]) != 3) {
  1018cb:	80 7d e3 72          	cmpb   $0x72,-0x1d(%ebp)
  1018cf:	74 10                	je     1018e1 <mon_watchpoint+0x91>
  1018d1:	80 7d e3 74          	cmpb   $0x74,-0x1d(%ebp)
  1018d5:	74 0a                	je     1018e1 <mon_watchpoint+0x91>
  1018d7:	80 7d e3 6c          	cmpb   $0x6c,-0x1d(%ebp)
  1018db:	0f 85 9d 01 00 00    	jne    101a7e <mon_watchpoint+0x22e>
  1018e1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1018e4:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1018eb:	8b 45 0c             	mov    0xc(%ebp),%eax
  1018ee:	01 d0                	add    %edx,%eax
  1018f0:	8b 00                	mov    (%eax),%eax
  1018f2:	83 ec 0c             	sub    $0xc,%esp
  1018f5:	50                   	push   %eax
  1018f6:	e8 aa 1d 00 00       	call   1036a5 <strlen>
  1018fb:	83 c4 10             	add    $0x10,%esp
  1018fe:	83 f8 03             	cmp    $0x3,%eax
  101901:	0f 85 77 01 00 00    	jne    101a7e <mon_watchpoint+0x22e>
                goto bad_argv;
            }
            switch (c) {
  101907:	0f be 45 e3          	movsbl -0x1d(%ebp),%eax
  10190b:	83 f8 72             	cmp    $0x72,%eax
  10190e:	74 13                	je     101923 <mon_watchpoint+0xd3>
  101910:	83 f8 74             	cmp    $0x74,%eax
  101913:	74 5a                	je     10196f <mon_watchpoint+0x11f>
  101915:	83 f8 6c             	cmp    $0x6c,%eax
  101918:	0f 84 8d 00 00 00    	je     1019ab <mon_watchpoint+0x15b>
  10191e:	e9 03 01 00 00       	jmp    101a26 <mon_watchpoint+0x1d6>
            case 'r':
                switch (argv[i][2]) {
  101923:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101926:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  10192d:	8b 45 0c             	mov    0xc(%ebp),%eax
  101930:	01 d0                	add    %edx,%eax
  101932:	8b 00                	mov    (%eax),%eax
  101934:	83 c0 02             	add    $0x2,%eax
  101937:	0f b6 00             	movzbl (%eax),%eax
  10193a:	0f be c0             	movsbl %al,%eax
  10193d:	83 e8 30             	sub    $0x30,%eax
  101940:	83 f8 03             	cmp    $0x3,%eax
  101943:	0f 87 31 01 00 00    	ja     101a7a <mon_watchpoint+0x22a>
                case '0' ... '3': regnum = argv[i][2] - '0'; break;
  101949:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  10194c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101953:	8b 45 0c             	mov    0xc(%ebp),%eax
  101956:	01 d0                	add    %edx,%eax
  101958:	8b 00                	mov    (%eax),%eax
  10195a:	83 c0 02             	add    $0x2,%eax
  10195d:	0f b6 00             	movzbl (%eax),%eax
  101960:	0f be c0             	movsbl %al,%eax
  101963:	83 e8 30             	sub    $0x30,%eax
  101966:	89 45 f0             	mov    %eax,-0x10(%ebp)
  101969:	90                   	nop
                default: goto bad_argv;
                }
                break;
  10196a:	e9 b7 00 00 00       	jmp    101a26 <mon_watchpoint+0x1d6>
            case 't':
                switch (argv[i][2]) {
  10196f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101972:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101979:	8b 45 0c             	mov    0xc(%ebp),%eax
  10197c:	01 d0                	add    %edx,%eax
  10197e:	8b 00                	mov    (%eax),%eax
  101980:	83 c0 02             	add    $0x2,%eax
  101983:	0f b6 00             	movzbl (%eax),%eax
  101986:	0f be c0             	movsbl %al,%eax
  101989:	83 f8 61             	cmp    $0x61,%eax
  10198c:	74 13                	je     1019a1 <mon_watchpoint+0x151>
  10198e:	83 f8 77             	cmp    $0x77,%eax
  101991:	74 05                	je     101998 <mon_watchpoint+0x148>
                case 'w': type = 1; break;
                case 'a': type = 3; break;
                default: goto bad_argv;
  101993:	e9 e6 00 00 00       	jmp    101a7e <mon_watchpoint+0x22e>
                default: goto bad_argv;
                }
                break;
            case 't':
                switch (argv[i][2]) {
                case 'w': type = 1; break;
  101998:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
  10199f:	eb 08                	jmp    1019a9 <mon_watchpoint+0x159>
                case 'a': type = 3; break;
  1019a1:	c7 45 ec 03 00 00 00 	movl   $0x3,-0x14(%ebp)
  1019a8:	90                   	nop
                default: goto bad_argv;
                }
                break;
  1019a9:	eb 7b                	jmp    101a26 <mon_watchpoint+0x1d6>
            case 'l':
                switch (argv[i][2]) {
  1019ab:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1019ae:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  1019b5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1019b8:	01 d0                	add    %edx,%eax
  1019ba:	8b 00                	mov    (%eax),%eax
  1019bc:	83 c0 02             	add    $0x2,%eax
  1019bf:	0f b6 00             	movzbl (%eax),%eax
  1019c2:	0f be c0             	movsbl %al,%eax
  1019c5:	83 f8 32             	cmp    $0x32,%eax
  1019c8:	74 18                	je     1019e2 <mon_watchpoint+0x192>
  1019ca:	83 f8 34             	cmp    $0x34,%eax
  1019cd:	74 1c                	je     1019eb <mon_watchpoint+0x19b>
  1019cf:	83 f8 31             	cmp    $0x31,%eax
  1019d2:	74 05                	je     1019d9 <mon_watchpoint+0x189>
                case '1': len = 0; break;
                case '2': len = 1; break;
                case '4': len = 3; break;
                default: goto bad_argv;
  1019d4:	e9 a5 00 00 00       	jmp    101a7e <mon_watchpoint+0x22e>
                default: goto bad_argv;
                }
                break;
            case 'l':
                switch (argv[i][2]) {
                case '1': len = 0; break;
  1019d9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  1019e0:	eb 11                	jmp    1019f3 <mon_watchpoint+0x1a3>
                case '2': len = 1; break;
  1019e2:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
  1019e9:	eb 08                	jmp    1019f3 <mon_watchpoint+0x1a3>
                case '4': len = 3; break;
  1019eb:	c7 45 e8 03 00 00 00 	movl   $0x3,-0x18(%ebp)
  1019f2:	90                   	nop
                default: goto bad_argv;
                }
                break;
  1019f3:	90                   	nop
  1019f4:	eb 30                	jmp    101a26 <mon_watchpoint+0x1d6>
            }
        }
        else {
            char *endptr;
            addr = strtol(argv[i], &endptr, 16);
  1019f6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  1019f9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101a00:	8b 45 0c             	mov    0xc(%ebp),%eax
  101a03:	01 d0                	add    %edx,%eax
  101a05:	8b 00                	mov    (%eax),%eax
  101a07:	83 ec 04             	sub    $0x4,%esp
  101a0a:	6a 10                	push   $0x10
  101a0c:	8d 55 d8             	lea    -0x28(%ebp),%edx
  101a0f:	52                   	push   %edx
  101a10:	50                   	push   %eax
  101a11:	e8 63 1e 00 00       	call   103879 <strtol>
  101a16:	83 c4 10             	add    $0x10,%esp
  101a19:	89 45 f4             	mov    %eax,-0xc(%ebp)
            if (*endptr != '\0') {
  101a1c:	8b 45 d8             	mov    -0x28(%ebp),%eax
  101a1f:	0f b6 00             	movzbl (%eax),%eax
  101a22:	84 c0                	test   %al,%al
  101a24:	75 57                	jne    101a7d <mon_watchpoint+0x22d>
        return 0;
    }
    uintptr_t addr;
    unsigned regnum = MAX_DR_NUM, type = 1, len = 3;
    int i;
    for (i = 0; i < argc; i ++) {
  101a26:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
  101a2a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101a2d:	3b 45 08             	cmp    0x8(%ebp),%eax
  101a30:	0f 8c 61 fe ff ff    	jl     101897 <mon_watchpoint+0x47>
            if (*endptr != '\0') {
                goto bad_argv;
            }
        }
    }
    int ret = debug_enable_dr(regnum, addr, type, len);
  101a36:	ff 75 e8             	pushl  -0x18(%ebp)
  101a39:	ff 75 ec             	pushl  -0x14(%ebp)
  101a3c:	ff 75 f4             	pushl  -0xc(%ebp)
  101a3f:	ff 75 f0             	pushl  -0x10(%ebp)
  101a42:	e8 35 f6 ff ff       	call   10107c <debug_enable_dr>
  101a47:	83 c4 10             	add    $0x10,%esp
  101a4a:	89 45 dc             	mov    %eax,-0x24(%ebp)
    cprintf("set watchpoint [%d] at 0x%08x: %s.\n", regnum, addr,
  101a4d:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
  101a51:	75 07                	jne    101a5a <mon_watchpoint+0x20a>
  101a53:	b8 df 48 10 00       	mov    $0x1048df,%eax
  101a58:	eb 05                	jmp    101a5f <mon_watchpoint+0x20f>
  101a5a:	b8 e9 48 10 00       	mov    $0x1048e9,%eax
  101a5f:	50                   	push   %eax
  101a60:	ff 75 f4             	pushl  -0xc(%ebp)
  101a63:	ff 75 f0             	pushl  -0x10(%ebp)
  101a66:	68 54 49 10 00       	push   $0x104954
  101a6b:	e8 5f ea ff ff       	call   1004cf <cprintf>
  101a70:	83 c4 10             	add    $0x10,%esp
            (ret == 0) ? "successed" : "failed");
    return 0;
  101a73:	b8 00 00 00 00       	mov    $0x0,%eax
  101a78:	eb 2e                	jmp    101aa8 <mon_watchpoint+0x258>
            }
            switch (c) {
            case 'r':
                switch (argv[i][2]) {
                case '0' ... '3': regnum = argv[i][2] - '0'; break;
                default: goto bad_argv;
  101a7a:	90                   	nop
  101a7b:	eb 01                	jmp    101a7e <mon_watchpoint+0x22e>
        }
        else {
            char *endptr;
            addr = strtol(argv[i], &endptr, 16);
            if (*endptr != '\0') {
                goto bad_argv;
  101a7d:	90                   	nop
    cprintf("set watchpoint [%d] at 0x%08x: %s.\n", regnum, addr,
            (ret == 0) ? "successed" : "failed");
    return 0;

bad_argv:
    cprintf("unknow parameter(s): [%d] %s\n", i, argv[i]);
  101a7e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  101a81:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  101a88:	8b 45 0c             	mov    0xc(%ebp),%eax
  101a8b:	01 d0                	add    %edx,%eax
  101a8d:	8b 00                	mov    (%eax),%eax
  101a8f:	83 ec 04             	sub    $0x4,%esp
  101a92:	50                   	push   %eax
  101a93:	ff 75 e4             	pushl  -0x1c(%ebp)
  101a96:	68 14 49 10 00       	push   $0x104914
  101a9b:	e8 2f ea ff ff       	call   1004cf <cprintf>
  101aa0:	83 c4 10             	add    $0x10,%esp
    return 0;
  101aa3:	b8 00 00 00 00       	mov    $0x0,%eax
}
  101aa8:	c9                   	leave  
  101aa9:	c3                   	ret    

00101aaa <mon_delete_dr>:

/* mon_delete_dr - delete a breakpoint or watchpoint */
int
mon_delete_dr(int argc, char **argv, struct trapframe *tf) {
  101aaa:	55                   	push   %ebp
  101aab:	89 e5                	mov    %esp,%ebp
  101aad:	83 ec 18             	sub    $0x18,%esp
    if (argc != 1) {
  101ab0:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
  101ab4:	74 1a                	je     101ad0 <mon_delete_dr+0x26>
        cprintf("needs 1 parameter(s).\n");
  101ab6:	83 ec 0c             	sub    $0xc,%esp
  101ab9:	68 78 49 10 00       	push   $0x104978
  101abe:	e8 0c ea ff ff       	call   1004cf <cprintf>
  101ac3:	83 c4 10             	add    $0x10,%esp
        return 0;
  101ac6:	b8 00 00 00 00       	mov    $0x0,%eax
  101acb:	e9 a1 00 00 00       	jmp    101b71 <mon_delete_dr+0xc7>
    }
    unsigned regnum = MAX_DR_NUM;
  101ad0:	c7 45 f4 04 00 00 00 	movl   $0x4,-0xc(%ebp)
    if (strlen(argv[0]) != 1) {
  101ad7:	8b 45 0c             	mov    0xc(%ebp),%eax
  101ada:	8b 00                	mov    (%eax),%eax
  101adc:	83 ec 0c             	sub    $0xc,%esp
  101adf:	50                   	push   %eax
  101ae0:	e8 c0 1b 00 00       	call   1036a5 <strlen>
  101ae5:	83 c4 10             	add    $0x10,%esp
  101ae8:	83 f8 01             	cmp    $0x1,%eax
  101aeb:	75 63                	jne    101b50 <mon_delete_dr+0xa6>
        goto bad_argv;
    }
    else {
        switch (argv[0][0]) {
  101aed:	8b 45 0c             	mov    0xc(%ebp),%eax
  101af0:	8b 00                	mov    (%eax),%eax
  101af2:	0f b6 00             	movzbl (%eax),%eax
  101af5:	0f be c0             	movsbl %al,%eax
  101af8:	83 e8 30             	sub    $0x30,%eax
  101afb:	83 f8 03             	cmp    $0x3,%eax
  101afe:	77 53                	ja     101b53 <mon_delete_dr+0xa9>
        case '0' ... '3': regnum = argv[0][0] - '0'; break;
  101b00:	8b 45 0c             	mov    0xc(%ebp),%eax
  101b03:	8b 00                	mov    (%eax),%eax
  101b05:	0f b6 00             	movzbl (%eax),%eax
  101b08:	0f be c0             	movsbl %al,%eax
  101b0b:	83 e8 30             	sub    $0x30,%eax
  101b0e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  101b11:	90                   	nop
        default: goto bad_argv;
        }
    }
    int ret = debug_disable_dr(regnum);
  101b12:	83 ec 0c             	sub    $0xc,%esp
  101b15:	ff 75 f4             	pushl  -0xc(%ebp)
  101b18:	e8 1f f6 ff ff       	call   10113c <debug_disable_dr>
  101b1d:	83 c4 10             	add    $0x10,%esp
  101b20:	89 45 f0             	mov    %eax,-0x10(%ebp)
    cprintf("delete [%d]: %s.\n", regnum,
  101b23:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  101b27:	75 07                	jne    101b30 <mon_delete_dr+0x86>
  101b29:	b8 df 48 10 00       	mov    $0x1048df,%eax
  101b2e:	eb 05                	jmp    101b35 <mon_delete_dr+0x8b>
  101b30:	b8 e9 48 10 00       	mov    $0x1048e9,%eax
  101b35:	83 ec 04             	sub    $0x4,%esp
  101b38:	50                   	push   %eax
  101b39:	ff 75 f4             	pushl  -0xc(%ebp)
  101b3c:	68 8f 49 10 00       	push   $0x10498f
  101b41:	e8 89 e9 ff ff       	call   1004cf <cprintf>
  101b46:	83 c4 10             	add    $0x10,%esp
            (ret == 0) ? "successed" : "failed");
    return 0;
  101b49:	b8 00 00 00 00       	mov    $0x0,%eax
  101b4e:	eb 21                	jmp    101b71 <mon_delete_dr+0xc7>
        cprintf("needs 1 parameter(s).\n");
        return 0;
    }
    unsigned regnum = MAX_DR_NUM;
    if (strlen(argv[0]) != 1) {
        goto bad_argv;
  101b50:	90                   	nop
  101b51:	eb 01                	jmp    101b54 <mon_delete_dr+0xaa>
    }
    else {
        switch (argv[0][0]) {
        case '0' ... '3': regnum = argv[0][0] - '0'; break;
        default: goto bad_argv;
  101b53:	90                   	nop
    cprintf("delete [%d]: %s.\n", regnum,
            (ret == 0) ? "successed" : "failed");
    return 0;

bad_argv:
    cprintf("unknow parameter(s): [%d] %s\n", 0, argv[0]);
  101b54:	8b 45 0c             	mov    0xc(%ebp),%eax
  101b57:	8b 00                	mov    (%eax),%eax
  101b59:	83 ec 04             	sub    $0x4,%esp
  101b5c:	50                   	push   %eax
  101b5d:	6a 00                	push   $0x0
  101b5f:	68 14 49 10 00       	push   $0x104914
  101b64:	e8 66 e9 ff ff       	call   1004cf <cprintf>
  101b69:	83 c4 10             	add    $0x10,%esp
    return 0;
  101b6c:	b8 00 00 00 00       	mov    $0x0,%eax
}
  101b71:	c9                   	leave  
  101b72:	c3                   	ret    

00101b73 <mon_list_dr>:

/* mon_list_dr - list all debug registers */
int
mon_list_dr(int argc, char **argv, struct trapframe *tf) {
  101b73:	55                   	push   %ebp
  101b74:	89 e5                	mov    %esp,%ebp
  101b76:	83 ec 08             	sub    $0x8,%esp
    debug_list_dr();
  101b79:	e8 68 f6 ff ff       	call   1011e6 <debug_list_dr>
    return 0;
  101b7e:	b8 00 00 00 00       	mov    $0x0,%eax
}
  101b83:	c9                   	leave  
  101b84:	c3                   	ret    

00101b85 <clock_init>:
/* *
 * clock_init - initialize 8253 clock to interrupt 100 times per second,
 * and then enable IRQ_TIMER.
 * */
void
clock_init(void) {
  101b85:	55                   	push   %ebp
  101b86:	89 e5                	mov    %esp,%ebp
  101b88:	83 ec 18             	sub    $0x18,%esp
  101b8b:	66 c7 45 f6 43 00    	movw   $0x43,-0xa(%ebp)
  101b91:	c6 45 ef 34          	movb   $0x34,-0x11(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  101b95:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
  101b99:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  101b9d:	ee                   	out    %al,(%dx)
  101b9e:	66 c7 45 f4 40 00    	movw   $0x40,-0xc(%ebp)
  101ba4:	c6 45 f0 9c          	movb   $0x9c,-0x10(%ebp)
  101ba8:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
  101bac:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
  101bb0:	ee                   	out    %al,(%dx)
  101bb1:	66 c7 45 f2 40 00    	movw   $0x40,-0xe(%ebp)
  101bb7:	c6 45 f1 2e          	movb   $0x2e,-0xf(%ebp)
  101bbb:	0f b6 45 f1          	movzbl -0xf(%ebp),%eax
  101bbf:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  101bc3:	ee                   	out    %al,(%dx)
    outb(TIMER_MODE, TIMER_SEL0 | TIMER_RATEGEN | TIMER_16BIT);
    outb(IO_TIMER1, TIMER_DIV(100) % 256);
    outb(IO_TIMER1, TIMER_DIV(100) / 256);

    // initialize time counter 'ticks' to zero
    ticks = 0;
  101bc4:	c7 05 88 19 11 00 00 	movl   $0x0,0x111988
  101bcb:	00 00 00 

    cprintf("++ setup timer interrupts\n");
  101bce:	83 ec 0c             	sub    $0xc,%esp
  101bd1:	68 a1 49 10 00       	push   $0x1049a1
  101bd6:	e8 f4 e8 ff ff       	call   1004cf <cprintf>
  101bdb:	83 c4 10             	add    $0x10,%esp
    pic_enable(IRQ_TIMER);
  101bde:	83 ec 0c             	sub    $0xc,%esp
  101be1:	6a 00                	push   $0x0
  101be3:	e8 ce 08 00 00       	call   1024b6 <pic_enable>
  101be8:	83 c4 10             	add    $0x10,%esp
}
  101beb:	90                   	nop
  101bec:	c9                   	leave  
  101bed:	c3                   	ret    

00101bee <delay>:
#include <picirq.h>
#include <trap.h>

/* stupid I/O delay routine necessitated by historical PC design flaws */
static void
delay(void) {
  101bee:	55                   	push   %ebp
  101bef:	89 e5                	mov    %esp,%ebp
  101bf1:	83 ec 10             	sub    $0x10,%esp
  101bf4:	66 c7 45 fe 84 00    	movw   $0x84,-0x2(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  101bfa:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  101bfe:	89 c2                	mov    %eax,%edx
  101c00:	ec                   	in     (%dx),%al
  101c01:	88 45 f4             	mov    %al,-0xc(%ebp)
  101c04:	66 c7 45 fc 84 00    	movw   $0x84,-0x4(%ebp)
  101c0a:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
  101c0e:	89 c2                	mov    %eax,%edx
  101c10:	ec                   	in     (%dx),%al
  101c11:	88 45 f5             	mov    %al,-0xb(%ebp)
  101c14:	66 c7 45 fa 84 00    	movw   $0x84,-0x6(%ebp)
  101c1a:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
  101c1e:	89 c2                	mov    %eax,%edx
  101c20:	ec                   	in     (%dx),%al
  101c21:	88 45 f6             	mov    %al,-0xa(%ebp)
  101c24:	66 c7 45 f8 84 00    	movw   $0x84,-0x8(%ebp)
  101c2a:	0f b7 45 f8          	movzwl -0x8(%ebp),%eax
  101c2e:	89 c2                	mov    %eax,%edx
  101c30:	ec                   	in     (%dx),%al
  101c31:	88 45 f7             	mov    %al,-0x9(%ebp)
    inb(0x84);
    inb(0x84);
    inb(0x84);
    inb(0x84);
}
  101c34:	90                   	nop
  101c35:	c9                   	leave  
  101c36:	c3                   	ret    

00101c37 <cga_init>:
static uint16_t addr_6845;

/* TEXT-mode CGA/VGA display output */

static void
cga_init(void) {
  101c37:	55                   	push   %ebp
  101c38:	89 e5                	mov    %esp,%ebp
  101c3a:	83 ec 20             	sub    $0x20,%esp
    volatile uint16_t *cp = (uint16_t *)CGA_BUF;
  101c3d:	c7 45 fc 00 80 0b 00 	movl   $0xb8000,-0x4(%ebp)
    uint16_t was = *cp;
  101c44:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101c47:	0f b7 00             	movzwl (%eax),%eax
  101c4a:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
    *cp = (uint16_t) 0xA55A;
  101c4e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101c51:	66 c7 00 5a a5       	movw   $0xa55a,(%eax)
    if (*cp != 0xA55A) {
  101c56:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101c59:	0f b7 00             	movzwl (%eax),%eax
  101c5c:	66 3d 5a a5          	cmp    $0xa55a,%ax
  101c60:	74 12                	je     101c74 <cga_init+0x3d>
        cp = (uint16_t*)MONO_BUF;
  101c62:	c7 45 fc 00 00 0b 00 	movl   $0xb0000,-0x4(%ebp)
        addr_6845 = MONO_BASE;
  101c69:	66 c7 05 e6 0e 11 00 	movw   $0x3b4,0x110ee6
  101c70:	b4 03 
  101c72:	eb 13                	jmp    101c87 <cga_init+0x50>
    } else {
        *cp = was;
  101c74:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101c77:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
  101c7b:	66 89 10             	mov    %dx,(%eax)
        addr_6845 = CGA_BASE;
  101c7e:	66 c7 05 e6 0e 11 00 	movw   $0x3d4,0x110ee6
  101c85:	d4 03 
    }

    // Extract cursor location
    uint32_t pos;
    outb(addr_6845, 14);
  101c87:	0f b7 05 e6 0e 11 00 	movzwl 0x110ee6,%eax
  101c8e:	0f b7 c0             	movzwl %ax,%eax
  101c91:	66 89 45 f8          	mov    %ax,-0x8(%ebp)
  101c95:	c6 45 ea 0e          	movb   $0xe,-0x16(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  101c99:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
  101c9d:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
  101ca1:	ee                   	out    %al,(%dx)
    pos = inb(addr_6845 + 1) << 8;
  101ca2:	0f b7 05 e6 0e 11 00 	movzwl 0x110ee6,%eax
  101ca9:	83 c0 01             	add    $0x1,%eax
  101cac:	0f b7 c0             	movzwl %ax,%eax
  101caf:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  101cb3:	0f b7 45 f2          	movzwl -0xe(%ebp),%eax
  101cb7:	89 c2                	mov    %eax,%edx
  101cb9:	ec                   	in     (%dx),%al
  101cba:	88 45 eb             	mov    %al,-0x15(%ebp)
    return data;
  101cbd:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  101cc1:	0f b6 c0             	movzbl %al,%eax
  101cc4:	c1 e0 08             	shl    $0x8,%eax
  101cc7:	89 45 f4             	mov    %eax,-0xc(%ebp)
    outb(addr_6845, 15);
  101cca:	0f b7 05 e6 0e 11 00 	movzwl 0x110ee6,%eax
  101cd1:	0f b7 c0             	movzwl %ax,%eax
  101cd4:	66 89 45 f0          	mov    %ax,-0x10(%ebp)
  101cd8:	c6 45 ec 0f          	movb   $0xf,-0x14(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  101cdc:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
  101ce0:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  101ce4:	ee                   	out    %al,(%dx)
    pos |= inb(addr_6845 + 1);
  101ce5:	0f b7 05 e6 0e 11 00 	movzwl 0x110ee6,%eax
  101cec:	83 c0 01             	add    $0x1,%eax
  101cef:	0f b7 c0             	movzwl %ax,%eax
  101cf2:	66 89 45 ee          	mov    %ax,-0x12(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  101cf6:	0f b7 45 ee          	movzwl -0x12(%ebp),%eax
  101cfa:	89 c2                	mov    %eax,%edx
  101cfc:	ec                   	in     (%dx),%al
  101cfd:	88 45 ed             	mov    %al,-0x13(%ebp)
    return data;
  101d00:	0f b6 45 ed          	movzbl -0x13(%ebp),%eax
  101d04:	0f b6 c0             	movzbl %al,%eax
  101d07:	09 45 f4             	or     %eax,-0xc(%ebp)

    crt_buf = (uint16_t*) cp;
  101d0a:	8b 45 fc             	mov    -0x4(%ebp),%eax
  101d0d:	a3 e0 0e 11 00       	mov    %eax,0x110ee0
    crt_pos = pos;
  101d12:	8b 45 f4             	mov    -0xc(%ebp),%eax
  101d15:	66 a3 e4 0e 11 00    	mov    %ax,0x110ee4
}
  101d1b:	90                   	nop
  101d1c:	c9                   	leave  
  101d1d:	c3                   	ret    

00101d1e <serial_init>:

static bool serial_exists = 0;

static void
serial_init(void) {
  101d1e:	55                   	push   %ebp
  101d1f:	89 e5                	mov    %esp,%ebp
  101d21:	83 ec 28             	sub    $0x28,%esp
  101d24:	66 c7 45 f6 fa 03    	movw   $0x3fa,-0xa(%ebp)
  101d2a:	c6 45 da 00          	movb   $0x0,-0x26(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  101d2e:	0f b6 45 da          	movzbl -0x26(%ebp),%eax
  101d32:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  101d36:	ee                   	out    %al,(%dx)
  101d37:	66 c7 45 f4 fb 03    	movw   $0x3fb,-0xc(%ebp)
  101d3d:	c6 45 db 80          	movb   $0x80,-0x25(%ebp)
  101d41:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  101d45:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
  101d49:	ee                   	out    %al,(%dx)
  101d4a:	66 c7 45 f2 f8 03    	movw   $0x3f8,-0xe(%ebp)
  101d50:	c6 45 dc 0c          	movb   $0xc,-0x24(%ebp)
  101d54:	0f b6 45 dc          	movzbl -0x24(%ebp),%eax
  101d58:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  101d5c:	ee                   	out    %al,(%dx)
  101d5d:	66 c7 45 f0 f9 03    	movw   $0x3f9,-0x10(%ebp)
  101d63:	c6 45 dd 00          	movb   $0x0,-0x23(%ebp)
  101d67:	0f b6 45 dd          	movzbl -0x23(%ebp),%eax
  101d6b:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  101d6f:	ee                   	out    %al,(%dx)
  101d70:	66 c7 45 ee fb 03    	movw   $0x3fb,-0x12(%ebp)
  101d76:	c6 45 de 03          	movb   $0x3,-0x22(%ebp)
  101d7a:	0f b6 45 de          	movzbl -0x22(%ebp),%eax
  101d7e:	0f b7 55 ee          	movzwl -0x12(%ebp),%edx
  101d82:	ee                   	out    %al,(%dx)
  101d83:	66 c7 45 ec fc 03    	movw   $0x3fc,-0x14(%ebp)
  101d89:	c6 45 df 00          	movb   $0x0,-0x21(%ebp)
  101d8d:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
  101d91:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
  101d95:	ee                   	out    %al,(%dx)
  101d96:	66 c7 45 ea f9 03    	movw   $0x3f9,-0x16(%ebp)
  101d9c:	c6 45 e0 01          	movb   $0x1,-0x20(%ebp)
  101da0:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
  101da4:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  101da8:	ee                   	out    %al,(%dx)
  101da9:	66 c7 45 e8 fd 03    	movw   $0x3fd,-0x18(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  101daf:	0f b7 45 e8          	movzwl -0x18(%ebp),%eax
  101db3:	89 c2                	mov    %eax,%edx
  101db5:	ec                   	in     (%dx),%al
  101db6:	88 45 e1             	mov    %al,-0x1f(%ebp)
    return data;
  101db9:	0f b6 45 e1          	movzbl -0x1f(%ebp),%eax
    // Enable rcv interrupts
    outb(COM1 + COM_IER, COM_IER_RDI);

    // Clear any preexisting overrun indications and interrupts
    // Serial port doesn't exist if COM_LSR returns 0xFF
    serial_exists = (inb(COM1 + COM_LSR) != 0xFF);
  101dbd:	3c ff                	cmp    $0xff,%al
  101dbf:	0f 95 c0             	setne  %al
  101dc2:	0f b6 c0             	movzbl %al,%eax
  101dc5:	a3 e8 0e 11 00       	mov    %eax,0x110ee8
  101dca:	66 c7 45 e6 fa 03    	movw   $0x3fa,-0x1a(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  101dd0:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
  101dd4:	89 c2                	mov    %eax,%edx
  101dd6:	ec                   	in     (%dx),%al
  101dd7:	88 45 e2             	mov    %al,-0x1e(%ebp)
  101dda:	66 c7 45 e4 f8 03    	movw   $0x3f8,-0x1c(%ebp)
  101de0:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
  101de4:	89 c2                	mov    %eax,%edx
  101de6:	ec                   	in     (%dx),%al
  101de7:	88 45 e3             	mov    %al,-0x1d(%ebp)
    (void) inb(COM1+COM_IIR);
    (void) inb(COM1+COM_RX);

    if (serial_exists) {
  101dea:	a1 e8 0e 11 00       	mov    0x110ee8,%eax
  101def:	85 c0                	test   %eax,%eax
  101df1:	74 0d                	je     101e00 <serial_init+0xe2>
        pic_enable(IRQ_COM1);
  101df3:	83 ec 0c             	sub    $0xc,%esp
  101df6:	6a 04                	push   $0x4
  101df8:	e8 b9 06 00 00       	call   1024b6 <pic_enable>
  101dfd:	83 c4 10             	add    $0x10,%esp
    }
}
  101e00:	90                   	nop
  101e01:	c9                   	leave  
  101e02:	c3                   	ret    

00101e03 <lpt_putc_sub>:

static void
lpt_putc_sub(int c) {
  101e03:	55                   	push   %ebp
  101e04:	89 e5                	mov    %esp,%ebp
  101e06:	83 ec 10             	sub    $0x10,%esp
    int i;
    for (i = 0; !(inb(LPTPORT + 1) & 0x80) && i < 12800; i ++) {
  101e09:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  101e10:	eb 09                	jmp    101e1b <lpt_putc_sub+0x18>
        delay();
  101e12:	e8 d7 fd ff ff       	call   101bee <delay>
}

static void
lpt_putc_sub(int c) {
    int i;
    for (i = 0; !(inb(LPTPORT + 1) & 0x80) && i < 12800; i ++) {
  101e17:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  101e1b:	66 c7 45 f4 79 03    	movw   $0x379,-0xc(%ebp)
  101e21:	0f b7 45 f4          	movzwl -0xc(%ebp),%eax
  101e25:	89 c2                	mov    %eax,%edx
  101e27:	ec                   	in     (%dx),%al
  101e28:	88 45 f3             	mov    %al,-0xd(%ebp)
    return data;
  101e2b:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  101e2f:	84 c0                	test   %al,%al
  101e31:	78 09                	js     101e3c <lpt_putc_sub+0x39>
  101e33:	81 7d fc ff 31 00 00 	cmpl   $0x31ff,-0x4(%ebp)
  101e3a:	7e d6                	jle    101e12 <lpt_putc_sub+0xf>
        delay();
    }
    outb(LPTPORT + 0, c);
  101e3c:	8b 45 08             	mov    0x8(%ebp),%eax
  101e3f:	0f b6 c0             	movzbl %al,%eax
  101e42:	66 c7 45 f8 78 03    	movw   $0x378,-0x8(%ebp)
  101e48:	88 45 f0             	mov    %al,-0x10(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  101e4b:	0f b6 45 f0          	movzbl -0x10(%ebp),%eax
  101e4f:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
  101e53:	ee                   	out    %al,(%dx)
  101e54:	66 c7 45 f6 7a 03    	movw   $0x37a,-0xa(%ebp)
  101e5a:	c6 45 f1 0d          	movb   $0xd,-0xf(%ebp)
  101e5e:	0f b6 45 f1          	movzbl -0xf(%ebp),%eax
  101e62:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  101e66:	ee                   	out    %al,(%dx)
  101e67:	66 c7 45 fa 7a 03    	movw   $0x37a,-0x6(%ebp)
  101e6d:	c6 45 f2 08          	movb   $0x8,-0xe(%ebp)
  101e71:	0f b6 45 f2          	movzbl -0xe(%ebp),%eax
  101e75:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
  101e79:	ee                   	out    %al,(%dx)
    outb(LPTPORT + 2, 0x08 | 0x04 | 0x01);
    outb(LPTPORT + 2, 0x08);
}
  101e7a:	90                   	nop
  101e7b:	c9                   	leave  
  101e7c:	c3                   	ret    

00101e7d <lpt_putc>:

/* lpt_putc - copy console output to parallel port */
static void
lpt_putc(int c) {
  101e7d:	55                   	push   %ebp
  101e7e:	89 e5                	mov    %esp,%ebp
    if (c != '\b') {
  101e80:	83 7d 08 08          	cmpl   $0x8,0x8(%ebp)
  101e84:	74 0d                	je     101e93 <lpt_putc+0x16>
        lpt_putc_sub(c);
  101e86:	ff 75 08             	pushl  0x8(%ebp)
  101e89:	e8 75 ff ff ff       	call   101e03 <lpt_putc_sub>
  101e8e:	83 c4 04             	add    $0x4,%esp
    else {
        lpt_putc_sub('\b');
        lpt_putc_sub(' ');
        lpt_putc_sub('\b');
    }
}
  101e91:	eb 1e                	jmp    101eb1 <lpt_putc+0x34>
lpt_putc(int c) {
    if (c != '\b') {
        lpt_putc_sub(c);
    }
    else {
        lpt_putc_sub('\b');
  101e93:	6a 08                	push   $0x8
  101e95:	e8 69 ff ff ff       	call   101e03 <lpt_putc_sub>
  101e9a:	83 c4 04             	add    $0x4,%esp
        lpt_putc_sub(' ');
  101e9d:	6a 20                	push   $0x20
  101e9f:	e8 5f ff ff ff       	call   101e03 <lpt_putc_sub>
  101ea4:	83 c4 04             	add    $0x4,%esp
        lpt_putc_sub('\b');
  101ea7:	6a 08                	push   $0x8
  101ea9:	e8 55 ff ff ff       	call   101e03 <lpt_putc_sub>
  101eae:	83 c4 04             	add    $0x4,%esp
    }
}
  101eb1:	90                   	nop
  101eb2:	c9                   	leave  
  101eb3:	c3                   	ret    

00101eb4 <cga_putc>:

/* cga_putc - print character to console */
static void
cga_putc(int c) {
  101eb4:	55                   	push   %ebp
  101eb5:	89 e5                	mov    %esp,%ebp
  101eb7:	53                   	push   %ebx
  101eb8:	83 ec 14             	sub    $0x14,%esp
    // set black on white
    if (!(c & ~0xFF)) {
  101ebb:	8b 45 08             	mov    0x8(%ebp),%eax
  101ebe:	b0 00                	mov    $0x0,%al
  101ec0:	85 c0                	test   %eax,%eax
  101ec2:	75 07                	jne    101ecb <cga_putc+0x17>
        c |= 0x0700;
  101ec4:	81 4d 08 00 07 00 00 	orl    $0x700,0x8(%ebp)
    }

    switch (c & 0xff) {
  101ecb:	8b 45 08             	mov    0x8(%ebp),%eax
  101ece:	0f b6 c0             	movzbl %al,%eax
  101ed1:	83 f8 0a             	cmp    $0xa,%eax
  101ed4:	74 4e                	je     101f24 <cga_putc+0x70>
  101ed6:	83 f8 0d             	cmp    $0xd,%eax
  101ed9:	74 59                	je     101f34 <cga_putc+0x80>
  101edb:	83 f8 08             	cmp    $0x8,%eax
  101ede:	0f 85 8a 00 00 00    	jne    101f6e <cga_putc+0xba>
    case '\b':
        if (crt_pos > 0) {
  101ee4:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  101eeb:	66 85 c0             	test   %ax,%ax
  101eee:	0f 84 a0 00 00 00    	je     101f94 <cga_putc+0xe0>
            crt_pos --;
  101ef4:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  101efb:	83 e8 01             	sub    $0x1,%eax
  101efe:	66 a3 e4 0e 11 00    	mov    %ax,0x110ee4
            crt_buf[crt_pos] = (c & ~0xff) | ' ';
  101f04:	a1 e0 0e 11 00       	mov    0x110ee0,%eax
  101f09:	0f b7 15 e4 0e 11 00 	movzwl 0x110ee4,%edx
  101f10:	0f b7 d2             	movzwl %dx,%edx
  101f13:	01 d2                	add    %edx,%edx
  101f15:	01 d0                	add    %edx,%eax
  101f17:	8b 55 08             	mov    0x8(%ebp),%edx
  101f1a:	b2 00                	mov    $0x0,%dl
  101f1c:	83 ca 20             	or     $0x20,%edx
  101f1f:	66 89 10             	mov    %dx,(%eax)
        }
        break;
  101f22:	eb 70                	jmp    101f94 <cga_putc+0xe0>
    case '\n':
        crt_pos += CRT_COLS;
  101f24:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  101f2b:	83 c0 50             	add    $0x50,%eax
  101f2e:	66 a3 e4 0e 11 00    	mov    %ax,0x110ee4
    case '\r':
        crt_pos -= (crt_pos % CRT_COLS);
  101f34:	0f b7 1d e4 0e 11 00 	movzwl 0x110ee4,%ebx
  101f3b:	0f b7 0d e4 0e 11 00 	movzwl 0x110ee4,%ecx
  101f42:	0f b7 c1             	movzwl %cx,%eax
  101f45:	69 c0 cd cc 00 00    	imul   $0xcccd,%eax,%eax
  101f4b:	c1 e8 10             	shr    $0x10,%eax
  101f4e:	89 c2                	mov    %eax,%edx
  101f50:	66 c1 ea 06          	shr    $0x6,%dx
  101f54:	89 d0                	mov    %edx,%eax
  101f56:	c1 e0 02             	shl    $0x2,%eax
  101f59:	01 d0                	add    %edx,%eax
  101f5b:	c1 e0 04             	shl    $0x4,%eax
  101f5e:	29 c1                	sub    %eax,%ecx
  101f60:	89 ca                	mov    %ecx,%edx
  101f62:	89 d8                	mov    %ebx,%eax
  101f64:	29 d0                	sub    %edx,%eax
  101f66:	66 a3 e4 0e 11 00    	mov    %ax,0x110ee4
        break;
  101f6c:	eb 27                	jmp    101f95 <cga_putc+0xe1>
    default:
        crt_buf[crt_pos ++] = c;     // write the character
  101f6e:	8b 0d e0 0e 11 00    	mov    0x110ee0,%ecx
  101f74:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  101f7b:	8d 50 01             	lea    0x1(%eax),%edx
  101f7e:	66 89 15 e4 0e 11 00 	mov    %dx,0x110ee4
  101f85:	0f b7 c0             	movzwl %ax,%eax
  101f88:	01 c0                	add    %eax,%eax
  101f8a:	01 c8                	add    %ecx,%eax
  101f8c:	8b 55 08             	mov    0x8(%ebp),%edx
  101f8f:	66 89 10             	mov    %dx,(%eax)
        break;
  101f92:	eb 01                	jmp    101f95 <cga_putc+0xe1>
    case '\b':
        if (crt_pos > 0) {
            crt_pos --;
            crt_buf[crt_pos] = (c & ~0xff) | ' ';
        }
        break;
  101f94:	90                   	nop
        crt_buf[crt_pos ++] = c;     // write the character
        break;
    }

    // What is the purpose of this?
    if (crt_pos >= CRT_SIZE) {
  101f95:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  101f9c:	66 3d cf 07          	cmp    $0x7cf,%ax
  101fa0:	76 59                	jbe    101ffb <cga_putc+0x147>
        int i;
        memmove(crt_buf, crt_buf + CRT_COLS, (CRT_SIZE - CRT_COLS) * sizeof(uint16_t));
  101fa2:	a1 e0 0e 11 00       	mov    0x110ee0,%eax
  101fa7:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
  101fad:	a1 e0 0e 11 00       	mov    0x110ee0,%eax
  101fb2:	83 ec 04             	sub    $0x4,%esp
  101fb5:	68 00 0f 00 00       	push   $0xf00
  101fba:	52                   	push   %edx
  101fbb:	50                   	push   %eax
  101fbc:	e8 55 1a 00 00       	call   103a16 <memmove>
  101fc1:	83 c4 10             	add    $0x10,%esp
        for (i = CRT_SIZE - CRT_COLS; i < CRT_SIZE; i ++) {
  101fc4:	c7 45 f4 80 07 00 00 	movl   $0x780,-0xc(%ebp)
  101fcb:	eb 15                	jmp    101fe2 <cga_putc+0x12e>
            crt_buf[i] = 0x0700 | ' ';
  101fcd:	a1 e0 0e 11 00       	mov    0x110ee0,%eax
  101fd2:	8b 55 f4             	mov    -0xc(%ebp),%edx
  101fd5:	01 d2                	add    %edx,%edx
  101fd7:	01 d0                	add    %edx,%eax
  101fd9:	66 c7 00 20 07       	movw   $0x720,(%eax)

    // What is the purpose of this?
    if (crt_pos >= CRT_SIZE) {
        int i;
        memmove(crt_buf, crt_buf + CRT_COLS, (CRT_SIZE - CRT_COLS) * sizeof(uint16_t));
        for (i = CRT_SIZE - CRT_COLS; i < CRT_SIZE; i ++) {
  101fde:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  101fe2:	81 7d f4 cf 07 00 00 	cmpl   $0x7cf,-0xc(%ebp)
  101fe9:	7e e2                	jle    101fcd <cga_putc+0x119>
            crt_buf[i] = 0x0700 | ' ';
        }
        crt_pos -= CRT_COLS;
  101feb:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  101ff2:	83 e8 50             	sub    $0x50,%eax
  101ff5:	66 a3 e4 0e 11 00    	mov    %ax,0x110ee4
    }

    // move that little blinky thing
    outb(addr_6845, 14);
  101ffb:	0f b7 05 e6 0e 11 00 	movzwl 0x110ee6,%eax
  102002:	0f b7 c0             	movzwl %ax,%eax
  102005:	66 89 45 f2          	mov    %ax,-0xe(%ebp)
  102009:	c6 45 e8 0e          	movb   $0xe,-0x18(%ebp)
  10200d:	0f b6 45 e8          	movzbl -0x18(%ebp),%eax
  102011:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  102015:	ee                   	out    %al,(%dx)
    outb(addr_6845 + 1, crt_pos >> 8);
  102016:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  10201d:	66 c1 e8 08          	shr    $0x8,%ax
  102021:	0f b6 c0             	movzbl %al,%eax
  102024:	0f b7 15 e6 0e 11 00 	movzwl 0x110ee6,%edx
  10202b:	83 c2 01             	add    $0x1,%edx
  10202e:	0f b7 d2             	movzwl %dx,%edx
  102031:	66 89 55 f0          	mov    %dx,-0x10(%ebp)
  102035:	88 45 e9             	mov    %al,-0x17(%ebp)
  102038:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
  10203c:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  102040:	ee                   	out    %al,(%dx)
    outb(addr_6845, 15);
  102041:	0f b7 05 e6 0e 11 00 	movzwl 0x110ee6,%eax
  102048:	0f b7 c0             	movzwl %ax,%eax
  10204b:	66 89 45 ee          	mov    %ax,-0x12(%ebp)
  10204f:	c6 45 ea 0f          	movb   $0xf,-0x16(%ebp)
  102053:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
  102057:	0f b7 55 ee          	movzwl -0x12(%ebp),%edx
  10205b:	ee                   	out    %al,(%dx)
    outb(addr_6845 + 1, crt_pos);
  10205c:	0f b7 05 e4 0e 11 00 	movzwl 0x110ee4,%eax
  102063:	0f b6 c0             	movzbl %al,%eax
  102066:	0f b7 15 e6 0e 11 00 	movzwl 0x110ee6,%edx
  10206d:	83 c2 01             	add    $0x1,%edx
  102070:	0f b7 d2             	movzwl %dx,%edx
  102073:	66 89 55 ec          	mov    %dx,-0x14(%ebp)
  102077:	88 45 eb             	mov    %al,-0x15(%ebp)
  10207a:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
  10207e:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
  102082:	ee                   	out    %al,(%dx)
}
  102083:	90                   	nop
  102084:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  102087:	c9                   	leave  
  102088:	c3                   	ret    

00102089 <serial_putc_sub>:

static void
serial_putc_sub(int c) {
  102089:	55                   	push   %ebp
  10208a:	89 e5                	mov    %esp,%ebp
  10208c:	83 ec 10             	sub    $0x10,%esp
    int i;
    for (i = 0; !(inb(COM1 + COM_LSR) & COM_LSR_TXRDY) && i < 12800; i ++) {
  10208f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  102096:	eb 09                	jmp    1020a1 <serial_putc_sub+0x18>
        delay();
  102098:	e8 51 fb ff ff       	call   101bee <delay>
}

static void
serial_putc_sub(int c) {
    int i;
    for (i = 0; !(inb(COM1 + COM_LSR) & COM_LSR_TXRDY) && i < 12800; i ++) {
  10209d:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  1020a1:	66 c7 45 f8 fd 03    	movw   $0x3fd,-0x8(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  1020a7:	0f b7 45 f8          	movzwl -0x8(%ebp),%eax
  1020ab:	89 c2                	mov    %eax,%edx
  1020ad:	ec                   	in     (%dx),%al
  1020ae:	88 45 f7             	mov    %al,-0x9(%ebp)
    return data;
  1020b1:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  1020b5:	0f b6 c0             	movzbl %al,%eax
  1020b8:	83 e0 20             	and    $0x20,%eax
  1020bb:	85 c0                	test   %eax,%eax
  1020bd:	75 09                	jne    1020c8 <serial_putc_sub+0x3f>
  1020bf:	81 7d fc ff 31 00 00 	cmpl   $0x31ff,-0x4(%ebp)
  1020c6:	7e d0                	jle    102098 <serial_putc_sub+0xf>
        delay();
    }
    outb(COM1 + COM_TX, c);
  1020c8:	8b 45 08             	mov    0x8(%ebp),%eax
  1020cb:	0f b6 c0             	movzbl %al,%eax
  1020ce:	66 c7 45 fa f8 03    	movw   $0x3f8,-0x6(%ebp)
  1020d4:	88 45 f6             	mov    %al,-0xa(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  1020d7:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
  1020db:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
  1020df:	ee                   	out    %al,(%dx)
}
  1020e0:	90                   	nop
  1020e1:	c9                   	leave  
  1020e2:	c3                   	ret    

001020e3 <serial_putc>:

/* serial_putc - print character to serial port */
static void
serial_putc(int c) {
  1020e3:	55                   	push   %ebp
  1020e4:	89 e5                	mov    %esp,%ebp
    if (c != '\b') {
  1020e6:	83 7d 08 08          	cmpl   $0x8,0x8(%ebp)
  1020ea:	74 0d                	je     1020f9 <serial_putc+0x16>
        serial_putc_sub(c);
  1020ec:	ff 75 08             	pushl  0x8(%ebp)
  1020ef:	e8 95 ff ff ff       	call   102089 <serial_putc_sub>
  1020f4:	83 c4 04             	add    $0x4,%esp
    else {
        serial_putc_sub('\b');
        serial_putc_sub(' ');
        serial_putc_sub('\b');
    }
}
  1020f7:	eb 1e                	jmp    102117 <serial_putc+0x34>
serial_putc(int c) {
    if (c != '\b') {
        serial_putc_sub(c);
    }
    else {
        serial_putc_sub('\b');
  1020f9:	6a 08                	push   $0x8
  1020fb:	e8 89 ff ff ff       	call   102089 <serial_putc_sub>
  102100:	83 c4 04             	add    $0x4,%esp
        serial_putc_sub(' ');
  102103:	6a 20                	push   $0x20
  102105:	e8 7f ff ff ff       	call   102089 <serial_putc_sub>
  10210a:	83 c4 04             	add    $0x4,%esp
        serial_putc_sub('\b');
  10210d:	6a 08                	push   $0x8
  10210f:	e8 75 ff ff ff       	call   102089 <serial_putc_sub>
  102114:	83 c4 04             	add    $0x4,%esp
    }
}
  102117:	90                   	nop
  102118:	c9                   	leave  
  102119:	c3                   	ret    

0010211a <cons_intr>:
/* *
 * cons_intr - called by device interrupt routines to feed input
 * characters into the circular console input buffer.
 * */
static void
cons_intr(int (*proc)(void)) {
  10211a:	55                   	push   %ebp
  10211b:	89 e5                	mov    %esp,%ebp
  10211d:	83 ec 18             	sub    $0x18,%esp
    int c;
    while ((c = (*proc)()) != -1) {
  102120:	eb 33                	jmp    102155 <cons_intr+0x3b>
        if (c != 0) {
  102122:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
  102126:	74 2d                	je     102155 <cons_intr+0x3b>
            cons.buf[cons.wpos ++] = c;
  102128:	a1 04 11 11 00       	mov    0x111104,%eax
  10212d:	8d 50 01             	lea    0x1(%eax),%edx
  102130:	89 15 04 11 11 00    	mov    %edx,0x111104
  102136:	8b 55 f4             	mov    -0xc(%ebp),%edx
  102139:	88 90 00 0f 11 00    	mov    %dl,0x110f00(%eax)
            if (cons.wpos == CONSBUFSIZE) {
  10213f:	a1 04 11 11 00       	mov    0x111104,%eax
  102144:	3d 00 02 00 00       	cmp    $0x200,%eax
  102149:	75 0a                	jne    102155 <cons_intr+0x3b>
                cons.wpos = 0;
  10214b:	c7 05 04 11 11 00 00 	movl   $0x0,0x111104
  102152:	00 00 00 
 * characters into the circular console input buffer.
 * */
static void
cons_intr(int (*proc)(void)) {
    int c;
    while ((c = (*proc)()) != -1) {
  102155:	8b 45 08             	mov    0x8(%ebp),%eax
  102158:	ff d0                	call   *%eax
  10215a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10215d:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
  102161:	75 bf                	jne    102122 <cons_intr+0x8>
            if (cons.wpos == CONSBUFSIZE) {
                cons.wpos = 0;
            }
        }
    }
}
  102163:	90                   	nop
  102164:	c9                   	leave  
  102165:	c3                   	ret    

00102166 <serial_proc_data>:

/* serial_proc_data - get data from serial port */
static int
serial_proc_data(void) {
  102166:	55                   	push   %ebp
  102167:	89 e5                	mov    %esp,%ebp
  102169:	83 ec 10             	sub    $0x10,%esp
  10216c:	66 c7 45 f8 fd 03    	movw   $0x3fd,-0x8(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  102172:	0f b7 45 f8          	movzwl -0x8(%ebp),%eax
  102176:	89 c2                	mov    %eax,%edx
  102178:	ec                   	in     (%dx),%al
  102179:	88 45 f7             	mov    %al,-0x9(%ebp)
    return data;
  10217c:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    if (!(inb(COM1 + COM_LSR) & COM_LSR_DATA)) {
  102180:	0f b6 c0             	movzbl %al,%eax
  102183:	83 e0 01             	and    $0x1,%eax
  102186:	85 c0                	test   %eax,%eax
  102188:	75 07                	jne    102191 <serial_proc_data+0x2b>
        return -1;
  10218a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  10218f:	eb 2a                	jmp    1021bb <serial_proc_data+0x55>
  102191:	66 c7 45 fa f8 03    	movw   $0x3f8,-0x6(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  102197:	0f b7 45 fa          	movzwl -0x6(%ebp),%eax
  10219b:	89 c2                	mov    %eax,%edx
  10219d:	ec                   	in     (%dx),%al
  10219e:	88 45 f6             	mov    %al,-0xa(%ebp)
    return data;
  1021a1:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
    }
    int c = inb(COM1 + COM_RX);
  1021a5:	0f b6 c0             	movzbl %al,%eax
  1021a8:	89 45 fc             	mov    %eax,-0x4(%ebp)
    if (c == 127) {
  1021ab:	83 7d fc 7f          	cmpl   $0x7f,-0x4(%ebp)
  1021af:	75 07                	jne    1021b8 <serial_proc_data+0x52>
        c = '\b';
  1021b1:	c7 45 fc 08 00 00 00 	movl   $0x8,-0x4(%ebp)
    }
    return c;
  1021b8:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  1021bb:	c9                   	leave  
  1021bc:	c3                   	ret    

001021bd <serial_intr>:

/* serial_intr - try to feed input characters from serial port */
void
serial_intr(void) {
  1021bd:	55                   	push   %ebp
  1021be:	89 e5                	mov    %esp,%ebp
  1021c0:	83 ec 08             	sub    $0x8,%esp
    if (serial_exists) {
  1021c3:	a1 e8 0e 11 00       	mov    0x110ee8,%eax
  1021c8:	85 c0                	test   %eax,%eax
  1021ca:	74 10                	je     1021dc <serial_intr+0x1f>
        cons_intr(serial_proc_data);
  1021cc:	83 ec 0c             	sub    $0xc,%esp
  1021cf:	68 66 21 10 00       	push   $0x102166
  1021d4:	e8 41 ff ff ff       	call   10211a <cons_intr>
  1021d9:	83 c4 10             	add    $0x10,%esp
    }
}
  1021dc:	90                   	nop
  1021dd:	c9                   	leave  
  1021de:	c3                   	ret    

001021df <kbd_proc_data>:
 *
 * The kbd_proc_data() function gets data from the keyboard.
 * If we finish a character, return it, else 0. And return -1 if no data.
 * */
static int
kbd_proc_data(void) {
  1021df:	55                   	push   %ebp
  1021e0:	89 e5                	mov    %esp,%ebp
  1021e2:	83 ec 18             	sub    $0x18,%esp
  1021e5:	66 c7 45 ec 64 00    	movw   $0x64,-0x14(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  1021eb:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
  1021ef:	89 c2                	mov    %eax,%edx
  1021f1:	ec                   	in     (%dx),%al
  1021f2:	88 45 eb             	mov    %al,-0x15(%ebp)
    return data;
  1021f5:	0f b6 45 eb          	movzbl -0x15(%ebp),%eax
    int c;
    uint8_t data;
    static uint32_t shift;

    if ((inb(KBSTATP) & KBS_DIB) == 0) {
  1021f9:	0f b6 c0             	movzbl %al,%eax
  1021fc:	83 e0 01             	and    $0x1,%eax
  1021ff:	85 c0                	test   %eax,%eax
  102201:	75 0a                	jne    10220d <kbd_proc_data+0x2e>
        return -1;
  102203:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  102208:	e9 5d 01 00 00       	jmp    10236a <kbd_proc_data+0x18b>
  10220d:	66 c7 45 f0 60 00    	movw   $0x60,-0x10(%ebp)
static inline void write_eflags(uint32_t eflags) __attribute__((always_inline));

static inline uint8_t
inb(uint16_t port) {
    uint8_t data;
    asm volatile ("inb %1, %0" : "=a" (data) : "d" (port) : "memory");
  102213:	0f b7 45 f0          	movzwl -0x10(%ebp),%eax
  102217:	89 c2                	mov    %eax,%edx
  102219:	ec                   	in     (%dx),%al
  10221a:	88 45 ea             	mov    %al,-0x16(%ebp)
    return data;
  10221d:	0f b6 45 ea          	movzbl -0x16(%ebp),%eax
    }

    data = inb(KBDATAP);
  102221:	88 45 f3             	mov    %al,-0xd(%ebp)

    if (data == 0xE0) {
  102224:	80 7d f3 e0          	cmpb   $0xe0,-0xd(%ebp)
  102228:	75 17                	jne    102241 <kbd_proc_data+0x62>
        // E0 escape character
        shift |= E0ESC;
  10222a:	a1 08 11 11 00       	mov    0x111108,%eax
  10222f:	83 c8 40             	or     $0x40,%eax
  102232:	a3 08 11 11 00       	mov    %eax,0x111108
        return 0;
  102237:	b8 00 00 00 00       	mov    $0x0,%eax
  10223c:	e9 29 01 00 00       	jmp    10236a <kbd_proc_data+0x18b>
    } else if (data & 0x80) {
  102241:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  102245:	84 c0                	test   %al,%al
  102247:	79 47                	jns    102290 <kbd_proc_data+0xb1>
        // Key released
        data = (shift & E0ESC ? data : data & 0x7F);
  102249:	a1 08 11 11 00       	mov    0x111108,%eax
  10224e:	83 e0 40             	and    $0x40,%eax
  102251:	85 c0                	test   %eax,%eax
  102253:	75 09                	jne    10225e <kbd_proc_data+0x7f>
  102255:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  102259:	83 e0 7f             	and    $0x7f,%eax
  10225c:	eb 04                	jmp    102262 <kbd_proc_data+0x83>
  10225e:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  102262:	88 45 f3             	mov    %al,-0xd(%ebp)
        shift &= ~(shiftcode[data] | E0ESC);
  102265:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  102269:	0f b6 80 a0 00 11 00 	movzbl 0x1100a0(%eax),%eax
  102270:	83 c8 40             	or     $0x40,%eax
  102273:	0f b6 c0             	movzbl %al,%eax
  102276:	f7 d0                	not    %eax
  102278:	89 c2                	mov    %eax,%edx
  10227a:	a1 08 11 11 00       	mov    0x111108,%eax
  10227f:	21 d0                	and    %edx,%eax
  102281:	a3 08 11 11 00       	mov    %eax,0x111108
        return 0;
  102286:	b8 00 00 00 00       	mov    $0x0,%eax
  10228b:	e9 da 00 00 00       	jmp    10236a <kbd_proc_data+0x18b>
    } else if (shift & E0ESC) {
  102290:	a1 08 11 11 00       	mov    0x111108,%eax
  102295:	83 e0 40             	and    $0x40,%eax
  102298:	85 c0                	test   %eax,%eax
  10229a:	74 11                	je     1022ad <kbd_proc_data+0xce>
        // Last character was an E0 escape; or with 0x80
        data |= 0x80;
  10229c:	80 4d f3 80          	orb    $0x80,-0xd(%ebp)
        shift &= ~E0ESC;
  1022a0:	a1 08 11 11 00       	mov    0x111108,%eax
  1022a5:	83 e0 bf             	and    $0xffffffbf,%eax
  1022a8:	a3 08 11 11 00       	mov    %eax,0x111108
    }

    shift |= shiftcode[data];
  1022ad:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1022b1:	0f b6 80 a0 00 11 00 	movzbl 0x1100a0(%eax),%eax
  1022b8:	0f b6 d0             	movzbl %al,%edx
  1022bb:	a1 08 11 11 00       	mov    0x111108,%eax
  1022c0:	09 d0                	or     %edx,%eax
  1022c2:	a3 08 11 11 00       	mov    %eax,0x111108
    shift ^= togglecode[data];
  1022c7:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1022cb:	0f b6 80 a0 01 11 00 	movzbl 0x1101a0(%eax),%eax
  1022d2:	0f b6 d0             	movzbl %al,%edx
  1022d5:	a1 08 11 11 00       	mov    0x111108,%eax
  1022da:	31 d0                	xor    %edx,%eax
  1022dc:	a3 08 11 11 00       	mov    %eax,0x111108

    c = charcode[shift & (CTL | SHIFT)][data];
  1022e1:	a1 08 11 11 00       	mov    0x111108,%eax
  1022e6:	83 e0 03             	and    $0x3,%eax
  1022e9:	8b 14 85 a0 05 11 00 	mov    0x1105a0(,%eax,4),%edx
  1022f0:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
  1022f4:	01 d0                	add    %edx,%eax
  1022f6:	0f b6 00             	movzbl (%eax),%eax
  1022f9:	0f b6 c0             	movzbl %al,%eax
  1022fc:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if (shift & CAPSLOCK) {
  1022ff:	a1 08 11 11 00       	mov    0x111108,%eax
  102304:	83 e0 08             	and    $0x8,%eax
  102307:	85 c0                	test   %eax,%eax
  102309:	74 22                	je     10232d <kbd_proc_data+0x14e>
        if ('a' <= c && c <= 'z')
  10230b:	83 7d f4 60          	cmpl   $0x60,-0xc(%ebp)
  10230f:	7e 0c                	jle    10231d <kbd_proc_data+0x13e>
  102311:	83 7d f4 7a          	cmpl   $0x7a,-0xc(%ebp)
  102315:	7f 06                	jg     10231d <kbd_proc_data+0x13e>
            c += 'A' - 'a';
  102317:	83 6d f4 20          	subl   $0x20,-0xc(%ebp)
  10231b:	eb 10                	jmp    10232d <kbd_proc_data+0x14e>
        else if ('A' <= c && c <= 'Z')
  10231d:	83 7d f4 40          	cmpl   $0x40,-0xc(%ebp)
  102321:	7e 0a                	jle    10232d <kbd_proc_data+0x14e>
  102323:	83 7d f4 5a          	cmpl   $0x5a,-0xc(%ebp)
  102327:	7f 04                	jg     10232d <kbd_proc_data+0x14e>
            c += 'a' - 'A';
  102329:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
    }

    // Process special keys
    // Ctrl-Alt-Del: reboot
    if (!(~shift & (CTL | ALT)) && c == KEY_DEL) {
  10232d:	a1 08 11 11 00       	mov    0x111108,%eax
  102332:	f7 d0                	not    %eax
  102334:	83 e0 06             	and    $0x6,%eax
  102337:	85 c0                	test   %eax,%eax
  102339:	75 2c                	jne    102367 <kbd_proc_data+0x188>
  10233b:	81 7d f4 e9 00 00 00 	cmpl   $0xe9,-0xc(%ebp)
  102342:	75 23                	jne    102367 <kbd_proc_data+0x188>
        cprintf("Rebooting!\n");
  102344:	83 ec 0c             	sub    $0xc,%esp
  102347:	68 bc 49 10 00       	push   $0x1049bc
  10234c:	e8 7e e1 ff ff       	call   1004cf <cprintf>
  102351:	83 c4 10             	add    $0x10,%esp
  102354:	66 c7 45 ee 92 00    	movw   $0x92,-0x12(%ebp)
  10235a:	c6 45 e9 03          	movb   $0x3,-0x17(%ebp)
        : "memory", "cc");
}

static inline void
outb(uint16_t port, uint8_t data) {
    asm volatile ("outb %0, %1" :: "a" (data), "d" (port) : "memory");
  10235e:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
  102362:	0f b7 55 ee          	movzwl -0x12(%ebp),%edx
  102366:	ee                   	out    %al,(%dx)
        outb(0x92, 0x3); // courtesy of Chris Frost
    }
    return c;
  102367:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  10236a:	c9                   	leave  
  10236b:	c3                   	ret    

0010236c <kbd_intr>:

/* kbd_intr - try to feed input characters from keyboard */
static void
kbd_intr(void) {
  10236c:	55                   	push   %ebp
  10236d:	89 e5                	mov    %esp,%ebp
  10236f:	83 ec 08             	sub    $0x8,%esp
    cons_intr(kbd_proc_data);
  102372:	83 ec 0c             	sub    $0xc,%esp
  102375:	68 df 21 10 00       	push   $0x1021df
  10237a:	e8 9b fd ff ff       	call   10211a <cons_intr>
  10237f:	83 c4 10             	add    $0x10,%esp
}
  102382:	90                   	nop
  102383:	c9                   	leave  
  102384:	c3                   	ret    

00102385 <kbd_init>:

static void
kbd_init(void) {
  102385:	55                   	push   %ebp
  102386:	89 e5                	mov    %esp,%ebp
  102388:	83 ec 08             	sub    $0x8,%esp
    // drain the kbd buffer
    kbd_intr();
  10238b:	e8 dc ff ff ff       	call   10236c <kbd_intr>
    pic_enable(IRQ_KBD);
  102390:	83 ec 0c             	sub    $0xc,%esp
  102393:	6a 01                	push   $0x1
  102395:	e8 1c 01 00 00       	call   1024b6 <pic_enable>
  10239a:	83 c4 10             	add    $0x10,%esp
}
  10239d:	90                   	nop
  10239e:	c9                   	leave  
  10239f:	c3                   	ret    

001023a0 <cons_init>:

/* cons_init - initializes the console devices */
void
cons_init(void) {
  1023a0:	55                   	push   %ebp
  1023a1:	89 e5                	mov    %esp,%ebp
  1023a3:	83 ec 08             	sub    $0x8,%esp
    cga_init();
  1023a6:	e8 8c f8 ff ff       	call   101c37 <cga_init>
    serial_init();
  1023ab:	e8 6e f9 ff ff       	call   101d1e <serial_init>
    kbd_init();
  1023b0:	e8 d0 ff ff ff       	call   102385 <kbd_init>
    if (!serial_exists) {
  1023b5:	a1 e8 0e 11 00       	mov    0x110ee8,%eax
  1023ba:	85 c0                	test   %eax,%eax
  1023bc:	75 10                	jne    1023ce <cons_init+0x2e>
        cprintf("serial port does not exist!!\n");
  1023be:	83 ec 0c             	sub    $0xc,%esp
  1023c1:	68 c8 49 10 00       	push   $0x1049c8
  1023c6:	e8 04 e1 ff ff       	call   1004cf <cprintf>
  1023cb:	83 c4 10             	add    $0x10,%esp
    }
}
  1023ce:	90                   	nop
  1023cf:	c9                   	leave  
  1023d0:	c3                   	ret    

001023d1 <cons_putc>:

/* cons_putc - print a single character @c to console devices */
void
cons_putc(int c) {
  1023d1:	55                   	push   %ebp
  1023d2:	89 e5                	mov    %esp,%ebp
  1023d4:	83 ec 08             	sub    $0x8,%esp
    lpt_putc(c);
  1023d7:	ff 75 08             	pushl  0x8(%ebp)
  1023da:	e8 9e fa ff ff       	call   101e7d <lpt_putc>
  1023df:	83 c4 04             	add    $0x4,%esp
    cga_putc(c);
  1023e2:	83 ec 0c             	sub    $0xc,%esp
  1023e5:	ff 75 08             	pushl  0x8(%ebp)
  1023e8:	e8 c7 fa ff ff       	call   101eb4 <cga_putc>
  1023ed:	83 c4 10             	add    $0x10,%esp
    serial_putc(c);
  1023f0:	83 ec 0c             	sub    $0xc,%esp
  1023f3:	ff 75 08             	pushl  0x8(%ebp)
  1023f6:	e8 e8 fc ff ff       	call   1020e3 <serial_putc>
  1023fb:	83 c4 10             	add    $0x10,%esp
}
  1023fe:	90                   	nop
  1023ff:	c9                   	leave  
  102400:	c3                   	ret    

00102401 <cons_getc>:
/* *
 * cons_getc - return the next input character from console,
 * or 0 if none waiting.
 * */
int
cons_getc(void) {
  102401:	55                   	push   %ebp
  102402:	89 e5                	mov    %esp,%ebp
  102404:	83 ec 18             	sub    $0x18,%esp
    int c;

    // poll for any pending input characters,
    // so that this function works even when interrupts are disabled
    // (e.g., when called from the kernel monitor).
    serial_intr();
  102407:	e8 b1 fd ff ff       	call   1021bd <serial_intr>
    kbd_intr();
  10240c:	e8 5b ff ff ff       	call   10236c <kbd_intr>

    // grab the next character from the input buffer.
    if (cons.rpos != cons.wpos) {
  102411:	8b 15 00 11 11 00    	mov    0x111100,%edx
  102417:	a1 04 11 11 00       	mov    0x111104,%eax
  10241c:	39 c2                	cmp    %eax,%edx
  10241e:	74 36                	je     102456 <cons_getc+0x55>
        c = cons.buf[cons.rpos ++];
  102420:	a1 00 11 11 00       	mov    0x111100,%eax
  102425:	8d 50 01             	lea    0x1(%eax),%edx
  102428:	89 15 00 11 11 00    	mov    %edx,0x111100
  10242e:	0f b6 80 00 0f 11 00 	movzbl 0x110f00(%eax),%eax
  102435:	0f b6 c0             	movzbl %al,%eax
  102438:	89 45 f4             	mov    %eax,-0xc(%ebp)
        if (cons.rpos == CONSBUFSIZE) {
  10243b:	a1 00 11 11 00       	mov    0x111100,%eax
  102440:	3d 00 02 00 00       	cmp    $0x200,%eax
  102445:	75 0a                	jne    102451 <cons_getc+0x50>
            cons.rpos = 0;
  102447:	c7 05 00 11 11 00 00 	movl   $0x0,0x111100
  10244e:	00 00 00 
        }
        return c;
  102451:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102454:	eb 05                	jmp    10245b <cons_getc+0x5a>
    }
    return 0;
  102456:	b8 00 00 00 00       	mov    $0x0,%eax
}
  10245b:	c9                   	leave  
  10245c:	c3                   	ret    

0010245d <pic_setmask>:
// Initial IRQ mask has interrupt 2 enabled (for slave 8259A).
static uint16_t irq_mask = 0xFFFF & ~(1 << IRQ_SLAVE);
static bool did_init = 0;

static void
pic_setmask(uint16_t mask) {
  10245d:	55                   	push   %ebp
  10245e:	89 e5                	mov    %esp,%ebp
  102460:	83 ec 14             	sub    $0x14,%esp
  102463:	8b 45 08             	mov    0x8(%ebp),%eax
  102466:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    irq_mask = mask;
  10246a:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
  10246e:	66 a3 b0 05 11 00    	mov    %ax,0x1105b0
    if (did_init) {
  102474:	a1 0c 11 11 00       	mov    0x11110c,%eax
  102479:	85 c0                	test   %eax,%eax
  10247b:	74 36                	je     1024b3 <pic_setmask+0x56>
        outb(IO_PIC1 + 1, mask);
  10247d:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
  102481:	0f b6 c0             	movzbl %al,%eax
  102484:	66 c7 45 fe 21 00    	movw   $0x21,-0x2(%ebp)
  10248a:	88 45 fa             	mov    %al,-0x6(%ebp)
  10248d:	0f b6 45 fa          	movzbl -0x6(%ebp),%eax
  102491:	0f b7 55 fe          	movzwl -0x2(%ebp),%edx
  102495:	ee                   	out    %al,(%dx)
        outb(IO_PIC2 + 1, mask >> 8);
  102496:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
  10249a:	66 c1 e8 08          	shr    $0x8,%ax
  10249e:	0f b6 c0             	movzbl %al,%eax
  1024a1:	66 c7 45 fc a1 00    	movw   $0xa1,-0x4(%ebp)
  1024a7:	88 45 fb             	mov    %al,-0x5(%ebp)
  1024aa:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
  1024ae:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
  1024b2:	ee                   	out    %al,(%dx)
    }
}
  1024b3:	90                   	nop
  1024b4:	c9                   	leave  
  1024b5:	c3                   	ret    

001024b6 <pic_enable>:

void
pic_enable(unsigned int irq) {
  1024b6:	55                   	push   %ebp
  1024b7:	89 e5                	mov    %esp,%ebp
    pic_setmask(irq_mask & ~(1 << irq));
  1024b9:	8b 45 08             	mov    0x8(%ebp),%eax
  1024bc:	ba 01 00 00 00       	mov    $0x1,%edx
  1024c1:	89 c1                	mov    %eax,%ecx
  1024c3:	d3 e2                	shl    %cl,%edx
  1024c5:	89 d0                	mov    %edx,%eax
  1024c7:	f7 d0                	not    %eax
  1024c9:	89 c2                	mov    %eax,%edx
  1024cb:	0f b7 05 b0 05 11 00 	movzwl 0x1105b0,%eax
  1024d2:	21 d0                	and    %edx,%eax
  1024d4:	0f b7 c0             	movzwl %ax,%eax
  1024d7:	50                   	push   %eax
  1024d8:	e8 80 ff ff ff       	call   10245d <pic_setmask>
  1024dd:	83 c4 04             	add    $0x4,%esp
}
  1024e0:	90                   	nop
  1024e1:	c9                   	leave  
  1024e2:	c3                   	ret    

001024e3 <pic_init>:

/* pic_init - initialize the 8259A interrupt controllers */
void
pic_init(void) {
  1024e3:	55                   	push   %ebp
  1024e4:	89 e5                	mov    %esp,%ebp
  1024e6:	83 ec 30             	sub    $0x30,%esp
    did_init = 1;
  1024e9:	c7 05 0c 11 11 00 01 	movl   $0x1,0x11110c
  1024f0:	00 00 00 
  1024f3:	66 c7 45 fe 21 00    	movw   $0x21,-0x2(%ebp)
  1024f9:	c6 45 d6 ff          	movb   $0xff,-0x2a(%ebp)
  1024fd:	0f b6 45 d6          	movzbl -0x2a(%ebp),%eax
  102501:	0f b7 55 fe          	movzwl -0x2(%ebp),%edx
  102505:	ee                   	out    %al,(%dx)
  102506:	66 c7 45 fc a1 00    	movw   $0xa1,-0x4(%ebp)
  10250c:	c6 45 d7 ff          	movb   $0xff,-0x29(%ebp)
  102510:	0f b6 45 d7          	movzbl -0x29(%ebp),%eax
  102514:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
  102518:	ee                   	out    %al,(%dx)
  102519:	66 c7 45 fa 20 00    	movw   $0x20,-0x6(%ebp)
  10251f:	c6 45 d8 11          	movb   $0x11,-0x28(%ebp)
  102523:	0f b6 45 d8          	movzbl -0x28(%ebp),%eax
  102527:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
  10252b:	ee                   	out    %al,(%dx)
  10252c:	66 c7 45 f8 21 00    	movw   $0x21,-0x8(%ebp)
  102532:	c6 45 d9 20          	movb   $0x20,-0x27(%ebp)
  102536:	0f b6 45 d9          	movzbl -0x27(%ebp),%eax
  10253a:	0f b7 55 f8          	movzwl -0x8(%ebp),%edx
  10253e:	ee                   	out    %al,(%dx)
  10253f:	66 c7 45 f6 21 00    	movw   $0x21,-0xa(%ebp)
  102545:	c6 45 da 04          	movb   $0x4,-0x26(%ebp)
  102549:	0f b6 45 da          	movzbl -0x26(%ebp),%eax
  10254d:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
  102551:	ee                   	out    %al,(%dx)
  102552:	66 c7 45 f4 21 00    	movw   $0x21,-0xc(%ebp)
  102558:	c6 45 db 03          	movb   $0x3,-0x25(%ebp)
  10255c:	0f b6 45 db          	movzbl -0x25(%ebp),%eax
  102560:	0f b7 55 f4          	movzwl -0xc(%ebp),%edx
  102564:	ee                   	out    %al,(%dx)
  102565:	66 c7 45 f2 a0 00    	movw   $0xa0,-0xe(%ebp)
  10256b:	c6 45 dc 11          	movb   $0x11,-0x24(%ebp)
  10256f:	0f b6 45 dc          	movzbl -0x24(%ebp),%eax
  102573:	0f b7 55 f2          	movzwl -0xe(%ebp),%edx
  102577:	ee                   	out    %al,(%dx)
  102578:	66 c7 45 f0 a1 00    	movw   $0xa1,-0x10(%ebp)
  10257e:	c6 45 dd 28          	movb   $0x28,-0x23(%ebp)
  102582:	0f b6 45 dd          	movzbl -0x23(%ebp),%eax
  102586:	0f b7 55 f0          	movzwl -0x10(%ebp),%edx
  10258a:	ee                   	out    %al,(%dx)
  10258b:	66 c7 45 ee a1 00    	movw   $0xa1,-0x12(%ebp)
  102591:	c6 45 de 02          	movb   $0x2,-0x22(%ebp)
  102595:	0f b6 45 de          	movzbl -0x22(%ebp),%eax
  102599:	0f b7 55 ee          	movzwl -0x12(%ebp),%edx
  10259d:	ee                   	out    %al,(%dx)
  10259e:	66 c7 45 ec a1 00    	movw   $0xa1,-0x14(%ebp)
  1025a4:	c6 45 df 03          	movb   $0x3,-0x21(%ebp)
  1025a8:	0f b6 45 df          	movzbl -0x21(%ebp),%eax
  1025ac:	0f b7 55 ec          	movzwl -0x14(%ebp),%edx
  1025b0:	ee                   	out    %al,(%dx)
  1025b1:	66 c7 45 ea 20 00    	movw   $0x20,-0x16(%ebp)
  1025b7:	c6 45 e0 68          	movb   $0x68,-0x20(%ebp)
  1025bb:	0f b6 45 e0          	movzbl -0x20(%ebp),%eax
  1025bf:	0f b7 55 ea          	movzwl -0x16(%ebp),%edx
  1025c3:	ee                   	out    %al,(%dx)
  1025c4:	66 c7 45 e8 20 00    	movw   $0x20,-0x18(%ebp)
  1025ca:	c6 45 e1 0a          	movb   $0xa,-0x1f(%ebp)
  1025ce:	0f b6 45 e1          	movzbl -0x1f(%ebp),%eax
  1025d2:	0f b7 55 e8          	movzwl -0x18(%ebp),%edx
  1025d6:	ee                   	out    %al,(%dx)
  1025d7:	66 c7 45 e6 a0 00    	movw   $0xa0,-0x1a(%ebp)
  1025dd:	c6 45 e2 68          	movb   $0x68,-0x1e(%ebp)
  1025e1:	0f b6 45 e2          	movzbl -0x1e(%ebp),%eax
  1025e5:	0f b7 55 e6          	movzwl -0x1a(%ebp),%edx
  1025e9:	ee                   	out    %al,(%dx)
  1025ea:	66 c7 45 e4 a0 00    	movw   $0xa0,-0x1c(%ebp)
  1025f0:	c6 45 e3 0a          	movb   $0xa,-0x1d(%ebp)
  1025f4:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
  1025f8:	0f b7 55 e4          	movzwl -0x1c(%ebp),%edx
  1025fc:	ee                   	out    %al,(%dx)
    outb(IO_PIC1, 0x0a);    // read IRR by default

    outb(IO_PIC2, 0x68);    // OCW3
    outb(IO_PIC2, 0x0a);    // OCW3

    if (irq_mask != 0xFFFF) {
  1025fd:	0f b7 05 b0 05 11 00 	movzwl 0x1105b0,%eax
  102604:	66 83 f8 ff          	cmp    $0xffff,%ax
  102608:	74 13                	je     10261d <pic_init+0x13a>
        pic_setmask(irq_mask);
  10260a:	0f b7 05 b0 05 11 00 	movzwl 0x1105b0,%eax
  102611:	0f b7 c0             	movzwl %ax,%eax
  102614:	50                   	push   %eax
  102615:	e8 43 fe ff ff       	call   10245d <pic_setmask>
  10261a:	83 c4 04             	add    $0x4,%esp
    }
}
  10261d:	90                   	nop
  10261e:	c9                   	leave  
  10261f:	c3                   	ret    

00102620 <intr_enable>:
#include <x86.h>
#include <intr.h>

/* intr_enable - enable irq interrupt */
void
intr_enable(void) {
  102620:	55                   	push   %ebp
  102621:	89 e5                	mov    %esp,%ebp
    asm volatile ("lidt (%0)" :: "r" (pd) : "memory");
}

static inline void
sti(void) {
    asm volatile ("sti");
  102623:	fb                   	sti    
    sti();
}
  102624:	90                   	nop
  102625:	5d                   	pop    %ebp
  102626:	c3                   	ret    

00102627 <intr_disable>:

/* intr_disable - disable irq interrupt */
void
intr_disable(void) {
  102627:	55                   	push   %ebp
  102628:	89 e5                	mov    %esp,%ebp
}

static inline void
cli(void) {
    asm volatile ("cli" ::: "memory");
  10262a:	fa                   	cli    
    cli();
}
  10262b:	90                   	nop
  10262c:	5d                   	pop    %ebp
  10262d:	c3                   	ret    

0010262e <idt_init>:
    sizeof(idt) - 1, (uintptr_t)idt
};

/* idt_init - initialize IDT to each of the entry points in kern/trap/vectors.S */
void
idt_init(void) {
  10262e:	55                   	push   %ebp
  10262f:	89 e5                	mov    %esp,%ebp
  102631:	83 ec 10             	sub    $0x10,%esp
    extern uintptr_t __vectors[];
    int i;
    for (i = 0; i < sizeof(idt) / sizeof(struct gatedesc); i ++) {
  102634:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  10263b:	e9 c3 00 00 00       	jmp    102703 <idt_init+0xd5>
        SETGATE(idt[i], 0, GD_KTEXT, __vectors[i], DPL_KERNEL);
  102640:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102643:	8b 04 85 40 06 11 00 	mov    0x110640(,%eax,4),%eax
  10264a:	89 c2                	mov    %eax,%edx
  10264c:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10264f:	66 89 14 c5 20 11 11 	mov    %dx,0x111120(,%eax,8)
  102656:	00 
  102657:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10265a:	66 c7 04 c5 22 11 11 	movw   $0x8,0x111122(,%eax,8)
  102661:	00 08 00 
  102664:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102667:	0f b6 14 c5 24 11 11 	movzbl 0x111124(,%eax,8),%edx
  10266e:	00 
  10266f:	83 e2 e0             	and    $0xffffffe0,%edx
  102672:	88 14 c5 24 11 11 00 	mov    %dl,0x111124(,%eax,8)
  102679:	8b 45 fc             	mov    -0x4(%ebp),%eax
  10267c:	0f b6 14 c5 24 11 11 	movzbl 0x111124(,%eax,8),%edx
  102683:	00 
  102684:	83 e2 1f             	and    $0x1f,%edx
  102687:	88 14 c5 24 11 11 00 	mov    %dl,0x111124(,%eax,8)
  10268e:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102691:	0f b6 14 c5 25 11 11 	movzbl 0x111125(,%eax,8),%edx
  102698:	00 
  102699:	83 e2 f0             	and    $0xfffffff0,%edx
  10269c:	83 ca 0e             	or     $0xe,%edx
  10269f:	88 14 c5 25 11 11 00 	mov    %dl,0x111125(,%eax,8)
  1026a6:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1026a9:	0f b6 14 c5 25 11 11 	movzbl 0x111125(,%eax,8),%edx
  1026b0:	00 
  1026b1:	83 e2 ef             	and    $0xffffffef,%edx
  1026b4:	88 14 c5 25 11 11 00 	mov    %dl,0x111125(,%eax,8)
  1026bb:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1026be:	0f b6 14 c5 25 11 11 	movzbl 0x111125(,%eax,8),%edx
  1026c5:	00 
  1026c6:	83 e2 9f             	and    $0xffffff9f,%edx
  1026c9:	88 14 c5 25 11 11 00 	mov    %dl,0x111125(,%eax,8)
  1026d0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1026d3:	0f b6 14 c5 25 11 11 	movzbl 0x111125(,%eax,8),%edx
  1026da:	00 
  1026db:	83 ca 80             	or     $0xffffff80,%edx
  1026de:	88 14 c5 25 11 11 00 	mov    %dl,0x111125(,%eax,8)
  1026e5:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1026e8:	8b 04 85 40 06 11 00 	mov    0x110640(,%eax,4),%eax
  1026ef:	c1 e8 10             	shr    $0x10,%eax
  1026f2:	89 c2                	mov    %eax,%edx
  1026f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1026f7:	66 89 14 c5 26 11 11 	mov    %dx,0x111126(,%eax,8)
  1026fe:	00 
/* idt_init - initialize IDT to each of the entry points in kern/trap/vectors.S */
void
idt_init(void) {
    extern uintptr_t __vectors[];
    int i;
    for (i = 0; i < sizeof(idt) / sizeof(struct gatedesc); i ++) {
  1026ff:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  102703:	8b 45 fc             	mov    -0x4(%ebp),%eax
  102706:	3d ff 00 00 00       	cmp    $0xff,%eax
  10270b:	0f 86 2f ff ff ff    	jbe    102640 <idt_init+0x12>
  102711:	c7 45 f8 c0 05 11 00 	movl   $0x1105c0,-0x8(%ebp)
    }
}

static inline void
lidt(struct pseudodesc *pd) {
    asm volatile ("lidt (%0)" :: "r" (pd) : "memory");
  102718:	8b 45 f8             	mov    -0x8(%ebp),%eax
  10271b:	0f 01 18             	lidtl  (%eax)
        SETGATE(idt[i], 0, GD_KTEXT, __vectors[i], DPL_KERNEL);
    }

    // load the IDT
    lidt(&idt_pd);
}
  10271e:	90                   	nop
  10271f:	c9                   	leave  
  102720:	c3                   	ret    

00102721 <trapname>:

static const char *
trapname(int trapno) {
  102721:	55                   	push   %ebp
  102722:	89 e5                	mov    %esp,%ebp
        "Alignment Check",
        "Machine-Check",
        "SIMD Floating-Point Exception"
    };

    if (trapno < sizeof(excnames)/sizeof(const char * const)) {
  102724:	8b 45 08             	mov    0x8(%ebp),%eax
  102727:	83 f8 13             	cmp    $0x13,%eax
  10272a:	77 0c                	ja     102738 <trapname+0x17>
        return excnames[trapno];
  10272c:	8b 45 08             	mov    0x8(%ebp),%eax
  10272f:	8b 04 85 c0 4d 10 00 	mov    0x104dc0(,%eax,4),%eax
  102736:	eb 18                	jmp    102750 <trapname+0x2f>
    }
    if (trapno >= IRQ_OFFSET && trapno < IRQ_OFFSET + 16) {
  102738:	83 7d 08 1f          	cmpl   $0x1f,0x8(%ebp)
  10273c:	7e 0d                	jle    10274b <trapname+0x2a>
  10273e:	83 7d 08 2f          	cmpl   $0x2f,0x8(%ebp)
  102742:	7f 07                	jg     10274b <trapname+0x2a>
        return "Hardware Interrupt";
  102744:	b8 00 4a 10 00       	mov    $0x104a00,%eax
  102749:	eb 05                	jmp    102750 <trapname+0x2f>
    }
    return "(unknown trap)";
  10274b:	b8 13 4a 10 00       	mov    $0x104a13,%eax
}
  102750:	5d                   	pop    %ebp
  102751:	c3                   	ret    

00102752 <trap_in_kernel>:

/* trap_in_kernel - test if trap happened in kernel */
bool
trap_in_kernel(struct trapframe *tf) {
  102752:	55                   	push   %ebp
  102753:	89 e5                	mov    %esp,%ebp
    return (tf->tf_cs == (uint16_t)KERNEL_CS);
  102755:	8b 45 08             	mov    0x8(%ebp),%eax
  102758:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  10275c:	66 83 f8 08          	cmp    $0x8,%ax
  102760:	0f 94 c0             	sete   %al
  102763:	0f b6 c0             	movzbl %al,%eax
}
  102766:	5d                   	pop    %ebp
  102767:	c3                   	ret    

00102768 <print_trapframe>:
    "TF", "IF", "DF", "OF", NULL, NULL, "NT", NULL,
    "RF", "VM", "AC", "VIF", "VIP", "ID", NULL, NULL,
};

void
print_trapframe(struct trapframe *tf) {
  102768:	55                   	push   %ebp
  102769:	89 e5                	mov    %esp,%ebp
  10276b:	83 ec 18             	sub    $0x18,%esp
    cprintf("trapframe at %p\n", tf);
  10276e:	83 ec 08             	sub    $0x8,%esp
  102771:	ff 75 08             	pushl  0x8(%ebp)
  102774:	68 54 4a 10 00       	push   $0x104a54
  102779:	e8 51 dd ff ff       	call   1004cf <cprintf>
  10277e:	83 c4 10             	add    $0x10,%esp
    print_regs(&tf->tf_regs);
  102781:	8b 45 08             	mov    0x8(%ebp),%eax
  102784:	83 ec 0c             	sub    $0xc,%esp
  102787:	50                   	push   %eax
  102788:	e8 82 01 00 00       	call   10290f <print_regs>
  10278d:	83 c4 10             	add    $0x10,%esp
    cprintf("  es   0x----%04x\n", tf->tf_es);
  102790:	8b 45 08             	mov    0x8(%ebp),%eax
  102793:	0f b7 40 20          	movzwl 0x20(%eax),%eax
  102797:	0f b7 c0             	movzwl %ax,%eax
  10279a:	83 ec 08             	sub    $0x8,%esp
  10279d:	50                   	push   %eax
  10279e:	68 65 4a 10 00       	push   $0x104a65
  1027a3:	e8 27 dd ff ff       	call   1004cf <cprintf>
  1027a8:	83 c4 10             	add    $0x10,%esp
    cprintf("  ds   0x----%04x\n", tf->tf_ds);
  1027ab:	8b 45 08             	mov    0x8(%ebp),%eax
  1027ae:	0f b7 40 24          	movzwl 0x24(%eax),%eax
  1027b2:	0f b7 c0             	movzwl %ax,%eax
  1027b5:	83 ec 08             	sub    $0x8,%esp
  1027b8:	50                   	push   %eax
  1027b9:	68 78 4a 10 00       	push   $0x104a78
  1027be:	e8 0c dd ff ff       	call   1004cf <cprintf>
  1027c3:	83 c4 10             	add    $0x10,%esp
    cprintf("  trap 0x%08x %s\n", tf->tf_trapno, trapname(tf->tf_trapno));
  1027c6:	8b 45 08             	mov    0x8(%ebp),%eax
  1027c9:	8b 40 28             	mov    0x28(%eax),%eax
  1027cc:	83 ec 0c             	sub    $0xc,%esp
  1027cf:	50                   	push   %eax
  1027d0:	e8 4c ff ff ff       	call   102721 <trapname>
  1027d5:	83 c4 10             	add    $0x10,%esp
  1027d8:	89 c2                	mov    %eax,%edx
  1027da:	8b 45 08             	mov    0x8(%ebp),%eax
  1027dd:	8b 40 28             	mov    0x28(%eax),%eax
  1027e0:	83 ec 04             	sub    $0x4,%esp
  1027e3:	52                   	push   %edx
  1027e4:	50                   	push   %eax
  1027e5:	68 8b 4a 10 00       	push   $0x104a8b
  1027ea:	e8 e0 dc ff ff       	call   1004cf <cprintf>
  1027ef:	83 c4 10             	add    $0x10,%esp
    cprintf("  err  0x%08x\n", tf->tf_err);
  1027f2:	8b 45 08             	mov    0x8(%ebp),%eax
  1027f5:	8b 40 2c             	mov    0x2c(%eax),%eax
  1027f8:	83 ec 08             	sub    $0x8,%esp
  1027fb:	50                   	push   %eax
  1027fc:	68 9d 4a 10 00       	push   $0x104a9d
  102801:	e8 c9 dc ff ff       	call   1004cf <cprintf>
  102806:	83 c4 10             	add    $0x10,%esp
    cprintf("  eip  0x%08x\n", tf->tf_eip);
  102809:	8b 45 08             	mov    0x8(%ebp),%eax
  10280c:	8b 40 30             	mov    0x30(%eax),%eax
  10280f:	83 ec 08             	sub    $0x8,%esp
  102812:	50                   	push   %eax
  102813:	68 ac 4a 10 00       	push   $0x104aac
  102818:	e8 b2 dc ff ff       	call   1004cf <cprintf>
  10281d:	83 c4 10             	add    $0x10,%esp
    cprintf("  cs   0x----%04x\n", tf->tf_cs);
  102820:	8b 45 08             	mov    0x8(%ebp),%eax
  102823:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  102827:	0f b7 c0             	movzwl %ax,%eax
  10282a:	83 ec 08             	sub    $0x8,%esp
  10282d:	50                   	push   %eax
  10282e:	68 bb 4a 10 00       	push   $0x104abb
  102833:	e8 97 dc ff ff       	call   1004cf <cprintf>
  102838:	83 c4 10             	add    $0x10,%esp
    cprintf("  flag 0x%08x ", tf->tf_eflags);
  10283b:	8b 45 08             	mov    0x8(%ebp),%eax
  10283e:	8b 40 38             	mov    0x38(%eax),%eax
  102841:	83 ec 08             	sub    $0x8,%esp
  102844:	50                   	push   %eax
  102845:	68 ce 4a 10 00       	push   $0x104ace
  10284a:	e8 80 dc ff ff       	call   1004cf <cprintf>
  10284f:	83 c4 10             	add    $0x10,%esp

    int i, j;
    for (i = 0, j = 1; i < sizeof(IA32flags) / sizeof(IA32flags[0]); i ++, j <<= 1) {
  102852:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  102859:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  102860:	eb 3f                	jmp    1028a1 <print_trapframe+0x139>
        if ((tf->tf_eflags & j) && IA32flags[i] != NULL) {
  102862:	8b 45 08             	mov    0x8(%ebp),%eax
  102865:	8b 50 38             	mov    0x38(%eax),%edx
  102868:	8b 45 f0             	mov    -0x10(%ebp),%eax
  10286b:	21 d0                	and    %edx,%eax
  10286d:	85 c0                	test   %eax,%eax
  10286f:	74 29                	je     10289a <print_trapframe+0x132>
  102871:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102874:	8b 04 85 e0 05 11 00 	mov    0x1105e0(,%eax,4),%eax
  10287b:	85 c0                	test   %eax,%eax
  10287d:	74 1b                	je     10289a <print_trapframe+0x132>
            cprintf("%s,", IA32flags[i]);
  10287f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  102882:	8b 04 85 e0 05 11 00 	mov    0x1105e0(,%eax,4),%eax
  102889:	83 ec 08             	sub    $0x8,%esp
  10288c:	50                   	push   %eax
  10288d:	68 dd 4a 10 00       	push   $0x104add
  102892:	e8 38 dc ff ff       	call   1004cf <cprintf>
  102897:	83 c4 10             	add    $0x10,%esp
    cprintf("  eip  0x%08x\n", tf->tf_eip);
    cprintf("  cs   0x----%04x\n", tf->tf_cs);
    cprintf("  flag 0x%08x ", tf->tf_eflags);

    int i, j;
    for (i = 0, j = 1; i < sizeof(IA32flags) / sizeof(IA32flags[0]); i ++, j <<= 1) {
  10289a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  10289e:	d1 65 f0             	shll   -0x10(%ebp)
  1028a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1028a4:	83 f8 17             	cmp    $0x17,%eax
  1028a7:	76 b9                	jbe    102862 <print_trapframe+0xfa>
        if ((tf->tf_eflags & j) && IA32flags[i] != NULL) {
            cprintf("%s,", IA32flags[i]);
        }
    }
    cprintf("IOPL=%d\n", (tf->tf_eflags & FL_IOPL_MASK) >> 12);
  1028a9:	8b 45 08             	mov    0x8(%ebp),%eax
  1028ac:	8b 40 38             	mov    0x38(%eax),%eax
  1028af:	25 00 30 00 00       	and    $0x3000,%eax
  1028b4:	c1 e8 0c             	shr    $0xc,%eax
  1028b7:	83 ec 08             	sub    $0x8,%esp
  1028ba:	50                   	push   %eax
  1028bb:	68 e1 4a 10 00       	push   $0x104ae1
  1028c0:	e8 0a dc ff ff       	call   1004cf <cprintf>
  1028c5:	83 c4 10             	add    $0x10,%esp

    if (!trap_in_kernel(tf)) {
  1028c8:	83 ec 0c             	sub    $0xc,%esp
  1028cb:	ff 75 08             	pushl  0x8(%ebp)
  1028ce:	e8 7f fe ff ff       	call   102752 <trap_in_kernel>
  1028d3:	83 c4 10             	add    $0x10,%esp
  1028d6:	85 c0                	test   %eax,%eax
  1028d8:	75 32                	jne    10290c <print_trapframe+0x1a4>
        cprintf("  esp  0x%08x\n", tf->tf_esp);
  1028da:	8b 45 08             	mov    0x8(%ebp),%eax
  1028dd:	8b 40 3c             	mov    0x3c(%eax),%eax
  1028e0:	83 ec 08             	sub    $0x8,%esp
  1028e3:	50                   	push   %eax
  1028e4:	68 ea 4a 10 00       	push   $0x104aea
  1028e9:	e8 e1 db ff ff       	call   1004cf <cprintf>
  1028ee:	83 c4 10             	add    $0x10,%esp
        cprintf("  ss   0x----%04x\n", tf->tf_ss);
  1028f1:	8b 45 08             	mov    0x8(%ebp),%eax
  1028f4:	0f b7 40 40          	movzwl 0x40(%eax),%eax
  1028f8:	0f b7 c0             	movzwl %ax,%eax
  1028fb:	83 ec 08             	sub    $0x8,%esp
  1028fe:	50                   	push   %eax
  1028ff:	68 f9 4a 10 00       	push   $0x104af9
  102904:	e8 c6 db ff ff       	call   1004cf <cprintf>
  102909:	83 c4 10             	add    $0x10,%esp
    }
}
  10290c:	90                   	nop
  10290d:	c9                   	leave  
  10290e:	c3                   	ret    

0010290f <print_regs>:

void
print_regs(struct pushregs *regs) {
  10290f:	55                   	push   %ebp
  102910:	89 e5                	mov    %esp,%ebp
  102912:	83 ec 08             	sub    $0x8,%esp
    cprintf("  edi  0x%08x\n", regs->reg_edi);
  102915:	8b 45 08             	mov    0x8(%ebp),%eax
  102918:	8b 00                	mov    (%eax),%eax
  10291a:	83 ec 08             	sub    $0x8,%esp
  10291d:	50                   	push   %eax
  10291e:	68 0c 4b 10 00       	push   $0x104b0c
  102923:	e8 a7 db ff ff       	call   1004cf <cprintf>
  102928:	83 c4 10             	add    $0x10,%esp
    cprintf("  esi  0x%08x\n", regs->reg_esi);
  10292b:	8b 45 08             	mov    0x8(%ebp),%eax
  10292e:	8b 40 04             	mov    0x4(%eax),%eax
  102931:	83 ec 08             	sub    $0x8,%esp
  102934:	50                   	push   %eax
  102935:	68 1b 4b 10 00       	push   $0x104b1b
  10293a:	e8 90 db ff ff       	call   1004cf <cprintf>
  10293f:	83 c4 10             	add    $0x10,%esp
    cprintf("  ebp  0x%08x\n", regs->reg_ebp);
  102942:	8b 45 08             	mov    0x8(%ebp),%eax
  102945:	8b 40 08             	mov    0x8(%eax),%eax
  102948:	83 ec 08             	sub    $0x8,%esp
  10294b:	50                   	push   %eax
  10294c:	68 2a 4b 10 00       	push   $0x104b2a
  102951:	e8 79 db ff ff       	call   1004cf <cprintf>
  102956:	83 c4 10             	add    $0x10,%esp
    cprintf("  oesp 0x%08x\n", regs->reg_oesp);
  102959:	8b 45 08             	mov    0x8(%ebp),%eax
  10295c:	8b 40 0c             	mov    0xc(%eax),%eax
  10295f:	83 ec 08             	sub    $0x8,%esp
  102962:	50                   	push   %eax
  102963:	68 39 4b 10 00       	push   $0x104b39
  102968:	e8 62 db ff ff       	call   1004cf <cprintf>
  10296d:	83 c4 10             	add    $0x10,%esp
    cprintf("  ebx  0x%08x\n", regs->reg_ebx);
  102970:	8b 45 08             	mov    0x8(%ebp),%eax
  102973:	8b 40 10             	mov    0x10(%eax),%eax
  102976:	83 ec 08             	sub    $0x8,%esp
  102979:	50                   	push   %eax
  10297a:	68 48 4b 10 00       	push   $0x104b48
  10297f:	e8 4b db ff ff       	call   1004cf <cprintf>
  102984:	83 c4 10             	add    $0x10,%esp
    cprintf("  edx  0x%08x\n", regs->reg_edx);
  102987:	8b 45 08             	mov    0x8(%ebp),%eax
  10298a:	8b 40 14             	mov    0x14(%eax),%eax
  10298d:	83 ec 08             	sub    $0x8,%esp
  102990:	50                   	push   %eax
  102991:	68 57 4b 10 00       	push   $0x104b57
  102996:	e8 34 db ff ff       	call   1004cf <cprintf>
  10299b:	83 c4 10             	add    $0x10,%esp
    cprintf("  ecx  0x%08x\n", regs->reg_ecx);
  10299e:	8b 45 08             	mov    0x8(%ebp),%eax
  1029a1:	8b 40 18             	mov    0x18(%eax),%eax
  1029a4:	83 ec 08             	sub    $0x8,%esp
  1029a7:	50                   	push   %eax
  1029a8:	68 66 4b 10 00       	push   $0x104b66
  1029ad:	e8 1d db ff ff       	call   1004cf <cprintf>
  1029b2:	83 c4 10             	add    $0x10,%esp
    cprintf("  eax  0x%08x\n", regs->reg_eax);
  1029b5:	8b 45 08             	mov    0x8(%ebp),%eax
  1029b8:	8b 40 1c             	mov    0x1c(%eax),%eax
  1029bb:	83 ec 08             	sub    $0x8,%esp
  1029be:	50                   	push   %eax
  1029bf:	68 75 4b 10 00       	push   $0x104b75
  1029c4:	e8 06 db ff ff       	call   1004cf <cprintf>
  1029c9:	83 c4 10             	add    $0x10,%esp
}
  1029cc:	90                   	nop
  1029cd:	c9                   	leave  
  1029ce:	c3                   	ret    

001029cf <trap_dispatch>:

/* trap_dispatch - dispatch based on what type of trap occurred */
static void
trap_dispatch(struct trapframe *tf) {
  1029cf:	55                   	push   %ebp
  1029d0:	89 e5                	mov    %esp,%ebp
  1029d2:	83 ec 18             	sub    $0x18,%esp
    char c;

    switch (tf->tf_trapno) {
  1029d5:	8b 45 08             	mov    0x8(%ebp),%eax
  1029d8:	8b 40 28             	mov    0x28(%eax),%eax
  1029db:	83 f8 24             	cmp    $0x24,%eax
  1029de:	0f 87 b2 00 00 00    	ja     102a96 <trap_dispatch+0xc7>
  1029e4:	8b 04 85 d4 4b 10 00 	mov    0x104bd4(,%eax,4),%eax
  1029eb:	ff e0                	jmp    *%eax
    case T_DEBUG:
    case T_BRKPT:
        debug_monitor(tf);
  1029ed:	83 ec 0c             	sub    $0xc,%esp
  1029f0:	ff 75 08             	pushl  0x8(%ebp)
  1029f3:	e8 33 e9 ff ff       	call   10132b <debug_monitor>
  1029f8:	83 c4 10             	add    $0x10,%esp
        break;
  1029fb:	e9 cd 00 00 00       	jmp    102acd <trap_dispatch+0xfe>
    case IRQ_OFFSET + IRQ_TIMER:
        ticks ++;
  102a00:	a1 88 19 11 00       	mov    0x111988,%eax
  102a05:	83 c0 01             	add    $0x1,%eax
  102a08:	a3 88 19 11 00       	mov    %eax,0x111988
        if (ticks % TICK_NUM == 0) {
  102a0d:	8b 0d 88 19 11 00    	mov    0x111988,%ecx
  102a13:	ba 1f 85 eb 51       	mov    $0x51eb851f,%edx
  102a18:	89 c8                	mov    %ecx,%eax
  102a1a:	f7 e2                	mul    %edx
  102a1c:	89 d0                	mov    %edx,%eax
  102a1e:	c1 e8 05             	shr    $0x5,%eax
  102a21:	6b c0 64             	imul   $0x64,%eax,%eax
  102a24:	29 c1                	sub    %eax,%ecx
  102a26:	89 c8                	mov    %ecx,%eax
  102a28:	85 c0                	test   %eax,%eax
  102a2a:	0f 85 9c 00 00 00    	jne    102acc <trap_dispatch+0xfd>
            cprintf("%d ticks\n",TICK_NUM);
  102a30:	83 ec 08             	sub    $0x8,%esp
  102a33:	6a 64                	push   $0x64
  102a35:	68 84 4b 10 00       	push   $0x104b84
  102a3a:	e8 90 da ff ff       	call   1004cf <cprintf>
  102a3f:	83 c4 10             	add    $0x10,%esp
        }
        break;
  102a42:	e9 85 00 00 00       	jmp    102acc <trap_dispatch+0xfd>
    case IRQ_OFFSET + IRQ_COM1:
    case IRQ_OFFSET + IRQ_KBD:
        if ((c = cons_getc()) == 13) {
  102a47:	e8 b5 f9 ff ff       	call   102401 <cons_getc>
  102a4c:	88 45 f7             	mov    %al,-0x9(%ebp)
  102a4f:	80 7d f7 0d          	cmpb   $0xd,-0x9(%ebp)
  102a53:	75 10                	jne    102a65 <trap_dispatch+0x96>
            debug_monitor(tf);
  102a55:	83 ec 0c             	sub    $0xc,%esp
  102a58:	ff 75 08             	pushl  0x8(%ebp)
  102a5b:	e8 cb e8 ff ff       	call   10132b <debug_monitor>
  102a60:	83 c4 10             	add    $0x10,%esp
        }
        else {
            cprintf("%s [%03d] %c\n",
                    (tf->tf_trapno != IRQ_OFFSET + IRQ_KBD) ? "serial" : "kbd", c, c);
        }
        break;
  102a63:	eb 68                	jmp    102acd <trap_dispatch+0xfe>
    case IRQ_OFFSET + IRQ_KBD:
        if ((c = cons_getc()) == 13) {
            debug_monitor(tf);
        }
        else {
            cprintf("%s [%03d] %c\n",
  102a65:	0f be 55 f7          	movsbl -0x9(%ebp),%edx
  102a69:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
                    (tf->tf_trapno != IRQ_OFFSET + IRQ_KBD) ? "serial" : "kbd", c, c);
  102a6d:	8b 4d 08             	mov    0x8(%ebp),%ecx
  102a70:	8b 49 28             	mov    0x28(%ecx),%ecx
    case IRQ_OFFSET + IRQ_KBD:
        if ((c = cons_getc()) == 13) {
            debug_monitor(tf);
        }
        else {
            cprintf("%s [%03d] %c\n",
  102a73:	83 f9 21             	cmp    $0x21,%ecx
  102a76:	74 07                	je     102a7f <trap_dispatch+0xb0>
  102a78:	b9 8e 4b 10 00       	mov    $0x104b8e,%ecx
  102a7d:	eb 05                	jmp    102a84 <trap_dispatch+0xb5>
  102a7f:	b9 95 4b 10 00       	mov    $0x104b95,%ecx
  102a84:	52                   	push   %edx
  102a85:	50                   	push   %eax
  102a86:	51                   	push   %ecx
  102a87:	68 99 4b 10 00       	push   $0x104b99
  102a8c:	e8 3e da ff ff       	call   1004cf <cprintf>
  102a91:	83 c4 10             	add    $0x10,%esp
                    (tf->tf_trapno != IRQ_OFFSET + IRQ_KBD) ? "serial" : "kbd", c, c);
        }
        break;
  102a94:	eb 37                	jmp    102acd <trap_dispatch+0xfe>
    default:
        // in kernel, it must be a mistake
        if ((tf->tf_cs & 3) == 0) {
  102a96:	8b 45 08             	mov    0x8(%ebp),%eax
  102a99:	0f b7 40 34          	movzwl 0x34(%eax),%eax
  102a9d:	0f b7 c0             	movzwl %ax,%eax
  102aa0:	83 e0 03             	and    $0x3,%eax
  102aa3:	85 c0                	test   %eax,%eax
  102aa5:	75 26                	jne    102acd <trap_dispatch+0xfe>
            print_trapframe(tf);
  102aa7:	83 ec 0c             	sub    $0xc,%esp
  102aaa:	ff 75 08             	pushl  0x8(%ebp)
  102aad:	e8 b6 fc ff ff       	call   102768 <print_trapframe>
  102ab2:	83 c4 10             	add    $0x10,%esp
            panic("unexpected trap in kernel.\n");
  102ab5:	83 ec 04             	sub    $0x4,%esp
  102ab8:	68 a7 4b 10 00       	push   $0x104ba7
  102abd:	68 99 00 00 00       	push   $0x99
  102ac2:	68 c3 4b 10 00       	push   $0x104bc3
  102ac7:	e8 69 db ff ff       	call   100635 <__panic>
    case IRQ_OFFSET + IRQ_TIMER:
        ticks ++;
        if (ticks % TICK_NUM == 0) {
            cprintf("%d ticks\n",TICK_NUM);
        }
        break;
  102acc:	90                   	nop
        if ((tf->tf_cs & 3) == 0) {
            print_trapframe(tf);
            panic("unexpected trap in kernel.\n");
        }
    }
}
  102acd:	90                   	nop
  102ace:	c9                   	leave  
  102acf:	c3                   	ret    

00102ad0 <trap>:
 * trap - handles or dispatches an exception/interrupt. if and when trap() returns,
 * the code in kern/trap/trapentry.S restores the old CPU state saved in the
 * trapframe and then uses the iret instruction to return from the exception.
 * */
void
trap(struct trapframe *tf) {
  102ad0:	55                   	push   %ebp
  102ad1:	89 e5                	mov    %esp,%ebp
  102ad3:	83 ec 08             	sub    $0x8,%esp
    trap_dispatch(tf);
  102ad6:	83 ec 0c             	sub    $0xc,%esp
  102ad9:	ff 75 08             	pushl  0x8(%ebp)
  102adc:	e8 ee fe ff ff       	call   1029cf <trap_dispatch>
  102ae1:	83 c4 10             	add    $0x10,%esp
}
  102ae4:	90                   	nop
  102ae5:	c9                   	leave  
  102ae6:	c3                   	ret    

00102ae7 <vector0>:
# handler
.text
.globl __alltraps
.globl vector0
vector0:
  pushl $0
  102ae7:	6a 00                	push   $0x0
  pushl $0
  102ae9:	6a 00                	push   $0x0
  jmp __alltraps
  102aeb:	e9 67 0a 00 00       	jmp    103557 <__alltraps>

00102af0 <vector1>:
.globl vector1
vector1:
  pushl $0
  102af0:	6a 00                	push   $0x0
  pushl $1
  102af2:	6a 01                	push   $0x1
  jmp __alltraps
  102af4:	e9 5e 0a 00 00       	jmp    103557 <__alltraps>

00102af9 <vector2>:
.globl vector2
vector2:
  pushl $0
  102af9:	6a 00                	push   $0x0
  pushl $2
  102afb:	6a 02                	push   $0x2
  jmp __alltraps
  102afd:	e9 55 0a 00 00       	jmp    103557 <__alltraps>

00102b02 <vector3>:
.globl vector3
vector3:
  pushl $0
  102b02:	6a 00                	push   $0x0
  pushl $3
  102b04:	6a 03                	push   $0x3
  jmp __alltraps
  102b06:	e9 4c 0a 00 00       	jmp    103557 <__alltraps>

00102b0b <vector4>:
.globl vector4
vector4:
  pushl $0
  102b0b:	6a 00                	push   $0x0
  pushl $4
  102b0d:	6a 04                	push   $0x4
  jmp __alltraps
  102b0f:	e9 43 0a 00 00       	jmp    103557 <__alltraps>

00102b14 <vector5>:
.globl vector5
vector5:
  pushl $0
  102b14:	6a 00                	push   $0x0
  pushl $5
  102b16:	6a 05                	push   $0x5
  jmp __alltraps
  102b18:	e9 3a 0a 00 00       	jmp    103557 <__alltraps>

00102b1d <vector6>:
.globl vector6
vector6:
  pushl $0
  102b1d:	6a 00                	push   $0x0
  pushl $6
  102b1f:	6a 06                	push   $0x6
  jmp __alltraps
  102b21:	e9 31 0a 00 00       	jmp    103557 <__alltraps>

00102b26 <vector7>:
.globl vector7
vector7:
  pushl $0
  102b26:	6a 00                	push   $0x0
  pushl $7
  102b28:	6a 07                	push   $0x7
  jmp __alltraps
  102b2a:	e9 28 0a 00 00       	jmp    103557 <__alltraps>

00102b2f <vector8>:
.globl vector8
vector8:
  pushl $8
  102b2f:	6a 08                	push   $0x8
  jmp __alltraps
  102b31:	e9 21 0a 00 00       	jmp    103557 <__alltraps>

00102b36 <vector9>:
.globl vector9
vector9:
  pushl $9
  102b36:	6a 09                	push   $0x9
  jmp __alltraps
  102b38:	e9 1a 0a 00 00       	jmp    103557 <__alltraps>

00102b3d <vector10>:
.globl vector10
vector10:
  pushl $10
  102b3d:	6a 0a                	push   $0xa
  jmp __alltraps
  102b3f:	e9 13 0a 00 00       	jmp    103557 <__alltraps>

00102b44 <vector11>:
.globl vector11
vector11:
  pushl $11
  102b44:	6a 0b                	push   $0xb
  jmp __alltraps
  102b46:	e9 0c 0a 00 00       	jmp    103557 <__alltraps>

00102b4b <vector12>:
.globl vector12
vector12:
  pushl $12
  102b4b:	6a 0c                	push   $0xc
  jmp __alltraps
  102b4d:	e9 05 0a 00 00       	jmp    103557 <__alltraps>

00102b52 <vector13>:
.globl vector13
vector13:
  pushl $13
  102b52:	6a 0d                	push   $0xd
  jmp __alltraps
  102b54:	e9 fe 09 00 00       	jmp    103557 <__alltraps>

00102b59 <vector14>:
.globl vector14
vector14:
  pushl $14
  102b59:	6a 0e                	push   $0xe
  jmp __alltraps
  102b5b:	e9 f7 09 00 00       	jmp    103557 <__alltraps>

00102b60 <vector15>:
.globl vector15
vector15:
  pushl $0
  102b60:	6a 00                	push   $0x0
  pushl $15
  102b62:	6a 0f                	push   $0xf
  jmp __alltraps
  102b64:	e9 ee 09 00 00       	jmp    103557 <__alltraps>

00102b69 <vector16>:
.globl vector16
vector16:
  pushl $0
  102b69:	6a 00                	push   $0x0
  pushl $16
  102b6b:	6a 10                	push   $0x10
  jmp __alltraps
  102b6d:	e9 e5 09 00 00       	jmp    103557 <__alltraps>

00102b72 <vector17>:
.globl vector17
vector17:
  pushl $17
  102b72:	6a 11                	push   $0x11
  jmp __alltraps
  102b74:	e9 de 09 00 00       	jmp    103557 <__alltraps>

00102b79 <vector18>:
.globl vector18
vector18:
  pushl $0
  102b79:	6a 00                	push   $0x0
  pushl $18
  102b7b:	6a 12                	push   $0x12
  jmp __alltraps
  102b7d:	e9 d5 09 00 00       	jmp    103557 <__alltraps>

00102b82 <vector19>:
.globl vector19
vector19:
  pushl $0
  102b82:	6a 00                	push   $0x0
  pushl $19
  102b84:	6a 13                	push   $0x13
  jmp __alltraps
  102b86:	e9 cc 09 00 00       	jmp    103557 <__alltraps>

00102b8b <vector20>:
.globl vector20
vector20:
  pushl $0
  102b8b:	6a 00                	push   $0x0
  pushl $20
  102b8d:	6a 14                	push   $0x14
  jmp __alltraps
  102b8f:	e9 c3 09 00 00       	jmp    103557 <__alltraps>

00102b94 <vector21>:
.globl vector21
vector21:
  pushl $0
  102b94:	6a 00                	push   $0x0
  pushl $21
  102b96:	6a 15                	push   $0x15
  jmp __alltraps
  102b98:	e9 ba 09 00 00       	jmp    103557 <__alltraps>

00102b9d <vector22>:
.globl vector22
vector22:
  pushl $0
  102b9d:	6a 00                	push   $0x0
  pushl $22
  102b9f:	6a 16                	push   $0x16
  jmp __alltraps
  102ba1:	e9 b1 09 00 00       	jmp    103557 <__alltraps>

00102ba6 <vector23>:
.globl vector23
vector23:
  pushl $0
  102ba6:	6a 00                	push   $0x0
  pushl $23
  102ba8:	6a 17                	push   $0x17
  jmp __alltraps
  102baa:	e9 a8 09 00 00       	jmp    103557 <__alltraps>

00102baf <vector24>:
.globl vector24
vector24:
  pushl $0
  102baf:	6a 00                	push   $0x0
  pushl $24
  102bb1:	6a 18                	push   $0x18
  jmp __alltraps
  102bb3:	e9 9f 09 00 00       	jmp    103557 <__alltraps>

00102bb8 <vector25>:
.globl vector25
vector25:
  pushl $0
  102bb8:	6a 00                	push   $0x0
  pushl $25
  102bba:	6a 19                	push   $0x19
  jmp __alltraps
  102bbc:	e9 96 09 00 00       	jmp    103557 <__alltraps>

00102bc1 <vector26>:
.globl vector26
vector26:
  pushl $0
  102bc1:	6a 00                	push   $0x0
  pushl $26
  102bc3:	6a 1a                	push   $0x1a
  jmp __alltraps
  102bc5:	e9 8d 09 00 00       	jmp    103557 <__alltraps>

00102bca <vector27>:
.globl vector27
vector27:
  pushl $0
  102bca:	6a 00                	push   $0x0
  pushl $27
  102bcc:	6a 1b                	push   $0x1b
  jmp __alltraps
  102bce:	e9 84 09 00 00       	jmp    103557 <__alltraps>

00102bd3 <vector28>:
.globl vector28
vector28:
  pushl $0
  102bd3:	6a 00                	push   $0x0
  pushl $28
  102bd5:	6a 1c                	push   $0x1c
  jmp __alltraps
  102bd7:	e9 7b 09 00 00       	jmp    103557 <__alltraps>

00102bdc <vector29>:
.globl vector29
vector29:
  pushl $0
  102bdc:	6a 00                	push   $0x0
  pushl $29
  102bde:	6a 1d                	push   $0x1d
  jmp __alltraps
  102be0:	e9 72 09 00 00       	jmp    103557 <__alltraps>

00102be5 <vector30>:
.globl vector30
vector30:
  pushl $0
  102be5:	6a 00                	push   $0x0
  pushl $30
  102be7:	6a 1e                	push   $0x1e
  jmp __alltraps
  102be9:	e9 69 09 00 00       	jmp    103557 <__alltraps>

00102bee <vector31>:
.globl vector31
vector31:
  pushl $0
  102bee:	6a 00                	push   $0x0
  pushl $31
  102bf0:	6a 1f                	push   $0x1f
  jmp __alltraps
  102bf2:	e9 60 09 00 00       	jmp    103557 <__alltraps>

00102bf7 <vector32>:
.globl vector32
vector32:
  pushl $0
  102bf7:	6a 00                	push   $0x0
  pushl $32
  102bf9:	6a 20                	push   $0x20
  jmp __alltraps
  102bfb:	e9 57 09 00 00       	jmp    103557 <__alltraps>

00102c00 <vector33>:
.globl vector33
vector33:
  pushl $0
  102c00:	6a 00                	push   $0x0
  pushl $33
  102c02:	6a 21                	push   $0x21
  jmp __alltraps
  102c04:	e9 4e 09 00 00       	jmp    103557 <__alltraps>

00102c09 <vector34>:
.globl vector34
vector34:
  pushl $0
  102c09:	6a 00                	push   $0x0
  pushl $34
  102c0b:	6a 22                	push   $0x22
  jmp __alltraps
  102c0d:	e9 45 09 00 00       	jmp    103557 <__alltraps>

00102c12 <vector35>:
.globl vector35
vector35:
  pushl $0
  102c12:	6a 00                	push   $0x0
  pushl $35
  102c14:	6a 23                	push   $0x23
  jmp __alltraps
  102c16:	e9 3c 09 00 00       	jmp    103557 <__alltraps>

00102c1b <vector36>:
.globl vector36
vector36:
  pushl $0
  102c1b:	6a 00                	push   $0x0
  pushl $36
  102c1d:	6a 24                	push   $0x24
  jmp __alltraps
  102c1f:	e9 33 09 00 00       	jmp    103557 <__alltraps>

00102c24 <vector37>:
.globl vector37
vector37:
  pushl $0
  102c24:	6a 00                	push   $0x0
  pushl $37
  102c26:	6a 25                	push   $0x25
  jmp __alltraps
  102c28:	e9 2a 09 00 00       	jmp    103557 <__alltraps>

00102c2d <vector38>:
.globl vector38
vector38:
  pushl $0
  102c2d:	6a 00                	push   $0x0
  pushl $38
  102c2f:	6a 26                	push   $0x26
  jmp __alltraps
  102c31:	e9 21 09 00 00       	jmp    103557 <__alltraps>

00102c36 <vector39>:
.globl vector39
vector39:
  pushl $0
  102c36:	6a 00                	push   $0x0
  pushl $39
  102c38:	6a 27                	push   $0x27
  jmp __alltraps
  102c3a:	e9 18 09 00 00       	jmp    103557 <__alltraps>

00102c3f <vector40>:
.globl vector40
vector40:
  pushl $0
  102c3f:	6a 00                	push   $0x0
  pushl $40
  102c41:	6a 28                	push   $0x28
  jmp __alltraps
  102c43:	e9 0f 09 00 00       	jmp    103557 <__alltraps>

00102c48 <vector41>:
.globl vector41
vector41:
  pushl $0
  102c48:	6a 00                	push   $0x0
  pushl $41
  102c4a:	6a 29                	push   $0x29
  jmp __alltraps
  102c4c:	e9 06 09 00 00       	jmp    103557 <__alltraps>

00102c51 <vector42>:
.globl vector42
vector42:
  pushl $0
  102c51:	6a 00                	push   $0x0
  pushl $42
  102c53:	6a 2a                	push   $0x2a
  jmp __alltraps
  102c55:	e9 fd 08 00 00       	jmp    103557 <__alltraps>

00102c5a <vector43>:
.globl vector43
vector43:
  pushl $0
  102c5a:	6a 00                	push   $0x0
  pushl $43
  102c5c:	6a 2b                	push   $0x2b
  jmp __alltraps
  102c5e:	e9 f4 08 00 00       	jmp    103557 <__alltraps>

00102c63 <vector44>:
.globl vector44
vector44:
  pushl $0
  102c63:	6a 00                	push   $0x0
  pushl $44
  102c65:	6a 2c                	push   $0x2c
  jmp __alltraps
  102c67:	e9 eb 08 00 00       	jmp    103557 <__alltraps>

00102c6c <vector45>:
.globl vector45
vector45:
  pushl $0
  102c6c:	6a 00                	push   $0x0
  pushl $45
  102c6e:	6a 2d                	push   $0x2d
  jmp __alltraps
  102c70:	e9 e2 08 00 00       	jmp    103557 <__alltraps>

00102c75 <vector46>:
.globl vector46
vector46:
  pushl $0
  102c75:	6a 00                	push   $0x0
  pushl $46
  102c77:	6a 2e                	push   $0x2e
  jmp __alltraps
  102c79:	e9 d9 08 00 00       	jmp    103557 <__alltraps>

00102c7e <vector47>:
.globl vector47
vector47:
  pushl $0
  102c7e:	6a 00                	push   $0x0
  pushl $47
  102c80:	6a 2f                	push   $0x2f
  jmp __alltraps
  102c82:	e9 d0 08 00 00       	jmp    103557 <__alltraps>

00102c87 <vector48>:
.globl vector48
vector48:
  pushl $0
  102c87:	6a 00                	push   $0x0
  pushl $48
  102c89:	6a 30                	push   $0x30
  jmp __alltraps
  102c8b:	e9 c7 08 00 00       	jmp    103557 <__alltraps>

00102c90 <vector49>:
.globl vector49
vector49:
  pushl $0
  102c90:	6a 00                	push   $0x0
  pushl $49
  102c92:	6a 31                	push   $0x31
  jmp __alltraps
  102c94:	e9 be 08 00 00       	jmp    103557 <__alltraps>

00102c99 <vector50>:
.globl vector50
vector50:
  pushl $0
  102c99:	6a 00                	push   $0x0
  pushl $50
  102c9b:	6a 32                	push   $0x32
  jmp __alltraps
  102c9d:	e9 b5 08 00 00       	jmp    103557 <__alltraps>

00102ca2 <vector51>:
.globl vector51
vector51:
  pushl $0
  102ca2:	6a 00                	push   $0x0
  pushl $51
  102ca4:	6a 33                	push   $0x33
  jmp __alltraps
  102ca6:	e9 ac 08 00 00       	jmp    103557 <__alltraps>

00102cab <vector52>:
.globl vector52
vector52:
  pushl $0
  102cab:	6a 00                	push   $0x0
  pushl $52
  102cad:	6a 34                	push   $0x34
  jmp __alltraps
  102caf:	e9 a3 08 00 00       	jmp    103557 <__alltraps>

00102cb4 <vector53>:
.globl vector53
vector53:
  pushl $0
  102cb4:	6a 00                	push   $0x0
  pushl $53
  102cb6:	6a 35                	push   $0x35
  jmp __alltraps
  102cb8:	e9 9a 08 00 00       	jmp    103557 <__alltraps>

00102cbd <vector54>:
.globl vector54
vector54:
  pushl $0
  102cbd:	6a 00                	push   $0x0
  pushl $54
  102cbf:	6a 36                	push   $0x36
  jmp __alltraps
  102cc1:	e9 91 08 00 00       	jmp    103557 <__alltraps>

00102cc6 <vector55>:
.globl vector55
vector55:
  pushl $0
  102cc6:	6a 00                	push   $0x0
  pushl $55
  102cc8:	6a 37                	push   $0x37
  jmp __alltraps
  102cca:	e9 88 08 00 00       	jmp    103557 <__alltraps>

00102ccf <vector56>:
.globl vector56
vector56:
  pushl $0
  102ccf:	6a 00                	push   $0x0
  pushl $56
  102cd1:	6a 38                	push   $0x38
  jmp __alltraps
  102cd3:	e9 7f 08 00 00       	jmp    103557 <__alltraps>

00102cd8 <vector57>:
.globl vector57
vector57:
  pushl $0
  102cd8:	6a 00                	push   $0x0
  pushl $57
  102cda:	6a 39                	push   $0x39
  jmp __alltraps
  102cdc:	e9 76 08 00 00       	jmp    103557 <__alltraps>

00102ce1 <vector58>:
.globl vector58
vector58:
  pushl $0
  102ce1:	6a 00                	push   $0x0
  pushl $58
  102ce3:	6a 3a                	push   $0x3a
  jmp __alltraps
  102ce5:	e9 6d 08 00 00       	jmp    103557 <__alltraps>

00102cea <vector59>:
.globl vector59
vector59:
  pushl $0
  102cea:	6a 00                	push   $0x0
  pushl $59
  102cec:	6a 3b                	push   $0x3b
  jmp __alltraps
  102cee:	e9 64 08 00 00       	jmp    103557 <__alltraps>

00102cf3 <vector60>:
.globl vector60
vector60:
  pushl $0
  102cf3:	6a 00                	push   $0x0
  pushl $60
  102cf5:	6a 3c                	push   $0x3c
  jmp __alltraps
  102cf7:	e9 5b 08 00 00       	jmp    103557 <__alltraps>

00102cfc <vector61>:
.globl vector61
vector61:
  pushl $0
  102cfc:	6a 00                	push   $0x0
  pushl $61
  102cfe:	6a 3d                	push   $0x3d
  jmp __alltraps
  102d00:	e9 52 08 00 00       	jmp    103557 <__alltraps>

00102d05 <vector62>:
.globl vector62
vector62:
  pushl $0
  102d05:	6a 00                	push   $0x0
  pushl $62
  102d07:	6a 3e                	push   $0x3e
  jmp __alltraps
  102d09:	e9 49 08 00 00       	jmp    103557 <__alltraps>

00102d0e <vector63>:
.globl vector63
vector63:
  pushl $0
  102d0e:	6a 00                	push   $0x0
  pushl $63
  102d10:	6a 3f                	push   $0x3f
  jmp __alltraps
  102d12:	e9 40 08 00 00       	jmp    103557 <__alltraps>

00102d17 <vector64>:
.globl vector64
vector64:
  pushl $0
  102d17:	6a 00                	push   $0x0
  pushl $64
  102d19:	6a 40                	push   $0x40
  jmp __alltraps
  102d1b:	e9 37 08 00 00       	jmp    103557 <__alltraps>

00102d20 <vector65>:
.globl vector65
vector65:
  pushl $0
  102d20:	6a 00                	push   $0x0
  pushl $65
  102d22:	6a 41                	push   $0x41
  jmp __alltraps
  102d24:	e9 2e 08 00 00       	jmp    103557 <__alltraps>

00102d29 <vector66>:
.globl vector66
vector66:
  pushl $0
  102d29:	6a 00                	push   $0x0
  pushl $66
  102d2b:	6a 42                	push   $0x42
  jmp __alltraps
  102d2d:	e9 25 08 00 00       	jmp    103557 <__alltraps>

00102d32 <vector67>:
.globl vector67
vector67:
  pushl $0
  102d32:	6a 00                	push   $0x0
  pushl $67
  102d34:	6a 43                	push   $0x43
  jmp __alltraps
  102d36:	e9 1c 08 00 00       	jmp    103557 <__alltraps>

00102d3b <vector68>:
.globl vector68
vector68:
  pushl $0
  102d3b:	6a 00                	push   $0x0
  pushl $68
  102d3d:	6a 44                	push   $0x44
  jmp __alltraps
  102d3f:	e9 13 08 00 00       	jmp    103557 <__alltraps>

00102d44 <vector69>:
.globl vector69
vector69:
  pushl $0
  102d44:	6a 00                	push   $0x0
  pushl $69
  102d46:	6a 45                	push   $0x45
  jmp __alltraps
  102d48:	e9 0a 08 00 00       	jmp    103557 <__alltraps>

00102d4d <vector70>:
.globl vector70
vector70:
  pushl $0
  102d4d:	6a 00                	push   $0x0
  pushl $70
  102d4f:	6a 46                	push   $0x46
  jmp __alltraps
  102d51:	e9 01 08 00 00       	jmp    103557 <__alltraps>

00102d56 <vector71>:
.globl vector71
vector71:
  pushl $0
  102d56:	6a 00                	push   $0x0
  pushl $71
  102d58:	6a 47                	push   $0x47
  jmp __alltraps
  102d5a:	e9 f8 07 00 00       	jmp    103557 <__alltraps>

00102d5f <vector72>:
.globl vector72
vector72:
  pushl $0
  102d5f:	6a 00                	push   $0x0
  pushl $72
  102d61:	6a 48                	push   $0x48
  jmp __alltraps
  102d63:	e9 ef 07 00 00       	jmp    103557 <__alltraps>

00102d68 <vector73>:
.globl vector73
vector73:
  pushl $0
  102d68:	6a 00                	push   $0x0
  pushl $73
  102d6a:	6a 49                	push   $0x49
  jmp __alltraps
  102d6c:	e9 e6 07 00 00       	jmp    103557 <__alltraps>

00102d71 <vector74>:
.globl vector74
vector74:
  pushl $0
  102d71:	6a 00                	push   $0x0
  pushl $74
  102d73:	6a 4a                	push   $0x4a
  jmp __alltraps
  102d75:	e9 dd 07 00 00       	jmp    103557 <__alltraps>

00102d7a <vector75>:
.globl vector75
vector75:
  pushl $0
  102d7a:	6a 00                	push   $0x0
  pushl $75
  102d7c:	6a 4b                	push   $0x4b
  jmp __alltraps
  102d7e:	e9 d4 07 00 00       	jmp    103557 <__alltraps>

00102d83 <vector76>:
.globl vector76
vector76:
  pushl $0
  102d83:	6a 00                	push   $0x0
  pushl $76
  102d85:	6a 4c                	push   $0x4c
  jmp __alltraps
  102d87:	e9 cb 07 00 00       	jmp    103557 <__alltraps>

00102d8c <vector77>:
.globl vector77
vector77:
  pushl $0
  102d8c:	6a 00                	push   $0x0
  pushl $77
  102d8e:	6a 4d                	push   $0x4d
  jmp __alltraps
  102d90:	e9 c2 07 00 00       	jmp    103557 <__alltraps>

00102d95 <vector78>:
.globl vector78
vector78:
  pushl $0
  102d95:	6a 00                	push   $0x0
  pushl $78
  102d97:	6a 4e                	push   $0x4e
  jmp __alltraps
  102d99:	e9 b9 07 00 00       	jmp    103557 <__alltraps>

00102d9e <vector79>:
.globl vector79
vector79:
  pushl $0
  102d9e:	6a 00                	push   $0x0
  pushl $79
  102da0:	6a 4f                	push   $0x4f
  jmp __alltraps
  102da2:	e9 b0 07 00 00       	jmp    103557 <__alltraps>

00102da7 <vector80>:
.globl vector80
vector80:
  pushl $0
  102da7:	6a 00                	push   $0x0
  pushl $80
  102da9:	6a 50                	push   $0x50
  jmp __alltraps
  102dab:	e9 a7 07 00 00       	jmp    103557 <__alltraps>

00102db0 <vector81>:
.globl vector81
vector81:
  pushl $0
  102db0:	6a 00                	push   $0x0
  pushl $81
  102db2:	6a 51                	push   $0x51
  jmp __alltraps
  102db4:	e9 9e 07 00 00       	jmp    103557 <__alltraps>

00102db9 <vector82>:
.globl vector82
vector82:
  pushl $0
  102db9:	6a 00                	push   $0x0
  pushl $82
  102dbb:	6a 52                	push   $0x52
  jmp __alltraps
  102dbd:	e9 95 07 00 00       	jmp    103557 <__alltraps>

00102dc2 <vector83>:
.globl vector83
vector83:
  pushl $0
  102dc2:	6a 00                	push   $0x0
  pushl $83
  102dc4:	6a 53                	push   $0x53
  jmp __alltraps
  102dc6:	e9 8c 07 00 00       	jmp    103557 <__alltraps>

00102dcb <vector84>:
.globl vector84
vector84:
  pushl $0
  102dcb:	6a 00                	push   $0x0
  pushl $84
  102dcd:	6a 54                	push   $0x54
  jmp __alltraps
  102dcf:	e9 83 07 00 00       	jmp    103557 <__alltraps>

00102dd4 <vector85>:
.globl vector85
vector85:
  pushl $0
  102dd4:	6a 00                	push   $0x0
  pushl $85
  102dd6:	6a 55                	push   $0x55
  jmp __alltraps
  102dd8:	e9 7a 07 00 00       	jmp    103557 <__alltraps>

00102ddd <vector86>:
.globl vector86
vector86:
  pushl $0
  102ddd:	6a 00                	push   $0x0
  pushl $86
  102ddf:	6a 56                	push   $0x56
  jmp __alltraps
  102de1:	e9 71 07 00 00       	jmp    103557 <__alltraps>

00102de6 <vector87>:
.globl vector87
vector87:
  pushl $0
  102de6:	6a 00                	push   $0x0
  pushl $87
  102de8:	6a 57                	push   $0x57
  jmp __alltraps
  102dea:	e9 68 07 00 00       	jmp    103557 <__alltraps>

00102def <vector88>:
.globl vector88
vector88:
  pushl $0
  102def:	6a 00                	push   $0x0
  pushl $88
  102df1:	6a 58                	push   $0x58
  jmp __alltraps
  102df3:	e9 5f 07 00 00       	jmp    103557 <__alltraps>

00102df8 <vector89>:
.globl vector89
vector89:
  pushl $0
  102df8:	6a 00                	push   $0x0
  pushl $89
  102dfa:	6a 59                	push   $0x59
  jmp __alltraps
  102dfc:	e9 56 07 00 00       	jmp    103557 <__alltraps>

00102e01 <vector90>:
.globl vector90
vector90:
  pushl $0
  102e01:	6a 00                	push   $0x0
  pushl $90
  102e03:	6a 5a                	push   $0x5a
  jmp __alltraps
  102e05:	e9 4d 07 00 00       	jmp    103557 <__alltraps>

00102e0a <vector91>:
.globl vector91
vector91:
  pushl $0
  102e0a:	6a 00                	push   $0x0
  pushl $91
  102e0c:	6a 5b                	push   $0x5b
  jmp __alltraps
  102e0e:	e9 44 07 00 00       	jmp    103557 <__alltraps>

00102e13 <vector92>:
.globl vector92
vector92:
  pushl $0
  102e13:	6a 00                	push   $0x0
  pushl $92
  102e15:	6a 5c                	push   $0x5c
  jmp __alltraps
  102e17:	e9 3b 07 00 00       	jmp    103557 <__alltraps>

00102e1c <vector93>:
.globl vector93
vector93:
  pushl $0
  102e1c:	6a 00                	push   $0x0
  pushl $93
  102e1e:	6a 5d                	push   $0x5d
  jmp __alltraps
  102e20:	e9 32 07 00 00       	jmp    103557 <__alltraps>

00102e25 <vector94>:
.globl vector94
vector94:
  pushl $0
  102e25:	6a 00                	push   $0x0
  pushl $94
  102e27:	6a 5e                	push   $0x5e
  jmp __alltraps
  102e29:	e9 29 07 00 00       	jmp    103557 <__alltraps>

00102e2e <vector95>:
.globl vector95
vector95:
  pushl $0
  102e2e:	6a 00                	push   $0x0
  pushl $95
  102e30:	6a 5f                	push   $0x5f
  jmp __alltraps
  102e32:	e9 20 07 00 00       	jmp    103557 <__alltraps>

00102e37 <vector96>:
.globl vector96
vector96:
  pushl $0
  102e37:	6a 00                	push   $0x0
  pushl $96
  102e39:	6a 60                	push   $0x60
  jmp __alltraps
  102e3b:	e9 17 07 00 00       	jmp    103557 <__alltraps>

00102e40 <vector97>:
.globl vector97
vector97:
  pushl $0
  102e40:	6a 00                	push   $0x0
  pushl $97
  102e42:	6a 61                	push   $0x61
  jmp __alltraps
  102e44:	e9 0e 07 00 00       	jmp    103557 <__alltraps>

00102e49 <vector98>:
.globl vector98
vector98:
  pushl $0
  102e49:	6a 00                	push   $0x0
  pushl $98
  102e4b:	6a 62                	push   $0x62
  jmp __alltraps
  102e4d:	e9 05 07 00 00       	jmp    103557 <__alltraps>

00102e52 <vector99>:
.globl vector99
vector99:
  pushl $0
  102e52:	6a 00                	push   $0x0
  pushl $99
  102e54:	6a 63                	push   $0x63
  jmp __alltraps
  102e56:	e9 fc 06 00 00       	jmp    103557 <__alltraps>

00102e5b <vector100>:
.globl vector100
vector100:
  pushl $0
  102e5b:	6a 00                	push   $0x0
  pushl $100
  102e5d:	6a 64                	push   $0x64
  jmp __alltraps
  102e5f:	e9 f3 06 00 00       	jmp    103557 <__alltraps>

00102e64 <vector101>:
.globl vector101
vector101:
  pushl $0
  102e64:	6a 00                	push   $0x0
  pushl $101
  102e66:	6a 65                	push   $0x65
  jmp __alltraps
  102e68:	e9 ea 06 00 00       	jmp    103557 <__alltraps>

00102e6d <vector102>:
.globl vector102
vector102:
  pushl $0
  102e6d:	6a 00                	push   $0x0
  pushl $102
  102e6f:	6a 66                	push   $0x66
  jmp __alltraps
  102e71:	e9 e1 06 00 00       	jmp    103557 <__alltraps>

00102e76 <vector103>:
.globl vector103
vector103:
  pushl $0
  102e76:	6a 00                	push   $0x0
  pushl $103
  102e78:	6a 67                	push   $0x67
  jmp __alltraps
  102e7a:	e9 d8 06 00 00       	jmp    103557 <__alltraps>

00102e7f <vector104>:
.globl vector104
vector104:
  pushl $0
  102e7f:	6a 00                	push   $0x0
  pushl $104
  102e81:	6a 68                	push   $0x68
  jmp __alltraps
  102e83:	e9 cf 06 00 00       	jmp    103557 <__alltraps>

00102e88 <vector105>:
.globl vector105
vector105:
  pushl $0
  102e88:	6a 00                	push   $0x0
  pushl $105
  102e8a:	6a 69                	push   $0x69
  jmp __alltraps
  102e8c:	e9 c6 06 00 00       	jmp    103557 <__alltraps>

00102e91 <vector106>:
.globl vector106
vector106:
  pushl $0
  102e91:	6a 00                	push   $0x0
  pushl $106
  102e93:	6a 6a                	push   $0x6a
  jmp __alltraps
  102e95:	e9 bd 06 00 00       	jmp    103557 <__alltraps>

00102e9a <vector107>:
.globl vector107
vector107:
  pushl $0
  102e9a:	6a 00                	push   $0x0
  pushl $107
  102e9c:	6a 6b                	push   $0x6b
  jmp __alltraps
  102e9e:	e9 b4 06 00 00       	jmp    103557 <__alltraps>

00102ea3 <vector108>:
.globl vector108
vector108:
  pushl $0
  102ea3:	6a 00                	push   $0x0
  pushl $108
  102ea5:	6a 6c                	push   $0x6c
  jmp __alltraps
  102ea7:	e9 ab 06 00 00       	jmp    103557 <__alltraps>

00102eac <vector109>:
.globl vector109
vector109:
  pushl $0
  102eac:	6a 00                	push   $0x0
  pushl $109
  102eae:	6a 6d                	push   $0x6d
  jmp __alltraps
  102eb0:	e9 a2 06 00 00       	jmp    103557 <__alltraps>

00102eb5 <vector110>:
.globl vector110
vector110:
  pushl $0
  102eb5:	6a 00                	push   $0x0
  pushl $110
  102eb7:	6a 6e                	push   $0x6e
  jmp __alltraps
  102eb9:	e9 99 06 00 00       	jmp    103557 <__alltraps>

00102ebe <vector111>:
.globl vector111
vector111:
  pushl $0
  102ebe:	6a 00                	push   $0x0
  pushl $111
  102ec0:	6a 6f                	push   $0x6f
  jmp __alltraps
  102ec2:	e9 90 06 00 00       	jmp    103557 <__alltraps>

00102ec7 <vector112>:
.globl vector112
vector112:
  pushl $0
  102ec7:	6a 00                	push   $0x0
  pushl $112
  102ec9:	6a 70                	push   $0x70
  jmp __alltraps
  102ecb:	e9 87 06 00 00       	jmp    103557 <__alltraps>

00102ed0 <vector113>:
.globl vector113
vector113:
  pushl $0
  102ed0:	6a 00                	push   $0x0
  pushl $113
  102ed2:	6a 71                	push   $0x71
  jmp __alltraps
  102ed4:	e9 7e 06 00 00       	jmp    103557 <__alltraps>

00102ed9 <vector114>:
.globl vector114
vector114:
  pushl $0
  102ed9:	6a 00                	push   $0x0
  pushl $114
  102edb:	6a 72                	push   $0x72
  jmp __alltraps
  102edd:	e9 75 06 00 00       	jmp    103557 <__alltraps>

00102ee2 <vector115>:
.globl vector115
vector115:
  pushl $0
  102ee2:	6a 00                	push   $0x0
  pushl $115
  102ee4:	6a 73                	push   $0x73
  jmp __alltraps
  102ee6:	e9 6c 06 00 00       	jmp    103557 <__alltraps>

00102eeb <vector116>:
.globl vector116
vector116:
  pushl $0
  102eeb:	6a 00                	push   $0x0
  pushl $116
  102eed:	6a 74                	push   $0x74
  jmp __alltraps
  102eef:	e9 63 06 00 00       	jmp    103557 <__alltraps>

00102ef4 <vector117>:
.globl vector117
vector117:
  pushl $0
  102ef4:	6a 00                	push   $0x0
  pushl $117
  102ef6:	6a 75                	push   $0x75
  jmp __alltraps
  102ef8:	e9 5a 06 00 00       	jmp    103557 <__alltraps>

00102efd <vector118>:
.globl vector118
vector118:
  pushl $0
  102efd:	6a 00                	push   $0x0
  pushl $118
  102eff:	6a 76                	push   $0x76
  jmp __alltraps
  102f01:	e9 51 06 00 00       	jmp    103557 <__alltraps>

00102f06 <vector119>:
.globl vector119
vector119:
  pushl $0
  102f06:	6a 00                	push   $0x0
  pushl $119
  102f08:	6a 77                	push   $0x77
  jmp __alltraps
  102f0a:	e9 48 06 00 00       	jmp    103557 <__alltraps>

00102f0f <vector120>:
.globl vector120
vector120:
  pushl $0
  102f0f:	6a 00                	push   $0x0
  pushl $120
  102f11:	6a 78                	push   $0x78
  jmp __alltraps
  102f13:	e9 3f 06 00 00       	jmp    103557 <__alltraps>

00102f18 <vector121>:
.globl vector121
vector121:
  pushl $0
  102f18:	6a 00                	push   $0x0
  pushl $121
  102f1a:	6a 79                	push   $0x79
  jmp __alltraps
  102f1c:	e9 36 06 00 00       	jmp    103557 <__alltraps>

00102f21 <vector122>:
.globl vector122
vector122:
  pushl $0
  102f21:	6a 00                	push   $0x0
  pushl $122
  102f23:	6a 7a                	push   $0x7a
  jmp __alltraps
  102f25:	e9 2d 06 00 00       	jmp    103557 <__alltraps>

00102f2a <vector123>:
.globl vector123
vector123:
  pushl $0
  102f2a:	6a 00                	push   $0x0
  pushl $123
  102f2c:	6a 7b                	push   $0x7b
  jmp __alltraps
  102f2e:	e9 24 06 00 00       	jmp    103557 <__alltraps>

00102f33 <vector124>:
.globl vector124
vector124:
  pushl $0
  102f33:	6a 00                	push   $0x0
  pushl $124
  102f35:	6a 7c                	push   $0x7c
  jmp __alltraps
  102f37:	e9 1b 06 00 00       	jmp    103557 <__alltraps>

00102f3c <vector125>:
.globl vector125
vector125:
  pushl $0
  102f3c:	6a 00                	push   $0x0
  pushl $125
  102f3e:	6a 7d                	push   $0x7d
  jmp __alltraps
  102f40:	e9 12 06 00 00       	jmp    103557 <__alltraps>

00102f45 <vector126>:
.globl vector126
vector126:
  pushl $0
  102f45:	6a 00                	push   $0x0
  pushl $126
  102f47:	6a 7e                	push   $0x7e
  jmp __alltraps
  102f49:	e9 09 06 00 00       	jmp    103557 <__alltraps>

00102f4e <vector127>:
.globl vector127
vector127:
  pushl $0
  102f4e:	6a 00                	push   $0x0
  pushl $127
  102f50:	6a 7f                	push   $0x7f
  jmp __alltraps
  102f52:	e9 00 06 00 00       	jmp    103557 <__alltraps>

00102f57 <vector128>:
.globl vector128
vector128:
  pushl $0
  102f57:	6a 00                	push   $0x0
  pushl $128
  102f59:	68 80 00 00 00       	push   $0x80
  jmp __alltraps
  102f5e:	e9 f4 05 00 00       	jmp    103557 <__alltraps>

00102f63 <vector129>:
.globl vector129
vector129:
  pushl $0
  102f63:	6a 00                	push   $0x0
  pushl $129
  102f65:	68 81 00 00 00       	push   $0x81
  jmp __alltraps
  102f6a:	e9 e8 05 00 00       	jmp    103557 <__alltraps>

00102f6f <vector130>:
.globl vector130
vector130:
  pushl $0
  102f6f:	6a 00                	push   $0x0
  pushl $130
  102f71:	68 82 00 00 00       	push   $0x82
  jmp __alltraps
  102f76:	e9 dc 05 00 00       	jmp    103557 <__alltraps>

00102f7b <vector131>:
.globl vector131
vector131:
  pushl $0
  102f7b:	6a 00                	push   $0x0
  pushl $131
  102f7d:	68 83 00 00 00       	push   $0x83
  jmp __alltraps
  102f82:	e9 d0 05 00 00       	jmp    103557 <__alltraps>

00102f87 <vector132>:
.globl vector132
vector132:
  pushl $0
  102f87:	6a 00                	push   $0x0
  pushl $132
  102f89:	68 84 00 00 00       	push   $0x84
  jmp __alltraps
  102f8e:	e9 c4 05 00 00       	jmp    103557 <__alltraps>

00102f93 <vector133>:
.globl vector133
vector133:
  pushl $0
  102f93:	6a 00                	push   $0x0
  pushl $133
  102f95:	68 85 00 00 00       	push   $0x85
  jmp __alltraps
  102f9a:	e9 b8 05 00 00       	jmp    103557 <__alltraps>

00102f9f <vector134>:
.globl vector134
vector134:
  pushl $0
  102f9f:	6a 00                	push   $0x0
  pushl $134
  102fa1:	68 86 00 00 00       	push   $0x86
  jmp __alltraps
  102fa6:	e9 ac 05 00 00       	jmp    103557 <__alltraps>

00102fab <vector135>:
.globl vector135
vector135:
  pushl $0
  102fab:	6a 00                	push   $0x0
  pushl $135
  102fad:	68 87 00 00 00       	push   $0x87
  jmp __alltraps
  102fb2:	e9 a0 05 00 00       	jmp    103557 <__alltraps>

00102fb7 <vector136>:
.globl vector136
vector136:
  pushl $0
  102fb7:	6a 00                	push   $0x0
  pushl $136
  102fb9:	68 88 00 00 00       	push   $0x88
  jmp __alltraps
  102fbe:	e9 94 05 00 00       	jmp    103557 <__alltraps>

00102fc3 <vector137>:
.globl vector137
vector137:
  pushl $0
  102fc3:	6a 00                	push   $0x0
  pushl $137
  102fc5:	68 89 00 00 00       	push   $0x89
  jmp __alltraps
  102fca:	e9 88 05 00 00       	jmp    103557 <__alltraps>

00102fcf <vector138>:
.globl vector138
vector138:
  pushl $0
  102fcf:	6a 00                	push   $0x0
  pushl $138
  102fd1:	68 8a 00 00 00       	push   $0x8a
  jmp __alltraps
  102fd6:	e9 7c 05 00 00       	jmp    103557 <__alltraps>

00102fdb <vector139>:
.globl vector139
vector139:
  pushl $0
  102fdb:	6a 00                	push   $0x0
  pushl $139
  102fdd:	68 8b 00 00 00       	push   $0x8b
  jmp __alltraps
  102fe2:	e9 70 05 00 00       	jmp    103557 <__alltraps>

00102fe7 <vector140>:
.globl vector140
vector140:
  pushl $0
  102fe7:	6a 00                	push   $0x0
  pushl $140
  102fe9:	68 8c 00 00 00       	push   $0x8c
  jmp __alltraps
  102fee:	e9 64 05 00 00       	jmp    103557 <__alltraps>

00102ff3 <vector141>:
.globl vector141
vector141:
  pushl $0
  102ff3:	6a 00                	push   $0x0
  pushl $141
  102ff5:	68 8d 00 00 00       	push   $0x8d
  jmp __alltraps
  102ffa:	e9 58 05 00 00       	jmp    103557 <__alltraps>

00102fff <vector142>:
.globl vector142
vector142:
  pushl $0
  102fff:	6a 00                	push   $0x0
  pushl $142
  103001:	68 8e 00 00 00       	push   $0x8e
  jmp __alltraps
  103006:	e9 4c 05 00 00       	jmp    103557 <__alltraps>

0010300b <vector143>:
.globl vector143
vector143:
  pushl $0
  10300b:	6a 00                	push   $0x0
  pushl $143
  10300d:	68 8f 00 00 00       	push   $0x8f
  jmp __alltraps
  103012:	e9 40 05 00 00       	jmp    103557 <__alltraps>

00103017 <vector144>:
.globl vector144
vector144:
  pushl $0
  103017:	6a 00                	push   $0x0
  pushl $144
  103019:	68 90 00 00 00       	push   $0x90
  jmp __alltraps
  10301e:	e9 34 05 00 00       	jmp    103557 <__alltraps>

00103023 <vector145>:
.globl vector145
vector145:
  pushl $0
  103023:	6a 00                	push   $0x0
  pushl $145
  103025:	68 91 00 00 00       	push   $0x91
  jmp __alltraps
  10302a:	e9 28 05 00 00       	jmp    103557 <__alltraps>

0010302f <vector146>:
.globl vector146
vector146:
  pushl $0
  10302f:	6a 00                	push   $0x0
  pushl $146
  103031:	68 92 00 00 00       	push   $0x92
  jmp __alltraps
  103036:	e9 1c 05 00 00       	jmp    103557 <__alltraps>

0010303b <vector147>:
.globl vector147
vector147:
  pushl $0
  10303b:	6a 00                	push   $0x0
  pushl $147
  10303d:	68 93 00 00 00       	push   $0x93
  jmp __alltraps
  103042:	e9 10 05 00 00       	jmp    103557 <__alltraps>

00103047 <vector148>:
.globl vector148
vector148:
  pushl $0
  103047:	6a 00                	push   $0x0
  pushl $148
  103049:	68 94 00 00 00       	push   $0x94
  jmp __alltraps
  10304e:	e9 04 05 00 00       	jmp    103557 <__alltraps>

00103053 <vector149>:
.globl vector149
vector149:
  pushl $0
  103053:	6a 00                	push   $0x0
  pushl $149
  103055:	68 95 00 00 00       	push   $0x95
  jmp __alltraps
  10305a:	e9 f8 04 00 00       	jmp    103557 <__alltraps>

0010305f <vector150>:
.globl vector150
vector150:
  pushl $0
  10305f:	6a 00                	push   $0x0
  pushl $150
  103061:	68 96 00 00 00       	push   $0x96
  jmp __alltraps
  103066:	e9 ec 04 00 00       	jmp    103557 <__alltraps>

0010306b <vector151>:
.globl vector151
vector151:
  pushl $0
  10306b:	6a 00                	push   $0x0
  pushl $151
  10306d:	68 97 00 00 00       	push   $0x97
  jmp __alltraps
  103072:	e9 e0 04 00 00       	jmp    103557 <__alltraps>

00103077 <vector152>:
.globl vector152
vector152:
  pushl $0
  103077:	6a 00                	push   $0x0
  pushl $152
  103079:	68 98 00 00 00       	push   $0x98
  jmp __alltraps
  10307e:	e9 d4 04 00 00       	jmp    103557 <__alltraps>

00103083 <vector153>:
.globl vector153
vector153:
  pushl $0
  103083:	6a 00                	push   $0x0
  pushl $153
  103085:	68 99 00 00 00       	push   $0x99
  jmp __alltraps
  10308a:	e9 c8 04 00 00       	jmp    103557 <__alltraps>

0010308f <vector154>:
.globl vector154
vector154:
  pushl $0
  10308f:	6a 00                	push   $0x0
  pushl $154
  103091:	68 9a 00 00 00       	push   $0x9a
  jmp __alltraps
  103096:	e9 bc 04 00 00       	jmp    103557 <__alltraps>

0010309b <vector155>:
.globl vector155
vector155:
  pushl $0
  10309b:	6a 00                	push   $0x0
  pushl $155
  10309d:	68 9b 00 00 00       	push   $0x9b
  jmp __alltraps
  1030a2:	e9 b0 04 00 00       	jmp    103557 <__alltraps>

001030a7 <vector156>:
.globl vector156
vector156:
  pushl $0
  1030a7:	6a 00                	push   $0x0
  pushl $156
  1030a9:	68 9c 00 00 00       	push   $0x9c
  jmp __alltraps
  1030ae:	e9 a4 04 00 00       	jmp    103557 <__alltraps>

001030b3 <vector157>:
.globl vector157
vector157:
  pushl $0
  1030b3:	6a 00                	push   $0x0
  pushl $157
  1030b5:	68 9d 00 00 00       	push   $0x9d
  jmp __alltraps
  1030ba:	e9 98 04 00 00       	jmp    103557 <__alltraps>

001030bf <vector158>:
.globl vector158
vector158:
  pushl $0
  1030bf:	6a 00                	push   $0x0
  pushl $158
  1030c1:	68 9e 00 00 00       	push   $0x9e
  jmp __alltraps
  1030c6:	e9 8c 04 00 00       	jmp    103557 <__alltraps>

001030cb <vector159>:
.globl vector159
vector159:
  pushl $0
  1030cb:	6a 00                	push   $0x0
  pushl $159
  1030cd:	68 9f 00 00 00       	push   $0x9f
  jmp __alltraps
  1030d2:	e9 80 04 00 00       	jmp    103557 <__alltraps>

001030d7 <vector160>:
.globl vector160
vector160:
  pushl $0
  1030d7:	6a 00                	push   $0x0
  pushl $160
  1030d9:	68 a0 00 00 00       	push   $0xa0
  jmp __alltraps
  1030de:	e9 74 04 00 00       	jmp    103557 <__alltraps>

001030e3 <vector161>:
.globl vector161
vector161:
  pushl $0
  1030e3:	6a 00                	push   $0x0
  pushl $161
  1030e5:	68 a1 00 00 00       	push   $0xa1
  jmp __alltraps
  1030ea:	e9 68 04 00 00       	jmp    103557 <__alltraps>

001030ef <vector162>:
.globl vector162
vector162:
  pushl $0
  1030ef:	6a 00                	push   $0x0
  pushl $162
  1030f1:	68 a2 00 00 00       	push   $0xa2
  jmp __alltraps
  1030f6:	e9 5c 04 00 00       	jmp    103557 <__alltraps>

001030fb <vector163>:
.globl vector163
vector163:
  pushl $0
  1030fb:	6a 00                	push   $0x0
  pushl $163
  1030fd:	68 a3 00 00 00       	push   $0xa3
  jmp __alltraps
  103102:	e9 50 04 00 00       	jmp    103557 <__alltraps>

00103107 <vector164>:
.globl vector164
vector164:
  pushl $0
  103107:	6a 00                	push   $0x0
  pushl $164
  103109:	68 a4 00 00 00       	push   $0xa4
  jmp __alltraps
  10310e:	e9 44 04 00 00       	jmp    103557 <__alltraps>

00103113 <vector165>:
.globl vector165
vector165:
  pushl $0
  103113:	6a 00                	push   $0x0
  pushl $165
  103115:	68 a5 00 00 00       	push   $0xa5
  jmp __alltraps
  10311a:	e9 38 04 00 00       	jmp    103557 <__alltraps>

0010311f <vector166>:
.globl vector166
vector166:
  pushl $0
  10311f:	6a 00                	push   $0x0
  pushl $166
  103121:	68 a6 00 00 00       	push   $0xa6
  jmp __alltraps
  103126:	e9 2c 04 00 00       	jmp    103557 <__alltraps>

0010312b <vector167>:
.globl vector167
vector167:
  pushl $0
  10312b:	6a 00                	push   $0x0
  pushl $167
  10312d:	68 a7 00 00 00       	push   $0xa7
  jmp __alltraps
  103132:	e9 20 04 00 00       	jmp    103557 <__alltraps>

00103137 <vector168>:
.globl vector168
vector168:
  pushl $0
  103137:	6a 00                	push   $0x0
  pushl $168
  103139:	68 a8 00 00 00       	push   $0xa8
  jmp __alltraps
  10313e:	e9 14 04 00 00       	jmp    103557 <__alltraps>

00103143 <vector169>:
.globl vector169
vector169:
  pushl $0
  103143:	6a 00                	push   $0x0
  pushl $169
  103145:	68 a9 00 00 00       	push   $0xa9
  jmp __alltraps
  10314a:	e9 08 04 00 00       	jmp    103557 <__alltraps>

0010314f <vector170>:
.globl vector170
vector170:
  pushl $0
  10314f:	6a 00                	push   $0x0
  pushl $170
  103151:	68 aa 00 00 00       	push   $0xaa
  jmp __alltraps
  103156:	e9 fc 03 00 00       	jmp    103557 <__alltraps>

0010315b <vector171>:
.globl vector171
vector171:
  pushl $0
  10315b:	6a 00                	push   $0x0
  pushl $171
  10315d:	68 ab 00 00 00       	push   $0xab
  jmp __alltraps
  103162:	e9 f0 03 00 00       	jmp    103557 <__alltraps>

00103167 <vector172>:
.globl vector172
vector172:
  pushl $0
  103167:	6a 00                	push   $0x0
  pushl $172
  103169:	68 ac 00 00 00       	push   $0xac
  jmp __alltraps
  10316e:	e9 e4 03 00 00       	jmp    103557 <__alltraps>

00103173 <vector173>:
.globl vector173
vector173:
  pushl $0
  103173:	6a 00                	push   $0x0
  pushl $173
  103175:	68 ad 00 00 00       	push   $0xad
  jmp __alltraps
  10317a:	e9 d8 03 00 00       	jmp    103557 <__alltraps>

0010317f <vector174>:
.globl vector174
vector174:
  pushl $0
  10317f:	6a 00                	push   $0x0
  pushl $174
  103181:	68 ae 00 00 00       	push   $0xae
  jmp __alltraps
  103186:	e9 cc 03 00 00       	jmp    103557 <__alltraps>

0010318b <vector175>:
.globl vector175
vector175:
  pushl $0
  10318b:	6a 00                	push   $0x0
  pushl $175
  10318d:	68 af 00 00 00       	push   $0xaf
  jmp __alltraps
  103192:	e9 c0 03 00 00       	jmp    103557 <__alltraps>

00103197 <vector176>:
.globl vector176
vector176:
  pushl $0
  103197:	6a 00                	push   $0x0
  pushl $176
  103199:	68 b0 00 00 00       	push   $0xb0
  jmp __alltraps
  10319e:	e9 b4 03 00 00       	jmp    103557 <__alltraps>

001031a3 <vector177>:
.globl vector177
vector177:
  pushl $0
  1031a3:	6a 00                	push   $0x0
  pushl $177
  1031a5:	68 b1 00 00 00       	push   $0xb1
  jmp __alltraps
  1031aa:	e9 a8 03 00 00       	jmp    103557 <__alltraps>

001031af <vector178>:
.globl vector178
vector178:
  pushl $0
  1031af:	6a 00                	push   $0x0
  pushl $178
  1031b1:	68 b2 00 00 00       	push   $0xb2
  jmp __alltraps
  1031b6:	e9 9c 03 00 00       	jmp    103557 <__alltraps>

001031bb <vector179>:
.globl vector179
vector179:
  pushl $0
  1031bb:	6a 00                	push   $0x0
  pushl $179
  1031bd:	68 b3 00 00 00       	push   $0xb3
  jmp __alltraps
  1031c2:	e9 90 03 00 00       	jmp    103557 <__alltraps>

001031c7 <vector180>:
.globl vector180
vector180:
  pushl $0
  1031c7:	6a 00                	push   $0x0
  pushl $180
  1031c9:	68 b4 00 00 00       	push   $0xb4
  jmp __alltraps
  1031ce:	e9 84 03 00 00       	jmp    103557 <__alltraps>

001031d3 <vector181>:
.globl vector181
vector181:
  pushl $0
  1031d3:	6a 00                	push   $0x0
  pushl $181
  1031d5:	68 b5 00 00 00       	push   $0xb5
  jmp __alltraps
  1031da:	e9 78 03 00 00       	jmp    103557 <__alltraps>

001031df <vector182>:
.globl vector182
vector182:
  pushl $0
  1031df:	6a 00                	push   $0x0
  pushl $182
  1031e1:	68 b6 00 00 00       	push   $0xb6
  jmp __alltraps
  1031e6:	e9 6c 03 00 00       	jmp    103557 <__alltraps>

001031eb <vector183>:
.globl vector183
vector183:
  pushl $0
  1031eb:	6a 00                	push   $0x0
  pushl $183
  1031ed:	68 b7 00 00 00       	push   $0xb7
  jmp __alltraps
  1031f2:	e9 60 03 00 00       	jmp    103557 <__alltraps>

001031f7 <vector184>:
.globl vector184
vector184:
  pushl $0
  1031f7:	6a 00                	push   $0x0
  pushl $184
  1031f9:	68 b8 00 00 00       	push   $0xb8
  jmp __alltraps
  1031fe:	e9 54 03 00 00       	jmp    103557 <__alltraps>

00103203 <vector185>:
.globl vector185
vector185:
  pushl $0
  103203:	6a 00                	push   $0x0
  pushl $185
  103205:	68 b9 00 00 00       	push   $0xb9
  jmp __alltraps
  10320a:	e9 48 03 00 00       	jmp    103557 <__alltraps>

0010320f <vector186>:
.globl vector186
vector186:
  pushl $0
  10320f:	6a 00                	push   $0x0
  pushl $186
  103211:	68 ba 00 00 00       	push   $0xba
  jmp __alltraps
  103216:	e9 3c 03 00 00       	jmp    103557 <__alltraps>

0010321b <vector187>:
.globl vector187
vector187:
  pushl $0
  10321b:	6a 00                	push   $0x0
  pushl $187
  10321d:	68 bb 00 00 00       	push   $0xbb
  jmp __alltraps
  103222:	e9 30 03 00 00       	jmp    103557 <__alltraps>

00103227 <vector188>:
.globl vector188
vector188:
  pushl $0
  103227:	6a 00                	push   $0x0
  pushl $188
  103229:	68 bc 00 00 00       	push   $0xbc
  jmp __alltraps
  10322e:	e9 24 03 00 00       	jmp    103557 <__alltraps>

00103233 <vector189>:
.globl vector189
vector189:
  pushl $0
  103233:	6a 00                	push   $0x0
  pushl $189
  103235:	68 bd 00 00 00       	push   $0xbd
  jmp __alltraps
  10323a:	e9 18 03 00 00       	jmp    103557 <__alltraps>

0010323f <vector190>:
.globl vector190
vector190:
  pushl $0
  10323f:	6a 00                	push   $0x0
  pushl $190
  103241:	68 be 00 00 00       	push   $0xbe
  jmp __alltraps
  103246:	e9 0c 03 00 00       	jmp    103557 <__alltraps>

0010324b <vector191>:
.globl vector191
vector191:
  pushl $0
  10324b:	6a 00                	push   $0x0
  pushl $191
  10324d:	68 bf 00 00 00       	push   $0xbf
  jmp __alltraps
  103252:	e9 00 03 00 00       	jmp    103557 <__alltraps>

00103257 <vector192>:
.globl vector192
vector192:
  pushl $0
  103257:	6a 00                	push   $0x0
  pushl $192
  103259:	68 c0 00 00 00       	push   $0xc0
  jmp __alltraps
  10325e:	e9 f4 02 00 00       	jmp    103557 <__alltraps>

00103263 <vector193>:
.globl vector193
vector193:
  pushl $0
  103263:	6a 00                	push   $0x0
  pushl $193
  103265:	68 c1 00 00 00       	push   $0xc1
  jmp __alltraps
  10326a:	e9 e8 02 00 00       	jmp    103557 <__alltraps>

0010326f <vector194>:
.globl vector194
vector194:
  pushl $0
  10326f:	6a 00                	push   $0x0
  pushl $194
  103271:	68 c2 00 00 00       	push   $0xc2
  jmp __alltraps
  103276:	e9 dc 02 00 00       	jmp    103557 <__alltraps>

0010327b <vector195>:
.globl vector195
vector195:
  pushl $0
  10327b:	6a 00                	push   $0x0
  pushl $195
  10327d:	68 c3 00 00 00       	push   $0xc3
  jmp __alltraps
  103282:	e9 d0 02 00 00       	jmp    103557 <__alltraps>

00103287 <vector196>:
.globl vector196
vector196:
  pushl $0
  103287:	6a 00                	push   $0x0
  pushl $196
  103289:	68 c4 00 00 00       	push   $0xc4
  jmp __alltraps
  10328e:	e9 c4 02 00 00       	jmp    103557 <__alltraps>

00103293 <vector197>:
.globl vector197
vector197:
  pushl $0
  103293:	6a 00                	push   $0x0
  pushl $197
  103295:	68 c5 00 00 00       	push   $0xc5
  jmp __alltraps
  10329a:	e9 b8 02 00 00       	jmp    103557 <__alltraps>

0010329f <vector198>:
.globl vector198
vector198:
  pushl $0
  10329f:	6a 00                	push   $0x0
  pushl $198
  1032a1:	68 c6 00 00 00       	push   $0xc6
  jmp __alltraps
  1032a6:	e9 ac 02 00 00       	jmp    103557 <__alltraps>

001032ab <vector199>:
.globl vector199
vector199:
  pushl $0
  1032ab:	6a 00                	push   $0x0
  pushl $199
  1032ad:	68 c7 00 00 00       	push   $0xc7
  jmp __alltraps
  1032b2:	e9 a0 02 00 00       	jmp    103557 <__alltraps>

001032b7 <vector200>:
.globl vector200
vector200:
  pushl $0
  1032b7:	6a 00                	push   $0x0
  pushl $200
  1032b9:	68 c8 00 00 00       	push   $0xc8
  jmp __alltraps
  1032be:	e9 94 02 00 00       	jmp    103557 <__alltraps>

001032c3 <vector201>:
.globl vector201
vector201:
  pushl $0
  1032c3:	6a 00                	push   $0x0
  pushl $201
  1032c5:	68 c9 00 00 00       	push   $0xc9
  jmp __alltraps
  1032ca:	e9 88 02 00 00       	jmp    103557 <__alltraps>

001032cf <vector202>:
.globl vector202
vector202:
  pushl $0
  1032cf:	6a 00                	push   $0x0
  pushl $202
  1032d1:	68 ca 00 00 00       	push   $0xca
  jmp __alltraps
  1032d6:	e9 7c 02 00 00       	jmp    103557 <__alltraps>

001032db <vector203>:
.globl vector203
vector203:
  pushl $0
  1032db:	6a 00                	push   $0x0
  pushl $203
  1032dd:	68 cb 00 00 00       	push   $0xcb
  jmp __alltraps
  1032e2:	e9 70 02 00 00       	jmp    103557 <__alltraps>

001032e7 <vector204>:
.globl vector204
vector204:
  pushl $0
  1032e7:	6a 00                	push   $0x0
  pushl $204
  1032e9:	68 cc 00 00 00       	push   $0xcc
  jmp __alltraps
  1032ee:	e9 64 02 00 00       	jmp    103557 <__alltraps>

001032f3 <vector205>:
.globl vector205
vector205:
  pushl $0
  1032f3:	6a 00                	push   $0x0
  pushl $205
  1032f5:	68 cd 00 00 00       	push   $0xcd
  jmp __alltraps
  1032fa:	e9 58 02 00 00       	jmp    103557 <__alltraps>

001032ff <vector206>:
.globl vector206
vector206:
  pushl $0
  1032ff:	6a 00                	push   $0x0
  pushl $206
  103301:	68 ce 00 00 00       	push   $0xce
  jmp __alltraps
  103306:	e9 4c 02 00 00       	jmp    103557 <__alltraps>

0010330b <vector207>:
.globl vector207
vector207:
  pushl $0
  10330b:	6a 00                	push   $0x0
  pushl $207
  10330d:	68 cf 00 00 00       	push   $0xcf
  jmp __alltraps
  103312:	e9 40 02 00 00       	jmp    103557 <__alltraps>

00103317 <vector208>:
.globl vector208
vector208:
  pushl $0
  103317:	6a 00                	push   $0x0
  pushl $208
  103319:	68 d0 00 00 00       	push   $0xd0
  jmp __alltraps
  10331e:	e9 34 02 00 00       	jmp    103557 <__alltraps>

00103323 <vector209>:
.globl vector209
vector209:
  pushl $0
  103323:	6a 00                	push   $0x0
  pushl $209
  103325:	68 d1 00 00 00       	push   $0xd1
  jmp __alltraps
  10332a:	e9 28 02 00 00       	jmp    103557 <__alltraps>

0010332f <vector210>:
.globl vector210
vector210:
  pushl $0
  10332f:	6a 00                	push   $0x0
  pushl $210
  103331:	68 d2 00 00 00       	push   $0xd2
  jmp __alltraps
  103336:	e9 1c 02 00 00       	jmp    103557 <__alltraps>

0010333b <vector211>:
.globl vector211
vector211:
  pushl $0
  10333b:	6a 00                	push   $0x0
  pushl $211
  10333d:	68 d3 00 00 00       	push   $0xd3
  jmp __alltraps
  103342:	e9 10 02 00 00       	jmp    103557 <__alltraps>

00103347 <vector212>:
.globl vector212
vector212:
  pushl $0
  103347:	6a 00                	push   $0x0
  pushl $212
  103349:	68 d4 00 00 00       	push   $0xd4
  jmp __alltraps
  10334e:	e9 04 02 00 00       	jmp    103557 <__alltraps>

00103353 <vector213>:
.globl vector213
vector213:
  pushl $0
  103353:	6a 00                	push   $0x0
  pushl $213
  103355:	68 d5 00 00 00       	push   $0xd5
  jmp __alltraps
  10335a:	e9 f8 01 00 00       	jmp    103557 <__alltraps>

0010335f <vector214>:
.globl vector214
vector214:
  pushl $0
  10335f:	6a 00                	push   $0x0
  pushl $214
  103361:	68 d6 00 00 00       	push   $0xd6
  jmp __alltraps
  103366:	e9 ec 01 00 00       	jmp    103557 <__alltraps>

0010336b <vector215>:
.globl vector215
vector215:
  pushl $0
  10336b:	6a 00                	push   $0x0
  pushl $215
  10336d:	68 d7 00 00 00       	push   $0xd7
  jmp __alltraps
  103372:	e9 e0 01 00 00       	jmp    103557 <__alltraps>

00103377 <vector216>:
.globl vector216
vector216:
  pushl $0
  103377:	6a 00                	push   $0x0
  pushl $216
  103379:	68 d8 00 00 00       	push   $0xd8
  jmp __alltraps
  10337e:	e9 d4 01 00 00       	jmp    103557 <__alltraps>

00103383 <vector217>:
.globl vector217
vector217:
  pushl $0
  103383:	6a 00                	push   $0x0
  pushl $217
  103385:	68 d9 00 00 00       	push   $0xd9
  jmp __alltraps
  10338a:	e9 c8 01 00 00       	jmp    103557 <__alltraps>

0010338f <vector218>:
.globl vector218
vector218:
  pushl $0
  10338f:	6a 00                	push   $0x0
  pushl $218
  103391:	68 da 00 00 00       	push   $0xda
  jmp __alltraps
  103396:	e9 bc 01 00 00       	jmp    103557 <__alltraps>

0010339b <vector219>:
.globl vector219
vector219:
  pushl $0
  10339b:	6a 00                	push   $0x0
  pushl $219
  10339d:	68 db 00 00 00       	push   $0xdb
  jmp __alltraps
  1033a2:	e9 b0 01 00 00       	jmp    103557 <__alltraps>

001033a7 <vector220>:
.globl vector220
vector220:
  pushl $0
  1033a7:	6a 00                	push   $0x0
  pushl $220
  1033a9:	68 dc 00 00 00       	push   $0xdc
  jmp __alltraps
  1033ae:	e9 a4 01 00 00       	jmp    103557 <__alltraps>

001033b3 <vector221>:
.globl vector221
vector221:
  pushl $0
  1033b3:	6a 00                	push   $0x0
  pushl $221
  1033b5:	68 dd 00 00 00       	push   $0xdd
  jmp __alltraps
  1033ba:	e9 98 01 00 00       	jmp    103557 <__alltraps>

001033bf <vector222>:
.globl vector222
vector222:
  pushl $0
  1033bf:	6a 00                	push   $0x0
  pushl $222
  1033c1:	68 de 00 00 00       	push   $0xde
  jmp __alltraps
  1033c6:	e9 8c 01 00 00       	jmp    103557 <__alltraps>

001033cb <vector223>:
.globl vector223
vector223:
  pushl $0
  1033cb:	6a 00                	push   $0x0
  pushl $223
  1033cd:	68 df 00 00 00       	push   $0xdf
  jmp __alltraps
  1033d2:	e9 80 01 00 00       	jmp    103557 <__alltraps>

001033d7 <vector224>:
.globl vector224
vector224:
  pushl $0
  1033d7:	6a 00                	push   $0x0
  pushl $224
  1033d9:	68 e0 00 00 00       	push   $0xe0
  jmp __alltraps
  1033de:	e9 74 01 00 00       	jmp    103557 <__alltraps>

001033e3 <vector225>:
.globl vector225
vector225:
  pushl $0
  1033e3:	6a 00                	push   $0x0
  pushl $225
  1033e5:	68 e1 00 00 00       	push   $0xe1
  jmp __alltraps
  1033ea:	e9 68 01 00 00       	jmp    103557 <__alltraps>

001033ef <vector226>:
.globl vector226
vector226:
  pushl $0
  1033ef:	6a 00                	push   $0x0
  pushl $226
  1033f1:	68 e2 00 00 00       	push   $0xe2
  jmp __alltraps
  1033f6:	e9 5c 01 00 00       	jmp    103557 <__alltraps>

001033fb <vector227>:
.globl vector227
vector227:
  pushl $0
  1033fb:	6a 00                	push   $0x0
  pushl $227
  1033fd:	68 e3 00 00 00       	push   $0xe3
  jmp __alltraps
  103402:	e9 50 01 00 00       	jmp    103557 <__alltraps>

00103407 <vector228>:
.globl vector228
vector228:
  pushl $0
  103407:	6a 00                	push   $0x0
  pushl $228
  103409:	68 e4 00 00 00       	push   $0xe4
  jmp __alltraps
  10340e:	e9 44 01 00 00       	jmp    103557 <__alltraps>

00103413 <vector229>:
.globl vector229
vector229:
  pushl $0
  103413:	6a 00                	push   $0x0
  pushl $229
  103415:	68 e5 00 00 00       	push   $0xe5
  jmp __alltraps
  10341a:	e9 38 01 00 00       	jmp    103557 <__alltraps>

0010341f <vector230>:
.globl vector230
vector230:
  pushl $0
  10341f:	6a 00                	push   $0x0
  pushl $230
  103421:	68 e6 00 00 00       	push   $0xe6
  jmp __alltraps
  103426:	e9 2c 01 00 00       	jmp    103557 <__alltraps>

0010342b <vector231>:
.globl vector231
vector231:
  pushl $0
  10342b:	6a 00                	push   $0x0
  pushl $231
  10342d:	68 e7 00 00 00       	push   $0xe7
  jmp __alltraps
  103432:	e9 20 01 00 00       	jmp    103557 <__alltraps>

00103437 <vector232>:
.globl vector232
vector232:
  pushl $0
  103437:	6a 00                	push   $0x0
  pushl $232
  103439:	68 e8 00 00 00       	push   $0xe8
  jmp __alltraps
  10343e:	e9 14 01 00 00       	jmp    103557 <__alltraps>

00103443 <vector233>:
.globl vector233
vector233:
  pushl $0
  103443:	6a 00                	push   $0x0
  pushl $233
  103445:	68 e9 00 00 00       	push   $0xe9
  jmp __alltraps
  10344a:	e9 08 01 00 00       	jmp    103557 <__alltraps>

0010344f <vector234>:
.globl vector234
vector234:
  pushl $0
  10344f:	6a 00                	push   $0x0
  pushl $234
  103451:	68 ea 00 00 00       	push   $0xea
  jmp __alltraps
  103456:	e9 fc 00 00 00       	jmp    103557 <__alltraps>

0010345b <vector235>:
.globl vector235
vector235:
  pushl $0
  10345b:	6a 00                	push   $0x0
  pushl $235
  10345d:	68 eb 00 00 00       	push   $0xeb
  jmp __alltraps
  103462:	e9 f0 00 00 00       	jmp    103557 <__alltraps>

00103467 <vector236>:
.globl vector236
vector236:
  pushl $0
  103467:	6a 00                	push   $0x0
  pushl $236
  103469:	68 ec 00 00 00       	push   $0xec
  jmp __alltraps
  10346e:	e9 e4 00 00 00       	jmp    103557 <__alltraps>

00103473 <vector237>:
.globl vector237
vector237:
  pushl $0
  103473:	6a 00                	push   $0x0
  pushl $237
  103475:	68 ed 00 00 00       	push   $0xed
  jmp __alltraps
  10347a:	e9 d8 00 00 00       	jmp    103557 <__alltraps>

0010347f <vector238>:
.globl vector238
vector238:
  pushl $0
  10347f:	6a 00                	push   $0x0
  pushl $238
  103481:	68 ee 00 00 00       	push   $0xee
  jmp __alltraps
  103486:	e9 cc 00 00 00       	jmp    103557 <__alltraps>

0010348b <vector239>:
.globl vector239
vector239:
  pushl $0
  10348b:	6a 00                	push   $0x0
  pushl $239
  10348d:	68 ef 00 00 00       	push   $0xef
  jmp __alltraps
  103492:	e9 c0 00 00 00       	jmp    103557 <__alltraps>

00103497 <vector240>:
.globl vector240
vector240:
  pushl $0
  103497:	6a 00                	push   $0x0
  pushl $240
  103499:	68 f0 00 00 00       	push   $0xf0
  jmp __alltraps
  10349e:	e9 b4 00 00 00       	jmp    103557 <__alltraps>

001034a3 <vector241>:
.globl vector241
vector241:
  pushl $0
  1034a3:	6a 00                	push   $0x0
  pushl $241
  1034a5:	68 f1 00 00 00       	push   $0xf1
  jmp __alltraps
  1034aa:	e9 a8 00 00 00       	jmp    103557 <__alltraps>

001034af <vector242>:
.globl vector242
vector242:
  pushl $0
  1034af:	6a 00                	push   $0x0
  pushl $242
  1034b1:	68 f2 00 00 00       	push   $0xf2
  jmp __alltraps
  1034b6:	e9 9c 00 00 00       	jmp    103557 <__alltraps>

001034bb <vector243>:
.globl vector243
vector243:
  pushl $0
  1034bb:	6a 00                	push   $0x0
  pushl $243
  1034bd:	68 f3 00 00 00       	push   $0xf3
  jmp __alltraps
  1034c2:	e9 90 00 00 00       	jmp    103557 <__alltraps>

001034c7 <vector244>:
.globl vector244
vector244:
  pushl $0
  1034c7:	6a 00                	push   $0x0
  pushl $244
  1034c9:	68 f4 00 00 00       	push   $0xf4
  jmp __alltraps
  1034ce:	e9 84 00 00 00       	jmp    103557 <__alltraps>

001034d3 <vector245>:
.globl vector245
vector245:
  pushl $0
  1034d3:	6a 00                	push   $0x0
  pushl $245
  1034d5:	68 f5 00 00 00       	push   $0xf5
  jmp __alltraps
  1034da:	e9 78 00 00 00       	jmp    103557 <__alltraps>

001034df <vector246>:
.globl vector246
vector246:
  pushl $0
  1034df:	6a 00                	push   $0x0
  pushl $246
  1034e1:	68 f6 00 00 00       	push   $0xf6
  jmp __alltraps
  1034e6:	e9 6c 00 00 00       	jmp    103557 <__alltraps>

001034eb <vector247>:
.globl vector247
vector247:
  pushl $0
  1034eb:	6a 00                	push   $0x0
  pushl $247
  1034ed:	68 f7 00 00 00       	push   $0xf7
  jmp __alltraps
  1034f2:	e9 60 00 00 00       	jmp    103557 <__alltraps>

001034f7 <vector248>:
.globl vector248
vector248:
  pushl $0
  1034f7:	6a 00                	push   $0x0
  pushl $248
  1034f9:	68 f8 00 00 00       	push   $0xf8
  jmp __alltraps
  1034fe:	e9 54 00 00 00       	jmp    103557 <__alltraps>

00103503 <vector249>:
.globl vector249
vector249:
  pushl $0
  103503:	6a 00                	push   $0x0
  pushl $249
  103505:	68 f9 00 00 00       	push   $0xf9
  jmp __alltraps
  10350a:	e9 48 00 00 00       	jmp    103557 <__alltraps>

0010350f <vector250>:
.globl vector250
vector250:
  pushl $0
  10350f:	6a 00                	push   $0x0
  pushl $250
  103511:	68 fa 00 00 00       	push   $0xfa
  jmp __alltraps
  103516:	e9 3c 00 00 00       	jmp    103557 <__alltraps>

0010351b <vector251>:
.globl vector251
vector251:
  pushl $0
  10351b:	6a 00                	push   $0x0
  pushl $251
  10351d:	68 fb 00 00 00       	push   $0xfb
  jmp __alltraps
  103522:	e9 30 00 00 00       	jmp    103557 <__alltraps>

00103527 <vector252>:
.globl vector252
vector252:
  pushl $0
  103527:	6a 00                	push   $0x0
  pushl $252
  103529:	68 fc 00 00 00       	push   $0xfc
  jmp __alltraps
  10352e:	e9 24 00 00 00       	jmp    103557 <__alltraps>

00103533 <vector253>:
.globl vector253
vector253:
  pushl $0
  103533:	6a 00                	push   $0x0
  pushl $253
  103535:	68 fd 00 00 00       	push   $0xfd
  jmp __alltraps
  10353a:	e9 18 00 00 00       	jmp    103557 <__alltraps>

0010353f <vector254>:
.globl vector254
vector254:
  pushl $0
  10353f:	6a 00                	push   $0x0
  pushl $254
  103541:	68 fe 00 00 00       	push   $0xfe
  jmp __alltraps
  103546:	e9 0c 00 00 00       	jmp    103557 <__alltraps>

0010354b <vector255>:
.globl vector255
vector255:
  pushl $0
  10354b:	6a 00                	push   $0x0
  pushl $255
  10354d:	68 ff 00 00 00       	push   $0xff
  jmp __alltraps
  103552:	e9 00 00 00 00       	jmp    103557 <__alltraps>

00103557 <__alltraps>:
.text
.globl __alltraps
__alltraps:
    # push registers to build a trap frame
    # therefore make the stack look like a struct trapframe
    pushl %ds
  103557:	1e                   	push   %ds
    pushl %es
  103558:	06                   	push   %es
    pushal
  103559:	60                   	pusha  

    # load GD_KDATA into %ds and %es to set up data segments for kernel
    movl $GD_KDATA, %eax
  10355a:	b8 10 00 00 00       	mov    $0x10,%eax
    movw %ax, %ds
  10355f:	8e d8                	mov    %eax,%ds
    movw %ax, %es
  103561:	8e c0                	mov    %eax,%es

    # push %esp to pass a pointer to the trapframe as an argument to trap()
    pushl %esp
  103563:	54                   	push   %esp

    # call trap(tf), where tf=%esp
    call trap
  103564:	e8 67 f5 ff ff       	call   102ad0 <trap>

    # pop the pushed stack pointer
    popl %esp
  103569:	5c                   	pop    %esp

0010356a <__trapret>:

    # return falls through to trapret...
.globl __trapret
__trapret:
    # restore registers from stack
    popal
  10356a:	61                   	popa   

    # restore %ds and %es
    popl %es
  10356b:	07                   	pop    %es
    popl %ds
  10356c:	1f                   	pop    %ds

    # get rid of the trap number and error code
    addl $0x8, %esp
  10356d:	83 c4 08             	add    $0x8,%esp
    iret
  103570:	cf                   	iret   

00103571 <lgdt>:
/* *
 * lgdt - load the global descriptor table register and reset the
 * data/code segement registers for kernel.
 * */
static inline void
lgdt(struct pseudodesc *pd) {
  103571:	55                   	push   %ebp
  103572:	89 e5                	mov    %esp,%ebp
    asm volatile ("lgdt (%0)" :: "r" (pd));
  103574:	8b 45 08             	mov    0x8(%ebp),%eax
  103577:	0f 01 10             	lgdtl  (%eax)
    asm volatile ("movw %%ax, %%gs" :: "a" (USER_DS));
  10357a:	b8 23 00 00 00       	mov    $0x23,%eax
  10357f:	8e e8                	mov    %eax,%gs
    asm volatile ("movw %%ax, %%fs" :: "a" (USER_DS));
  103581:	b8 23 00 00 00       	mov    $0x23,%eax
  103586:	8e e0                	mov    %eax,%fs
    asm volatile ("movw %%ax, %%es" :: "a" (KERNEL_DS));
  103588:	b8 10 00 00 00       	mov    $0x10,%eax
  10358d:	8e c0                	mov    %eax,%es
    asm volatile ("movw %%ax, %%ds" :: "a" (KERNEL_DS));
  10358f:	b8 10 00 00 00       	mov    $0x10,%eax
  103594:	8e d8                	mov    %eax,%ds
    asm volatile ("movw %%ax, %%ss" :: "a" (KERNEL_DS));
  103596:	b8 10 00 00 00       	mov    $0x10,%eax
  10359b:	8e d0                	mov    %eax,%ss
    // reload cs
    asm volatile ("ljmp %0, $1f\n 1:\n" :: "i" (KERNEL_CS));
  10359d:	ea a4 35 10 00 08 00 	ljmp   $0x8,$0x1035a4
}
  1035a4:	90                   	nop
  1035a5:	5d                   	pop    %ebp
  1035a6:	c3                   	ret    

001035a7 <gdt_init>:
/* temporary kernel stack */
uint8_t stack0[1024];

/* gdt_init - initialize the default GDT and TSS */
static void
gdt_init(void) {
  1035a7:	55                   	push   %ebp
  1035a8:	89 e5                	mov    %esp,%ebp
  1035aa:	83 ec 10             	sub    $0x10,%esp
    // Setup a TSS so that we can get the right stack when we trap from
    // user to the kernel. But not safe here, it's only a temporary value,
    // it will be set to KSTACKTOP in lab2.
    ts.ts_esp0 = (uintptr_t)stack0 + sizeof(stack0);
  1035ad:	b8 a0 19 11 00       	mov    $0x1119a0,%eax
  1035b2:	05 00 04 00 00       	add    $0x400,%eax
  1035b7:	a3 24 19 11 00       	mov    %eax,0x111924
    ts.ts_ss0 = KERNEL_DS;
  1035bc:	66 c7 05 28 19 11 00 	movw   $0x10,0x111928
  1035c3:	10 00 

    // initialize the TSS filed of the gdt
    gdt[SEG_TSS] = SEGTSS(STS_T32A, (uintptr_t)&ts, sizeof(ts), DPL_KERNEL);
  1035c5:	66 c7 05 68 0a 11 00 	movw   $0x68,0x110a68
  1035cc:	68 00 
  1035ce:	b8 20 19 11 00       	mov    $0x111920,%eax
  1035d3:	66 a3 6a 0a 11 00    	mov    %ax,0x110a6a
  1035d9:	b8 20 19 11 00       	mov    $0x111920,%eax
  1035de:	c1 e8 10             	shr    $0x10,%eax
  1035e1:	a2 6c 0a 11 00       	mov    %al,0x110a6c
  1035e6:	0f b6 05 6d 0a 11 00 	movzbl 0x110a6d,%eax
  1035ed:	83 e0 f0             	and    $0xfffffff0,%eax
  1035f0:	83 c8 09             	or     $0x9,%eax
  1035f3:	a2 6d 0a 11 00       	mov    %al,0x110a6d
  1035f8:	0f b6 05 6d 0a 11 00 	movzbl 0x110a6d,%eax
  1035ff:	83 e0 ef             	and    $0xffffffef,%eax
  103602:	a2 6d 0a 11 00       	mov    %al,0x110a6d
  103607:	0f b6 05 6d 0a 11 00 	movzbl 0x110a6d,%eax
  10360e:	83 e0 9f             	and    $0xffffff9f,%eax
  103611:	a2 6d 0a 11 00       	mov    %al,0x110a6d
  103616:	0f b6 05 6d 0a 11 00 	movzbl 0x110a6d,%eax
  10361d:	83 c8 80             	or     $0xffffff80,%eax
  103620:	a2 6d 0a 11 00       	mov    %al,0x110a6d
  103625:	0f b6 05 6e 0a 11 00 	movzbl 0x110a6e,%eax
  10362c:	83 e0 f0             	and    $0xfffffff0,%eax
  10362f:	a2 6e 0a 11 00       	mov    %al,0x110a6e
  103634:	0f b6 05 6e 0a 11 00 	movzbl 0x110a6e,%eax
  10363b:	83 e0 ef             	and    $0xffffffef,%eax
  10363e:	a2 6e 0a 11 00       	mov    %al,0x110a6e
  103643:	0f b6 05 6e 0a 11 00 	movzbl 0x110a6e,%eax
  10364a:	83 e0 df             	and    $0xffffffdf,%eax
  10364d:	a2 6e 0a 11 00       	mov    %al,0x110a6e
  103652:	0f b6 05 6e 0a 11 00 	movzbl 0x110a6e,%eax
  103659:	83 c8 40             	or     $0x40,%eax
  10365c:	a2 6e 0a 11 00       	mov    %al,0x110a6e
  103661:	0f b6 05 6e 0a 11 00 	movzbl 0x110a6e,%eax
  103668:	83 e0 7f             	and    $0x7f,%eax
  10366b:	a2 6e 0a 11 00       	mov    %al,0x110a6e
  103670:	b8 20 19 11 00       	mov    $0x111920,%eax
  103675:	c1 e8 18             	shr    $0x18,%eax
  103678:	a2 6f 0a 11 00       	mov    %al,0x110a6f

    // reload all segment registers
    lgdt(&gdt_pd);
  10367d:	68 70 0a 11 00       	push   $0x110a70
  103682:	e8 ea fe ff ff       	call   103571 <lgdt>
  103687:	83 c4 04             	add    $0x4,%esp
  10368a:	66 c7 45 fe 28 00    	movw   $0x28,-0x2(%ebp)
    asm volatile ("cli" ::: "memory");
}

static inline void
ltr(uint16_t sel) {
    asm volatile ("ltr %0" :: "r" (sel) : "memory");
  103690:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
  103694:	0f 00 d8             	ltr    %ax

    // load the TSS
    ltr(GD_TSS);
}
  103697:	90                   	nop
  103698:	c9                   	leave  
  103699:	c3                   	ret    

0010369a <pmm_init>:

/* pmm_init - initialize the physical memory management */
//pmm_init - setup a pmm to manage physical memory, build PDT&PT to setup paging mechanism 
//         - check the correctness of pmm & paging mechanism, print PDT&PT
void
pmm_init(void) {
  10369a:	55                   	push   %ebp
  10369b:	89 e5                	mov    %esp,%ebp
    gdt_init();
  10369d:	e8 05 ff ff ff       	call   1035a7 <gdt_init>
}
  1036a2:	90                   	nop
  1036a3:	5d                   	pop    %ebp
  1036a4:	c3                   	ret    

001036a5 <strlen>:
 * @s:      the input string
 *
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
  1036a5:	55                   	push   %ebp
  1036a6:	89 e5                	mov    %esp,%ebp
  1036a8:	83 ec 10             	sub    $0x10,%esp
    size_t cnt = 0;
  1036ab:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    while (*s ++ != '\0') {
  1036b2:	eb 04                	jmp    1036b8 <strlen+0x13>
        cnt ++;
  1036b4:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 * The strlen() function returns the length of string @s.
 * */
size_t
strlen(const char *s) {
    size_t cnt = 0;
    while (*s ++ != '\0') {
  1036b8:	8b 45 08             	mov    0x8(%ebp),%eax
  1036bb:	8d 50 01             	lea    0x1(%eax),%edx
  1036be:	89 55 08             	mov    %edx,0x8(%ebp)
  1036c1:	0f b6 00             	movzbl (%eax),%eax
  1036c4:	84 c0                	test   %al,%al
  1036c6:	75 ec                	jne    1036b4 <strlen+0xf>
        cnt ++;
    }
    return cnt;
  1036c8:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  1036cb:	c9                   	leave  
  1036cc:	c3                   	ret    

001036cd <strnlen>:
 * The return value is strlen(s), if that is less than @len, or
 * @len if there is no '\0' character among the first @len characters
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
  1036cd:	55                   	push   %ebp
  1036ce:	89 e5                	mov    %esp,%ebp
  1036d0:	83 ec 10             	sub    $0x10,%esp
    size_t cnt = 0;
  1036d3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    while (cnt < len && *s ++ != '\0') {
  1036da:	eb 04                	jmp    1036e0 <strnlen+0x13>
        cnt ++;
  1036dc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 * pointed by @s.
 * */
size_t
strnlen(const char *s, size_t len) {
    size_t cnt = 0;
    while (cnt < len && *s ++ != '\0') {
  1036e0:	8b 45 fc             	mov    -0x4(%ebp),%eax
  1036e3:	3b 45 0c             	cmp    0xc(%ebp),%eax
  1036e6:	73 10                	jae    1036f8 <strnlen+0x2b>
  1036e8:	8b 45 08             	mov    0x8(%ebp),%eax
  1036eb:	8d 50 01             	lea    0x1(%eax),%edx
  1036ee:	89 55 08             	mov    %edx,0x8(%ebp)
  1036f1:	0f b6 00             	movzbl (%eax),%eax
  1036f4:	84 c0                	test   %al,%al
  1036f6:	75 e4                	jne    1036dc <strnlen+0xf>
        cnt ++;
    }
    return cnt;
  1036f8:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
  1036fb:	c9                   	leave  
  1036fc:	c3                   	ret    

001036fd <strcpy>:
 * To avoid overflows, the size of array pointed by @dst should be long enough to
 * contain the same string as @src (including the terminating null character), and
 * should not overlap in memory with @src.
 * */
char *
strcpy(char *dst, const char *src) {
  1036fd:	55                   	push   %ebp
  1036fe:	89 e5                	mov    %esp,%ebp
  103700:	57                   	push   %edi
  103701:	56                   	push   %esi
  103702:	83 ec 20             	sub    $0x20,%esp
  103705:	8b 45 08             	mov    0x8(%ebp),%eax
  103708:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10370b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10370e:	89 45 f0             	mov    %eax,-0x10(%ebp)
#ifndef __HAVE_ARCH_STRCPY
#define __HAVE_ARCH_STRCPY
static inline char *
__strcpy(char *dst, const char *src) {
    int d0, d1, d2;
    asm volatile (
  103711:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103714:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103717:	89 d1                	mov    %edx,%ecx
  103719:	89 c2                	mov    %eax,%edx
  10371b:	89 ce                	mov    %ecx,%esi
  10371d:	89 d7                	mov    %edx,%edi
  10371f:	ac                   	lods   %ds:(%esi),%al
  103720:	aa                   	stos   %al,%es:(%edi)
  103721:	84 c0                	test   %al,%al
  103723:	75 fa                	jne    10371f <strcpy+0x22>
  103725:	89 fa                	mov    %edi,%edx
  103727:	89 f1                	mov    %esi,%ecx
  103729:	89 4d ec             	mov    %ecx,-0x14(%ebp)
  10372c:	89 55 e8             	mov    %edx,-0x18(%ebp)
  10372f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        "stosb;"
        "testb %%al, %%al;"
        "jne 1b;"
        : "=&S" (d0), "=&D" (d1), "=&a" (d2)
        : "0" (src), "1" (dst) : "memory");
    return dst;
  103732:	8b 45 f4             	mov    -0xc(%ebp),%eax
#ifdef __HAVE_ARCH_STRCPY
    return __strcpy(dst, src);
  103735:	90                   	nop
    char *p = dst;
    while ((*p ++ = *src ++) != '\0')
        /* nothing */;
    return dst;
#endif /* __HAVE_ARCH_STRCPY */
}
  103736:	83 c4 20             	add    $0x20,%esp
  103739:	5e                   	pop    %esi
  10373a:	5f                   	pop    %edi
  10373b:	5d                   	pop    %ebp
  10373c:	c3                   	ret    

0010373d <strncpy>:
 * @len:    maximum number of characters to be copied from @src
 *
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
  10373d:	55                   	push   %ebp
  10373e:	89 e5                	mov    %esp,%ebp
  103740:	83 ec 10             	sub    $0x10,%esp
    char *p = dst;
  103743:	8b 45 08             	mov    0x8(%ebp),%eax
  103746:	89 45 fc             	mov    %eax,-0x4(%ebp)
    while (len > 0) {
  103749:	eb 21                	jmp    10376c <strncpy+0x2f>
        if ((*p = *src) != '\0') {
  10374b:	8b 45 0c             	mov    0xc(%ebp),%eax
  10374e:	0f b6 10             	movzbl (%eax),%edx
  103751:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103754:	88 10                	mov    %dl,(%eax)
  103756:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103759:	0f b6 00             	movzbl (%eax),%eax
  10375c:	84 c0                	test   %al,%al
  10375e:	74 04                	je     103764 <strncpy+0x27>
            src ++;
  103760:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
        }
        p ++, len --;
  103764:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  103768:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 * The return value is @dst
 * */
char *
strncpy(char *dst, const char *src, size_t len) {
    char *p = dst;
    while (len > 0) {
  10376c:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  103770:	75 d9                	jne    10374b <strncpy+0xe>
        if ((*p = *src) != '\0') {
            src ++;
        }
        p ++, len --;
    }
    return dst;
  103772:	8b 45 08             	mov    0x8(%ebp),%eax
}
  103775:	c9                   	leave  
  103776:	c3                   	ret    

00103777 <strcmp>:
 * - A value greater than zero indicates that the first character that does
 *   not match has a greater value in @s1 than in @s2;
 * - And a value less than zero indicates the opposite.
 * */
int
strcmp(const char *s1, const char *s2) {
  103777:	55                   	push   %ebp
  103778:	89 e5                	mov    %esp,%ebp
  10377a:	57                   	push   %edi
  10377b:	56                   	push   %esi
  10377c:	83 ec 20             	sub    $0x20,%esp
  10377f:	8b 45 08             	mov    0x8(%ebp),%eax
  103782:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103785:	8b 45 0c             	mov    0xc(%ebp),%eax
  103788:	89 45 f0             	mov    %eax,-0x10(%ebp)
#ifndef __HAVE_ARCH_STRCMP
#define __HAVE_ARCH_STRCMP
static inline int
__strcmp(const char *s1, const char *s2) {
    int d0, d1, ret;
    asm volatile (
  10378b:	8b 55 f4             	mov    -0xc(%ebp),%edx
  10378e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103791:	89 d1                	mov    %edx,%ecx
  103793:	89 c2                	mov    %eax,%edx
  103795:	89 ce                	mov    %ecx,%esi
  103797:	89 d7                	mov    %edx,%edi
  103799:	ac                   	lods   %ds:(%esi),%al
  10379a:	ae                   	scas   %es:(%edi),%al
  10379b:	75 08                	jne    1037a5 <strcmp+0x2e>
  10379d:	84 c0                	test   %al,%al
  10379f:	75 f8                	jne    103799 <strcmp+0x22>
  1037a1:	31 c0                	xor    %eax,%eax
  1037a3:	eb 04                	jmp    1037a9 <strcmp+0x32>
  1037a5:	19 c0                	sbb    %eax,%eax
  1037a7:	0c 01                	or     $0x1,%al
  1037a9:	89 fa                	mov    %edi,%edx
  1037ab:	89 f1                	mov    %esi,%ecx
  1037ad:	89 45 ec             	mov    %eax,-0x14(%ebp)
  1037b0:	89 4d e8             	mov    %ecx,-0x18(%ebp)
  1037b3:	89 55 e4             	mov    %edx,-0x1c(%ebp)
        "orb $1, %%al;"
        "3:"
        : "=a" (ret), "=&S" (d0), "=&D" (d1)
        : "1" (s1), "2" (s2)
        : "memory");
    return ret;
  1037b6:	8b 45 ec             	mov    -0x14(%ebp),%eax
#ifdef __HAVE_ARCH_STRCMP
    return __strcmp(s1, s2);
  1037b9:	90                   	nop
    while (*s1 != '\0' && *s1 == *s2) {
        s1 ++, s2 ++;
    }
    return (int)((unsigned char)*s1 - (unsigned char)*s2);
#endif /* __HAVE_ARCH_STRCMP */
}
  1037ba:	83 c4 20             	add    $0x20,%esp
  1037bd:	5e                   	pop    %esi
  1037be:	5f                   	pop    %edi
  1037bf:	5d                   	pop    %ebp
  1037c0:	c3                   	ret    

001037c1 <strncmp>:
 * they are equal to each other, it continues with the following pairs until
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
  1037c1:	55                   	push   %ebp
  1037c2:	89 e5                	mov    %esp,%ebp
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
  1037c4:	eb 0c                	jmp    1037d2 <strncmp+0x11>
        n --, s1 ++, s2 ++;
  1037c6:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  1037ca:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1037ce:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 * the characters differ, until a terminating null-character is reached, or
 * until @n characters match in both strings, whichever happens first.
 * */
int
strncmp(const char *s1, const char *s2, size_t n) {
    while (n > 0 && *s1 != '\0' && *s1 == *s2) {
  1037d2:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1037d6:	74 1a                	je     1037f2 <strncmp+0x31>
  1037d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1037db:	0f b6 00             	movzbl (%eax),%eax
  1037de:	84 c0                	test   %al,%al
  1037e0:	74 10                	je     1037f2 <strncmp+0x31>
  1037e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1037e5:	0f b6 10             	movzbl (%eax),%edx
  1037e8:	8b 45 0c             	mov    0xc(%ebp),%eax
  1037eb:	0f b6 00             	movzbl (%eax),%eax
  1037ee:	38 c2                	cmp    %al,%dl
  1037f0:	74 d4                	je     1037c6 <strncmp+0x5>
        n --, s1 ++, s2 ++;
    }
    return (n == 0) ? 0 : (int)((unsigned char)*s1 - (unsigned char)*s2);
  1037f2:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1037f6:	74 18                	je     103810 <strncmp+0x4f>
  1037f8:	8b 45 08             	mov    0x8(%ebp),%eax
  1037fb:	0f b6 00             	movzbl (%eax),%eax
  1037fe:	0f b6 d0             	movzbl %al,%edx
  103801:	8b 45 0c             	mov    0xc(%ebp),%eax
  103804:	0f b6 00             	movzbl (%eax),%eax
  103807:	0f b6 c0             	movzbl %al,%eax
  10380a:	29 c2                	sub    %eax,%edx
  10380c:	89 d0                	mov    %edx,%eax
  10380e:	eb 05                	jmp    103815 <strncmp+0x54>
  103810:	b8 00 00 00 00       	mov    $0x0,%eax
}
  103815:	5d                   	pop    %ebp
  103816:	c3                   	ret    

00103817 <strchr>:
 *
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
  103817:	55                   	push   %ebp
  103818:	89 e5                	mov    %esp,%ebp
  10381a:	83 ec 04             	sub    $0x4,%esp
  10381d:	8b 45 0c             	mov    0xc(%ebp),%eax
  103820:	88 45 fc             	mov    %al,-0x4(%ebp)
    while (*s != '\0') {
  103823:	eb 14                	jmp    103839 <strchr+0x22>
        if (*s == c) {
  103825:	8b 45 08             	mov    0x8(%ebp),%eax
  103828:	0f b6 00             	movzbl (%eax),%eax
  10382b:	3a 45 fc             	cmp    -0x4(%ebp),%al
  10382e:	75 05                	jne    103835 <strchr+0x1e>
            return (char *)s;
  103830:	8b 45 08             	mov    0x8(%ebp),%eax
  103833:	eb 13                	jmp    103848 <strchr+0x31>
        }
        s ++;
  103835:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 * The strchr() function returns a pointer to the first occurrence of
 * character in @s. If the value is not found, the function returns 'NULL'.
 * */
char *
strchr(const char *s, char c) {
    while (*s != '\0') {
  103839:	8b 45 08             	mov    0x8(%ebp),%eax
  10383c:	0f b6 00             	movzbl (%eax),%eax
  10383f:	84 c0                	test   %al,%al
  103841:	75 e2                	jne    103825 <strchr+0xe>
        if (*s == c) {
            return (char *)s;
        }
        s ++;
    }
    return NULL;
  103843:	b8 00 00 00 00       	mov    $0x0,%eax
}
  103848:	c9                   	leave  
  103849:	c3                   	ret    

0010384a <strfind>:
 * The strfind() function is like strchr() except that if @c is
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
  10384a:	55                   	push   %ebp
  10384b:	89 e5                	mov    %esp,%ebp
  10384d:	83 ec 04             	sub    $0x4,%esp
  103850:	8b 45 0c             	mov    0xc(%ebp),%eax
  103853:	88 45 fc             	mov    %al,-0x4(%ebp)
    while (*s != '\0') {
  103856:	eb 0f                	jmp    103867 <strfind+0x1d>
        if (*s == c) {
  103858:	8b 45 08             	mov    0x8(%ebp),%eax
  10385b:	0f b6 00             	movzbl (%eax),%eax
  10385e:	3a 45 fc             	cmp    -0x4(%ebp),%al
  103861:	74 10                	je     103873 <strfind+0x29>
            break;
        }
        s ++;
  103863:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 * not found in @s, then it returns a pointer to the null byte at the
 * end of @s, rather than 'NULL'.
 * */
char *
strfind(const char *s, char c) {
    while (*s != '\0') {
  103867:	8b 45 08             	mov    0x8(%ebp),%eax
  10386a:	0f b6 00             	movzbl (%eax),%eax
  10386d:	84 c0                	test   %al,%al
  10386f:	75 e7                	jne    103858 <strfind+0xe>
  103871:	eb 01                	jmp    103874 <strfind+0x2a>
        if (*s == c) {
            break;
  103873:	90                   	nop
        }
        s ++;
    }
    return (char *)s;
  103874:	8b 45 08             	mov    0x8(%ebp),%eax
}
  103877:	c9                   	leave  
  103878:	c3                   	ret    

00103879 <strtol>:
 * an optional "0x" or "0X" prefix.
 *
 * The strtol() function returns the converted integral number as a long int value.
 * */
long
strtol(const char *s, char **endptr, int base) {
  103879:	55                   	push   %ebp
  10387a:	89 e5                	mov    %esp,%ebp
  10387c:	83 ec 10             	sub    $0x10,%esp
    int neg = 0;
  10387f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
    long val = 0;
  103886:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)

    // gobble initial whitespace
    while (*s == ' ' || *s == '\t') {
  10388d:	eb 04                	jmp    103893 <strtol+0x1a>
        s ++;
  10388f:	83 45 08 01          	addl   $0x1,0x8(%ebp)
strtol(const char *s, char **endptr, int base) {
    int neg = 0;
    long val = 0;

    // gobble initial whitespace
    while (*s == ' ' || *s == '\t') {
  103893:	8b 45 08             	mov    0x8(%ebp),%eax
  103896:	0f b6 00             	movzbl (%eax),%eax
  103899:	3c 20                	cmp    $0x20,%al
  10389b:	74 f2                	je     10388f <strtol+0x16>
  10389d:	8b 45 08             	mov    0x8(%ebp),%eax
  1038a0:	0f b6 00             	movzbl (%eax),%eax
  1038a3:	3c 09                	cmp    $0x9,%al
  1038a5:	74 e8                	je     10388f <strtol+0x16>
        s ++;
    }

    // plus/minus sign
    if (*s == '+') {
  1038a7:	8b 45 08             	mov    0x8(%ebp),%eax
  1038aa:	0f b6 00             	movzbl (%eax),%eax
  1038ad:	3c 2b                	cmp    $0x2b,%al
  1038af:	75 06                	jne    1038b7 <strtol+0x3e>
        s ++;
  1038b1:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1038b5:	eb 15                	jmp    1038cc <strtol+0x53>
    }
    else if (*s == '-') {
  1038b7:	8b 45 08             	mov    0x8(%ebp),%eax
  1038ba:	0f b6 00             	movzbl (%eax),%eax
  1038bd:	3c 2d                	cmp    $0x2d,%al
  1038bf:	75 0b                	jne    1038cc <strtol+0x53>
        s ++, neg = 1;
  1038c1:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  1038c5:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
    }

    // hex or octal base prefix
    if ((base == 0 || base == 16) && (s[0] == '0' && s[1] == 'x')) {
  1038cc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  1038d0:	74 06                	je     1038d8 <strtol+0x5f>
  1038d2:	83 7d 10 10          	cmpl   $0x10,0x10(%ebp)
  1038d6:	75 24                	jne    1038fc <strtol+0x83>
  1038d8:	8b 45 08             	mov    0x8(%ebp),%eax
  1038db:	0f b6 00             	movzbl (%eax),%eax
  1038de:	3c 30                	cmp    $0x30,%al
  1038e0:	75 1a                	jne    1038fc <strtol+0x83>
  1038e2:	8b 45 08             	mov    0x8(%ebp),%eax
  1038e5:	83 c0 01             	add    $0x1,%eax
  1038e8:	0f b6 00             	movzbl (%eax),%eax
  1038eb:	3c 78                	cmp    $0x78,%al
  1038ed:	75 0d                	jne    1038fc <strtol+0x83>
        s += 2, base = 16;
  1038ef:	83 45 08 02          	addl   $0x2,0x8(%ebp)
  1038f3:	c7 45 10 10 00 00 00 	movl   $0x10,0x10(%ebp)
  1038fa:	eb 2a                	jmp    103926 <strtol+0xad>
    }
    else if (base == 0 && s[0] == '0') {
  1038fc:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  103900:	75 17                	jne    103919 <strtol+0xa0>
  103902:	8b 45 08             	mov    0x8(%ebp),%eax
  103905:	0f b6 00             	movzbl (%eax),%eax
  103908:	3c 30                	cmp    $0x30,%al
  10390a:	75 0d                	jne    103919 <strtol+0xa0>
        s ++, base = 8;
  10390c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  103910:	c7 45 10 08 00 00 00 	movl   $0x8,0x10(%ebp)
  103917:	eb 0d                	jmp    103926 <strtol+0xad>
    }
    else if (base == 0) {
  103919:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
  10391d:	75 07                	jne    103926 <strtol+0xad>
        base = 10;
  10391f:	c7 45 10 0a 00 00 00 	movl   $0xa,0x10(%ebp)

    // digits
    while (1) {
        int dig;

        if (*s >= '0' && *s <= '9') {
  103926:	8b 45 08             	mov    0x8(%ebp),%eax
  103929:	0f b6 00             	movzbl (%eax),%eax
  10392c:	3c 2f                	cmp    $0x2f,%al
  10392e:	7e 1b                	jle    10394b <strtol+0xd2>
  103930:	8b 45 08             	mov    0x8(%ebp),%eax
  103933:	0f b6 00             	movzbl (%eax),%eax
  103936:	3c 39                	cmp    $0x39,%al
  103938:	7f 11                	jg     10394b <strtol+0xd2>
            dig = *s - '0';
  10393a:	8b 45 08             	mov    0x8(%ebp),%eax
  10393d:	0f b6 00             	movzbl (%eax),%eax
  103940:	0f be c0             	movsbl %al,%eax
  103943:	83 e8 30             	sub    $0x30,%eax
  103946:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103949:	eb 48                	jmp    103993 <strtol+0x11a>
        }
        else if (*s >= 'a' && *s <= 'z') {
  10394b:	8b 45 08             	mov    0x8(%ebp),%eax
  10394e:	0f b6 00             	movzbl (%eax),%eax
  103951:	3c 60                	cmp    $0x60,%al
  103953:	7e 1b                	jle    103970 <strtol+0xf7>
  103955:	8b 45 08             	mov    0x8(%ebp),%eax
  103958:	0f b6 00             	movzbl (%eax),%eax
  10395b:	3c 7a                	cmp    $0x7a,%al
  10395d:	7f 11                	jg     103970 <strtol+0xf7>
            dig = *s - 'a' + 10;
  10395f:	8b 45 08             	mov    0x8(%ebp),%eax
  103962:	0f b6 00             	movzbl (%eax),%eax
  103965:	0f be c0             	movsbl %al,%eax
  103968:	83 e8 57             	sub    $0x57,%eax
  10396b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  10396e:	eb 23                	jmp    103993 <strtol+0x11a>
        }
        else if (*s >= 'A' && *s <= 'Z') {
  103970:	8b 45 08             	mov    0x8(%ebp),%eax
  103973:	0f b6 00             	movzbl (%eax),%eax
  103976:	3c 40                	cmp    $0x40,%al
  103978:	7e 3c                	jle    1039b6 <strtol+0x13d>
  10397a:	8b 45 08             	mov    0x8(%ebp),%eax
  10397d:	0f b6 00             	movzbl (%eax),%eax
  103980:	3c 5a                	cmp    $0x5a,%al
  103982:	7f 32                	jg     1039b6 <strtol+0x13d>
            dig = *s - 'A' + 10;
  103984:	8b 45 08             	mov    0x8(%ebp),%eax
  103987:	0f b6 00             	movzbl (%eax),%eax
  10398a:	0f be c0             	movsbl %al,%eax
  10398d:	83 e8 37             	sub    $0x37,%eax
  103990:	89 45 f4             	mov    %eax,-0xc(%ebp)
        }
        else {
            break;
        }
        if (dig >= base) {
  103993:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103996:	3b 45 10             	cmp    0x10(%ebp),%eax
  103999:	7d 1a                	jge    1039b5 <strtol+0x13c>
            break;
        }
        s ++, val = (val * base) + dig;
  10399b:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  10399f:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1039a2:	0f af 45 10          	imul   0x10(%ebp),%eax
  1039a6:	89 c2                	mov    %eax,%edx
  1039a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
  1039ab:	01 d0                	add    %edx,%eax
  1039ad:	89 45 f8             	mov    %eax,-0x8(%ebp)
        // we don't properly detect overflow!
    }
  1039b0:	e9 71 ff ff ff       	jmp    103926 <strtol+0xad>
        }
        else {
            break;
        }
        if (dig >= base) {
            break;
  1039b5:	90                   	nop
        }
        s ++, val = (val * base) + dig;
        // we don't properly detect overflow!
    }

    if (endptr) {
  1039b6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  1039ba:	74 08                	je     1039c4 <strtol+0x14b>
        *endptr = (char *) s;
  1039bc:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039bf:	8b 55 08             	mov    0x8(%ebp),%edx
  1039c2:	89 10                	mov    %edx,(%eax)
    }
    return (neg ? -val : val);
  1039c4:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
  1039c8:	74 07                	je     1039d1 <strtol+0x158>
  1039ca:	8b 45 f8             	mov    -0x8(%ebp),%eax
  1039cd:	f7 d8                	neg    %eax
  1039cf:	eb 03                	jmp    1039d4 <strtol+0x15b>
  1039d1:	8b 45 f8             	mov    -0x8(%ebp),%eax
}
  1039d4:	c9                   	leave  
  1039d5:	c3                   	ret    

001039d6 <memset>:
 * @n:      number of bytes to be set to the value
 *
 * The memset() function returns @s.
 * */
void *
memset(void *s, char c, size_t n) {
  1039d6:	55                   	push   %ebp
  1039d7:	89 e5                	mov    %esp,%ebp
  1039d9:	57                   	push   %edi
  1039da:	83 ec 24             	sub    $0x24,%esp
  1039dd:	8b 45 0c             	mov    0xc(%ebp),%eax
  1039e0:	88 45 d8             	mov    %al,-0x28(%ebp)
#ifdef __HAVE_ARCH_MEMSET
    return __memset(s, c, n);
  1039e3:	0f be 45 d8          	movsbl -0x28(%ebp),%eax
  1039e7:	8b 55 08             	mov    0x8(%ebp),%edx
  1039ea:	89 55 f8             	mov    %edx,-0x8(%ebp)
  1039ed:	88 45 f7             	mov    %al,-0x9(%ebp)
  1039f0:	8b 45 10             	mov    0x10(%ebp),%eax
  1039f3:	89 45 f0             	mov    %eax,-0x10(%ebp)
#ifndef __HAVE_ARCH_MEMSET
#define __HAVE_ARCH_MEMSET
static inline void *
__memset(void *s, char c, size_t n) {
    int d0, d1;
    asm volatile (
  1039f6:	8b 4d f0             	mov    -0x10(%ebp),%ecx
  1039f9:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
  1039fd:	8b 55 f8             	mov    -0x8(%ebp),%edx
  103a00:	89 d7                	mov    %edx,%edi
  103a02:	f3 aa                	rep stos %al,%es:(%edi)
  103a04:	89 fa                	mov    %edi,%edx
  103a06:	89 4d ec             	mov    %ecx,-0x14(%ebp)
  103a09:	89 55 e8             	mov    %edx,-0x18(%ebp)
        "rep; stosb;"
        : "=&c" (d0), "=&D" (d1)
        : "0" (n), "a" (c), "1" (s)
        : "memory");
    return s;
  103a0c:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103a0f:	90                   	nop
    while (n -- > 0) {
        *p ++ = c;
    }
    return s;
#endif /* __HAVE_ARCH_MEMSET */
}
  103a10:	83 c4 24             	add    $0x24,%esp
  103a13:	5f                   	pop    %edi
  103a14:	5d                   	pop    %ebp
  103a15:	c3                   	ret    

00103a16 <memmove>:
 * @n:      number of bytes to copy
 *
 * The memmove() function returns @dst.
 * */
void *
memmove(void *dst, const void *src, size_t n) {
  103a16:	55                   	push   %ebp
  103a17:	89 e5                	mov    %esp,%ebp
  103a19:	57                   	push   %edi
  103a1a:	56                   	push   %esi
  103a1b:	53                   	push   %ebx
  103a1c:	83 ec 30             	sub    $0x30,%esp
  103a1f:	8b 45 08             	mov    0x8(%ebp),%eax
  103a22:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103a25:	8b 45 0c             	mov    0xc(%ebp),%eax
  103a28:	89 45 ec             	mov    %eax,-0x14(%ebp)
  103a2b:	8b 45 10             	mov    0x10(%ebp),%eax
  103a2e:	89 45 e8             	mov    %eax,-0x18(%ebp)

#ifndef __HAVE_ARCH_MEMMOVE
#define __HAVE_ARCH_MEMMOVE
static inline void *
__memmove(void *dst, const void *src, size_t n) {
    if (dst < src) {
  103a31:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103a34:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  103a37:	73 42                	jae    103a7b <memmove+0x65>
  103a39:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103a3c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103a3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103a42:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103a45:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103a48:	89 45 dc             	mov    %eax,-0x24(%ebp)
        "andl $3, %%ecx;"
        "jz 1f;"
        "rep; movsb;"
        "1:"
        : "=&c" (d0), "=&D" (d1), "=&S" (d2)
        : "0" (n / 4), "g" (n), "1" (dst), "2" (src)
  103a4b:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103a4e:	c1 e8 02             	shr    $0x2,%eax
  103a51:	89 c1                	mov    %eax,%ecx
#ifndef __HAVE_ARCH_MEMCPY
#define __HAVE_ARCH_MEMCPY
static inline void *
__memcpy(void *dst, const void *src, size_t n) {
    int d0, d1, d2;
    asm volatile (
  103a53:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103a56:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103a59:	89 d7                	mov    %edx,%edi
  103a5b:	89 c6                	mov    %eax,%esi
  103a5d:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  103a5f:	8b 4d dc             	mov    -0x24(%ebp),%ecx
  103a62:	83 e1 03             	and    $0x3,%ecx
  103a65:	74 02                	je     103a69 <memmove+0x53>
  103a67:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  103a69:	89 f0                	mov    %esi,%eax
  103a6b:	89 fa                	mov    %edi,%edx
  103a6d:	89 4d d8             	mov    %ecx,-0x28(%ebp)
  103a70:	89 55 d4             	mov    %edx,-0x2c(%ebp)
  103a73:	89 45 d0             	mov    %eax,-0x30(%ebp)
        "rep; movsb;"
        "1:"
        : "=&c" (d0), "=&D" (d1), "=&S" (d2)
        : "0" (n / 4), "g" (n), "1" (dst), "2" (src)
        : "memory");
    return dst;
  103a76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
#ifdef __HAVE_ARCH_MEMMOVE
    return __memmove(dst, src, n);
  103a79:	eb 36                	jmp    103ab1 <memmove+0x9b>
    asm volatile (
        "std;"
        "rep; movsb;"
        "cld;"
        : "=&c" (d0), "=&S" (d1), "=&D" (d2)
        : "0" (n), "1" (n - 1 + src), "2" (n - 1 + dst)
  103a7b:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103a7e:	8d 50 ff             	lea    -0x1(%eax),%edx
  103a81:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103a84:	01 c2                	add    %eax,%edx
  103a86:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103a89:	8d 48 ff             	lea    -0x1(%eax),%ecx
  103a8c:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103a8f:	8d 1c 01             	lea    (%ecx,%eax,1),%ebx
__memmove(void *dst, const void *src, size_t n) {
    if (dst < src) {
        return __memcpy(dst, src, n);
    }
    int d0, d1, d2;
    asm volatile (
  103a92:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103a95:	89 c1                	mov    %eax,%ecx
  103a97:	89 d8                	mov    %ebx,%eax
  103a99:	89 d6                	mov    %edx,%esi
  103a9b:	89 c7                	mov    %eax,%edi
  103a9d:	fd                   	std    
  103a9e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  103aa0:	fc                   	cld    
  103aa1:	89 f8                	mov    %edi,%eax
  103aa3:	89 f2                	mov    %esi,%edx
  103aa5:	89 4d cc             	mov    %ecx,-0x34(%ebp)
  103aa8:	89 55 c8             	mov    %edx,-0x38(%ebp)
  103aab:	89 45 c4             	mov    %eax,-0x3c(%ebp)
        "rep; movsb;"
        "cld;"
        : "=&c" (d0), "=&S" (d1), "=&D" (d2)
        : "0" (n), "1" (n - 1 + src), "2" (n - 1 + dst)
        : "memory");
    return dst;
  103aae:	8b 45 f0             	mov    -0x10(%ebp),%eax
            *d ++ = *s ++;
        }
    }
    return dst;
#endif /* __HAVE_ARCH_MEMMOVE */
}
  103ab1:	83 c4 30             	add    $0x30,%esp
  103ab4:	5b                   	pop    %ebx
  103ab5:	5e                   	pop    %esi
  103ab6:	5f                   	pop    %edi
  103ab7:	5d                   	pop    %ebp
  103ab8:	c3                   	ret    

00103ab9 <memcpy>:
 * it always copies exactly @n bytes. To avoid overflows, the size of arrays pointed
 * by both @src and @dst, should be at least @n bytes, and should not overlap
 * (for overlapping memory area, memmove is a safer approach).
 * */
void *
memcpy(void *dst, const void *src, size_t n) {
  103ab9:	55                   	push   %ebp
  103aba:	89 e5                	mov    %esp,%ebp
  103abc:	57                   	push   %edi
  103abd:	56                   	push   %esi
  103abe:	83 ec 20             	sub    $0x20,%esp
  103ac1:	8b 45 08             	mov    0x8(%ebp),%eax
  103ac4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103ac7:	8b 45 0c             	mov    0xc(%ebp),%eax
  103aca:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103acd:	8b 45 10             	mov    0x10(%ebp),%eax
  103ad0:	89 45 ec             	mov    %eax,-0x14(%ebp)
        "andl $3, %%ecx;"
        "jz 1f;"
        "rep; movsb;"
        "1:"
        : "=&c" (d0), "=&D" (d1), "=&S" (d2)
        : "0" (n / 4), "g" (n), "1" (dst), "2" (src)
  103ad3:	8b 45 ec             	mov    -0x14(%ebp),%eax
  103ad6:	c1 e8 02             	shr    $0x2,%eax
  103ad9:	89 c1                	mov    %eax,%ecx
#ifndef __HAVE_ARCH_MEMCPY
#define __HAVE_ARCH_MEMCPY
static inline void *
__memcpy(void *dst, const void *src, size_t n) {
    int d0, d1, d2;
    asm volatile (
  103adb:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103ade:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ae1:	89 d7                	mov    %edx,%edi
  103ae3:	89 c6                	mov    %eax,%esi
  103ae5:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
  103ae7:	8b 4d ec             	mov    -0x14(%ebp),%ecx
  103aea:	83 e1 03             	and    $0x3,%ecx
  103aed:	74 02                	je     103af1 <memcpy+0x38>
  103aef:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
  103af1:	89 f0                	mov    %esi,%eax
  103af3:	89 fa                	mov    %edi,%edx
  103af5:	89 4d e8             	mov    %ecx,-0x18(%ebp)
  103af8:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  103afb:	89 45 e0             	mov    %eax,-0x20(%ebp)
        "rep; movsb;"
        "1:"
        : "=&c" (d0), "=&D" (d1), "=&S" (d2)
        : "0" (n / 4), "g" (n), "1" (dst), "2" (src)
        : "memory");
    return dst;
  103afe:	8b 45 f4             	mov    -0xc(%ebp),%eax
#ifdef __HAVE_ARCH_MEMCPY
    return __memcpy(dst, src, n);
  103b01:	90                   	nop
    while (n -- > 0) {
        *d ++ = *s ++;
    }
    return dst;
#endif /* __HAVE_ARCH_MEMCPY */
}
  103b02:	83 c4 20             	add    $0x20,%esp
  103b05:	5e                   	pop    %esi
  103b06:	5f                   	pop    %edi
  103b07:	5d                   	pop    %ebp
  103b08:	c3                   	ret    

00103b09 <memcmp>:
 *   match in both memory blocks has a greater value in @v1 than in @v2
 *   as if evaluated as unsigned char values;
 * - And a value less than zero indicates the opposite.
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
  103b09:	55                   	push   %ebp
  103b0a:	89 e5                	mov    %esp,%ebp
  103b0c:	83 ec 10             	sub    $0x10,%esp
    const char *s1 = (const char *)v1;
  103b0f:	8b 45 08             	mov    0x8(%ebp),%eax
  103b12:	89 45 fc             	mov    %eax,-0x4(%ebp)
    const char *s2 = (const char *)v2;
  103b15:	8b 45 0c             	mov    0xc(%ebp),%eax
  103b18:	89 45 f8             	mov    %eax,-0x8(%ebp)
    while (n -- > 0) {
  103b1b:	eb 30                	jmp    103b4d <memcmp+0x44>
        if (*s1 != *s2) {
  103b1d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b20:	0f b6 10             	movzbl (%eax),%edx
  103b23:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103b26:	0f b6 00             	movzbl (%eax),%eax
  103b29:	38 c2                	cmp    %al,%dl
  103b2b:	74 18                	je     103b45 <memcmp+0x3c>
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
  103b2d:	8b 45 fc             	mov    -0x4(%ebp),%eax
  103b30:	0f b6 00             	movzbl (%eax),%eax
  103b33:	0f b6 d0             	movzbl %al,%edx
  103b36:	8b 45 f8             	mov    -0x8(%ebp),%eax
  103b39:	0f b6 00             	movzbl (%eax),%eax
  103b3c:	0f b6 c0             	movzbl %al,%eax
  103b3f:	29 c2                	sub    %eax,%edx
  103b41:	89 d0                	mov    %edx,%eax
  103b43:	eb 1a                	jmp    103b5f <memcmp+0x56>
        }
        s1 ++, s2 ++;
  103b45:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
  103b49:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 * */
int
memcmp(const void *v1, const void *v2, size_t n) {
    const char *s1 = (const char *)v1;
    const char *s2 = (const char *)v2;
    while (n -- > 0) {
  103b4d:	8b 45 10             	mov    0x10(%ebp),%eax
  103b50:	8d 50 ff             	lea    -0x1(%eax),%edx
  103b53:	89 55 10             	mov    %edx,0x10(%ebp)
  103b56:	85 c0                	test   %eax,%eax
  103b58:	75 c3                	jne    103b1d <memcmp+0x14>
        if (*s1 != *s2) {
            return (int)((unsigned char)*s1 - (unsigned char)*s2);
        }
        s1 ++, s2 ++;
    }
    return 0;
  103b5a:	b8 00 00 00 00       	mov    $0x0,%eax
}
  103b5f:	c9                   	leave  
  103b60:	c3                   	ret    

00103b61 <printnum>:
 * @width:      maximum number of digits, if the actual width is less than @width, use @padc instead
 * @padc:       character that padded on the left if the actual width is less than @width
 * */
static void
printnum(void (*putch)(int, void*), void *putdat,
        unsigned long long num, unsigned base, int width, int padc) {
  103b61:	55                   	push   %ebp
  103b62:	89 e5                	mov    %esp,%ebp
  103b64:	83 ec 38             	sub    $0x38,%esp
  103b67:	8b 45 10             	mov    0x10(%ebp),%eax
  103b6a:	89 45 d0             	mov    %eax,-0x30(%ebp)
  103b6d:	8b 45 14             	mov    0x14(%ebp),%eax
  103b70:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    unsigned long long result = num;
  103b73:	8b 45 d0             	mov    -0x30(%ebp),%eax
  103b76:	8b 55 d4             	mov    -0x2c(%ebp),%edx
  103b79:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103b7c:	89 55 ec             	mov    %edx,-0x14(%ebp)
    unsigned mod = do_div(result, base);
  103b7f:	8b 45 18             	mov    0x18(%ebp),%eax
  103b82:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  103b85:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103b88:	8b 55 ec             	mov    -0x14(%ebp),%edx
  103b8b:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103b8e:	89 55 f0             	mov    %edx,-0x10(%ebp)
  103b91:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103b94:	89 45 f4             	mov    %eax,-0xc(%ebp)
  103b97:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
  103b9b:	74 1c                	je     103bb9 <printnum+0x58>
  103b9d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103ba0:	ba 00 00 00 00       	mov    $0x0,%edx
  103ba5:	f7 75 e4             	divl   -0x1c(%ebp)
  103ba8:	89 55 f4             	mov    %edx,-0xc(%ebp)
  103bab:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103bae:	ba 00 00 00 00       	mov    $0x0,%edx
  103bb3:	f7 75 e4             	divl   -0x1c(%ebp)
  103bb6:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103bb9:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103bbc:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103bbf:	f7 75 e4             	divl   -0x1c(%ebp)
  103bc2:	89 45 e0             	mov    %eax,-0x20(%ebp)
  103bc5:	89 55 dc             	mov    %edx,-0x24(%ebp)
  103bc8:	8b 45 e0             	mov    -0x20(%ebp),%eax
  103bcb:	8b 55 f0             	mov    -0x10(%ebp),%edx
  103bce:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103bd1:	89 55 ec             	mov    %edx,-0x14(%ebp)
  103bd4:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103bd7:	89 45 d8             	mov    %eax,-0x28(%ebp)

    // first recursively print all preceding (more significant) digits
    if (num >= base) {
  103bda:	8b 45 18             	mov    0x18(%ebp),%eax
  103bdd:	ba 00 00 00 00       	mov    $0x0,%edx
  103be2:	3b 55 d4             	cmp    -0x2c(%ebp),%edx
  103be5:	77 41                	ja     103c28 <printnum+0xc7>
  103be7:	3b 55 d4             	cmp    -0x2c(%ebp),%edx
  103bea:	72 05                	jb     103bf1 <printnum+0x90>
  103bec:	3b 45 d0             	cmp    -0x30(%ebp),%eax
  103bef:	77 37                	ja     103c28 <printnum+0xc7>
        printnum(putch, putdat, result, base, width - 1, padc);
  103bf1:	8b 45 1c             	mov    0x1c(%ebp),%eax
  103bf4:	83 e8 01             	sub    $0x1,%eax
  103bf7:	83 ec 04             	sub    $0x4,%esp
  103bfa:	ff 75 20             	pushl  0x20(%ebp)
  103bfd:	50                   	push   %eax
  103bfe:	ff 75 18             	pushl  0x18(%ebp)
  103c01:	ff 75 ec             	pushl  -0x14(%ebp)
  103c04:	ff 75 e8             	pushl  -0x18(%ebp)
  103c07:	ff 75 0c             	pushl  0xc(%ebp)
  103c0a:	ff 75 08             	pushl  0x8(%ebp)
  103c0d:	e8 4f ff ff ff       	call   103b61 <printnum>
  103c12:	83 c4 20             	add    $0x20,%esp
  103c15:	eb 1b                	jmp    103c32 <printnum+0xd1>
    } else {
        // print any needed pad characters before first digit
        while (-- width > 0)
            putch(padc, putdat);
  103c17:	83 ec 08             	sub    $0x8,%esp
  103c1a:	ff 75 0c             	pushl  0xc(%ebp)
  103c1d:	ff 75 20             	pushl  0x20(%ebp)
  103c20:	8b 45 08             	mov    0x8(%ebp),%eax
  103c23:	ff d0                	call   *%eax
  103c25:	83 c4 10             	add    $0x10,%esp
    // first recursively print all preceding (more significant) digits
    if (num >= base) {
        printnum(putch, putdat, result, base, width - 1, padc);
    } else {
        // print any needed pad characters before first digit
        while (-- width > 0)
  103c28:	83 6d 1c 01          	subl   $0x1,0x1c(%ebp)
  103c2c:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
  103c30:	7f e5                	jg     103c17 <printnum+0xb6>
            putch(padc, putdat);
    }
    // then print this (the least significant) digit
    putch("0123456789abcdef"[mod], putdat);
  103c32:	8b 45 d8             	mov    -0x28(%ebp),%eax
  103c35:	05 90 4e 10 00       	add    $0x104e90,%eax
  103c3a:	0f b6 00             	movzbl (%eax),%eax
  103c3d:	0f be c0             	movsbl %al,%eax
  103c40:	83 ec 08             	sub    $0x8,%esp
  103c43:	ff 75 0c             	pushl  0xc(%ebp)
  103c46:	50                   	push   %eax
  103c47:	8b 45 08             	mov    0x8(%ebp),%eax
  103c4a:	ff d0                	call   *%eax
  103c4c:	83 c4 10             	add    $0x10,%esp
}
  103c4f:	90                   	nop
  103c50:	c9                   	leave  
  103c51:	c3                   	ret    

00103c52 <getuint>:
 * getuint - get an unsigned int of various possible sizes from a varargs list
 * @ap:         a varargs list pointer
 * @lflag:      determines the size of the vararg that @ap points to
 * */
static unsigned long long
getuint(va_list *ap, int lflag) {
  103c52:	55                   	push   %ebp
  103c53:	89 e5                	mov    %esp,%ebp
    if (lflag >= 2) {
  103c55:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  103c59:	7e 14                	jle    103c6f <getuint+0x1d>
        return va_arg(*ap, unsigned long long);
  103c5b:	8b 45 08             	mov    0x8(%ebp),%eax
  103c5e:	8b 00                	mov    (%eax),%eax
  103c60:	8d 48 08             	lea    0x8(%eax),%ecx
  103c63:	8b 55 08             	mov    0x8(%ebp),%edx
  103c66:	89 0a                	mov    %ecx,(%edx)
  103c68:	8b 50 04             	mov    0x4(%eax),%edx
  103c6b:	8b 00                	mov    (%eax),%eax
  103c6d:	eb 30                	jmp    103c9f <getuint+0x4d>
    }
    else if (lflag) {
  103c6f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  103c73:	74 16                	je     103c8b <getuint+0x39>
        return va_arg(*ap, unsigned long);
  103c75:	8b 45 08             	mov    0x8(%ebp),%eax
  103c78:	8b 00                	mov    (%eax),%eax
  103c7a:	8d 48 04             	lea    0x4(%eax),%ecx
  103c7d:	8b 55 08             	mov    0x8(%ebp),%edx
  103c80:	89 0a                	mov    %ecx,(%edx)
  103c82:	8b 00                	mov    (%eax),%eax
  103c84:	ba 00 00 00 00       	mov    $0x0,%edx
  103c89:	eb 14                	jmp    103c9f <getuint+0x4d>
    }
    else {
        return va_arg(*ap, unsigned int);
  103c8b:	8b 45 08             	mov    0x8(%ebp),%eax
  103c8e:	8b 00                	mov    (%eax),%eax
  103c90:	8d 48 04             	lea    0x4(%eax),%ecx
  103c93:	8b 55 08             	mov    0x8(%ebp),%edx
  103c96:	89 0a                	mov    %ecx,(%edx)
  103c98:	8b 00                	mov    (%eax),%eax
  103c9a:	ba 00 00 00 00       	mov    $0x0,%edx
    }
}
  103c9f:	5d                   	pop    %ebp
  103ca0:	c3                   	ret    

00103ca1 <getint>:
 * getint - same as getuint but signed, we can't use getuint because of sign extension
 * @ap:         a varargs list pointer
 * @lflag:      determines the size of the vararg that @ap points to
 * */
static long long
getint(va_list *ap, int lflag) {
  103ca1:	55                   	push   %ebp
  103ca2:	89 e5                	mov    %esp,%ebp
    if (lflag >= 2) {
  103ca4:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
  103ca8:	7e 14                	jle    103cbe <getint+0x1d>
        return va_arg(*ap, long long);
  103caa:	8b 45 08             	mov    0x8(%ebp),%eax
  103cad:	8b 00                	mov    (%eax),%eax
  103caf:	8d 48 08             	lea    0x8(%eax),%ecx
  103cb2:	8b 55 08             	mov    0x8(%ebp),%edx
  103cb5:	89 0a                	mov    %ecx,(%edx)
  103cb7:	8b 50 04             	mov    0x4(%eax),%edx
  103cba:	8b 00                	mov    (%eax),%eax
  103cbc:	eb 28                	jmp    103ce6 <getint+0x45>
    }
    else if (lflag) {
  103cbe:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
  103cc2:	74 12                	je     103cd6 <getint+0x35>
        return va_arg(*ap, long);
  103cc4:	8b 45 08             	mov    0x8(%ebp),%eax
  103cc7:	8b 00                	mov    (%eax),%eax
  103cc9:	8d 48 04             	lea    0x4(%eax),%ecx
  103ccc:	8b 55 08             	mov    0x8(%ebp),%edx
  103ccf:	89 0a                	mov    %ecx,(%edx)
  103cd1:	8b 00                	mov    (%eax),%eax
  103cd3:	99                   	cltd   
  103cd4:	eb 10                	jmp    103ce6 <getint+0x45>
    }
    else {
        return va_arg(*ap, int);
  103cd6:	8b 45 08             	mov    0x8(%ebp),%eax
  103cd9:	8b 00                	mov    (%eax),%eax
  103cdb:	8d 48 04             	lea    0x4(%eax),%ecx
  103cde:	8b 55 08             	mov    0x8(%ebp),%edx
  103ce1:	89 0a                	mov    %ecx,(%edx)
  103ce3:	8b 00                	mov    (%eax),%eax
  103ce5:	99                   	cltd   
    }
}
  103ce6:	5d                   	pop    %ebp
  103ce7:	c3                   	ret    

00103ce8 <printfmt>:
 * @putch:      specified putch function, print a single character
 * @putdat:     used by @putch function
 * @fmt:        the format string to use
 * */
void
printfmt(void (*putch)(int, void*), void *putdat, const char *fmt, ...) {
  103ce8:	55                   	push   %ebp
  103ce9:	89 e5                	mov    %esp,%ebp
  103ceb:	83 ec 18             	sub    $0x18,%esp
    va_list ap;

    va_start(ap, fmt);
  103cee:	8d 45 14             	lea    0x14(%ebp),%eax
  103cf1:	89 45 f4             	mov    %eax,-0xc(%ebp)
    vprintfmt(putch, putdat, fmt, ap);
  103cf4:	8b 45 f4             	mov    -0xc(%ebp),%eax
  103cf7:	50                   	push   %eax
  103cf8:	ff 75 10             	pushl  0x10(%ebp)
  103cfb:	ff 75 0c             	pushl  0xc(%ebp)
  103cfe:	ff 75 08             	pushl  0x8(%ebp)
  103d01:	e8 06 00 00 00       	call   103d0c <vprintfmt>
  103d06:	83 c4 10             	add    $0x10,%esp
    va_end(ap);
}
  103d09:	90                   	nop
  103d0a:	c9                   	leave  
  103d0b:	c3                   	ret    

00103d0c <vprintfmt>:
 *
 * Call this function if you are already dealing with a va_list.
 * Or you probably want printfmt() instead.
 * */
void
vprintfmt(void (*putch)(int, void*), void *putdat, const char *fmt, va_list ap) {
  103d0c:	55                   	push   %ebp
  103d0d:	89 e5                	mov    %esp,%ebp
  103d0f:	56                   	push   %esi
  103d10:	53                   	push   %ebx
  103d11:	83 ec 20             	sub    $0x20,%esp
    register int ch, err;
    unsigned long long num;
    int base, width, precision, lflag, altflag;

    while (1) {
        while ((ch = *(unsigned char *)fmt ++) != '%') {
  103d14:	eb 17                	jmp    103d2d <vprintfmt+0x21>
            if (ch == '\0') {
  103d16:	85 db                	test   %ebx,%ebx
  103d18:	0f 84 8e 03 00 00    	je     1040ac <vprintfmt+0x3a0>
                return;
            }
            putch(ch, putdat);
  103d1e:	83 ec 08             	sub    $0x8,%esp
  103d21:	ff 75 0c             	pushl  0xc(%ebp)
  103d24:	53                   	push   %ebx
  103d25:	8b 45 08             	mov    0x8(%ebp),%eax
  103d28:	ff d0                	call   *%eax
  103d2a:	83 c4 10             	add    $0x10,%esp
    register int ch, err;
    unsigned long long num;
    int base, width, precision, lflag, altflag;

    while (1) {
        while ((ch = *(unsigned char *)fmt ++) != '%') {
  103d2d:	8b 45 10             	mov    0x10(%ebp),%eax
  103d30:	8d 50 01             	lea    0x1(%eax),%edx
  103d33:	89 55 10             	mov    %edx,0x10(%ebp)
  103d36:	0f b6 00             	movzbl (%eax),%eax
  103d39:	0f b6 d8             	movzbl %al,%ebx
  103d3c:	83 fb 25             	cmp    $0x25,%ebx
  103d3f:	75 d5                	jne    103d16 <vprintfmt+0xa>
            }
            putch(ch, putdat);
        }

        // Process a %-escape sequence
        char padc = ' ';
  103d41:	c6 45 db 20          	movb   $0x20,-0x25(%ebp)
        width = precision = -1;
  103d45:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
  103d4c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103d4f:	89 45 e8             	mov    %eax,-0x18(%ebp)
        lflag = altflag = 0;
  103d52:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  103d59:	8b 45 dc             	mov    -0x24(%ebp),%eax
  103d5c:	89 45 e0             	mov    %eax,-0x20(%ebp)

    reswitch:
        switch (ch = *(unsigned char *)fmt ++) {
  103d5f:	8b 45 10             	mov    0x10(%ebp),%eax
  103d62:	8d 50 01             	lea    0x1(%eax),%edx
  103d65:	89 55 10             	mov    %edx,0x10(%ebp)
  103d68:	0f b6 00             	movzbl (%eax),%eax
  103d6b:	0f b6 d8             	movzbl %al,%ebx
  103d6e:	8d 43 dd             	lea    -0x23(%ebx),%eax
  103d71:	83 f8 55             	cmp    $0x55,%eax
  103d74:	0f 87 05 03 00 00    	ja     10407f <vprintfmt+0x373>
  103d7a:	8b 04 85 b4 4e 10 00 	mov    0x104eb4(,%eax,4),%eax
  103d81:	ff e0                	jmp    *%eax

        // flag to pad on the right
        case '-':
            padc = '-';
  103d83:	c6 45 db 2d          	movb   $0x2d,-0x25(%ebp)
            goto reswitch;
  103d87:	eb d6                	jmp    103d5f <vprintfmt+0x53>

        // flag to pad with 0's instead of spaces
        case '0':
            padc = '0';
  103d89:	c6 45 db 30          	movb   $0x30,-0x25(%ebp)
            goto reswitch;
  103d8d:	eb d0                	jmp    103d5f <vprintfmt+0x53>

        // width field
        case '1' ... '9':
            for (precision = 0; ; ++ fmt) {
  103d8f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
                precision = precision * 10 + ch - '0';
  103d96:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  103d99:	89 d0                	mov    %edx,%eax
  103d9b:	c1 e0 02             	shl    $0x2,%eax
  103d9e:	01 d0                	add    %edx,%eax
  103da0:	01 c0                	add    %eax,%eax
  103da2:	01 d8                	add    %ebx,%eax
  103da4:	83 e8 30             	sub    $0x30,%eax
  103da7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
                ch = *fmt;
  103daa:	8b 45 10             	mov    0x10(%ebp),%eax
  103dad:	0f b6 00             	movzbl (%eax),%eax
  103db0:	0f be d8             	movsbl %al,%ebx
                if (ch < '0' || ch > '9') {
  103db3:	83 fb 2f             	cmp    $0x2f,%ebx
  103db6:	7e 39                	jle    103df1 <vprintfmt+0xe5>
  103db8:	83 fb 39             	cmp    $0x39,%ebx
  103dbb:	7f 34                	jg     103df1 <vprintfmt+0xe5>
            padc = '0';
            goto reswitch;

        // width field
        case '1' ... '9':
            for (precision = 0; ; ++ fmt) {
  103dbd:	83 45 10 01          	addl   $0x1,0x10(%ebp)
                precision = precision * 10 + ch - '0';
                ch = *fmt;
                if (ch < '0' || ch > '9') {
                    break;
                }
            }
  103dc1:	eb d3                	jmp    103d96 <vprintfmt+0x8a>
            goto process_precision;

        case '*':
            precision = va_arg(ap, int);
  103dc3:	8b 45 14             	mov    0x14(%ebp),%eax
  103dc6:	8d 50 04             	lea    0x4(%eax),%edx
  103dc9:	89 55 14             	mov    %edx,0x14(%ebp)
  103dcc:	8b 00                	mov    (%eax),%eax
  103dce:	89 45 e4             	mov    %eax,-0x1c(%ebp)
            goto process_precision;
  103dd1:	eb 1f                	jmp    103df2 <vprintfmt+0xe6>

        case '.':
            if (width < 0)
  103dd3:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103dd7:	79 86                	jns    103d5f <vprintfmt+0x53>
                width = 0;
  103dd9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
            goto reswitch;
  103de0:	e9 7a ff ff ff       	jmp    103d5f <vprintfmt+0x53>

        case '#':
            altflag = 1;
  103de5:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
            goto reswitch;
  103dec:	e9 6e ff ff ff       	jmp    103d5f <vprintfmt+0x53>
                ch = *fmt;
                if (ch < '0' || ch > '9') {
                    break;
                }
            }
            goto process_precision;
  103df1:	90                   	nop
        case '#':
            altflag = 1;
            goto reswitch;

        process_precision:
            if (width < 0)
  103df2:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103df6:	0f 89 63 ff ff ff    	jns    103d5f <vprintfmt+0x53>
                width = precision, precision = -1;
  103dfc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103dff:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103e02:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,-0x1c(%ebp)
            goto reswitch;
  103e09:	e9 51 ff ff ff       	jmp    103d5f <vprintfmt+0x53>

        // long flag (doubled for long long)
        case 'l':
            lflag ++;
  103e0e:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
            goto reswitch;
  103e12:	e9 48 ff ff ff       	jmp    103d5f <vprintfmt+0x53>

        // character
        case 'c':
            putch(va_arg(ap, int), putdat);
  103e17:	8b 45 14             	mov    0x14(%ebp),%eax
  103e1a:	8d 50 04             	lea    0x4(%eax),%edx
  103e1d:	89 55 14             	mov    %edx,0x14(%ebp)
  103e20:	8b 00                	mov    (%eax),%eax
  103e22:	83 ec 08             	sub    $0x8,%esp
  103e25:	ff 75 0c             	pushl  0xc(%ebp)
  103e28:	50                   	push   %eax
  103e29:	8b 45 08             	mov    0x8(%ebp),%eax
  103e2c:	ff d0                	call   *%eax
  103e2e:	83 c4 10             	add    $0x10,%esp
            break;
  103e31:	e9 71 02 00 00       	jmp    1040a7 <vprintfmt+0x39b>

        // error message
        case 'e':
            err = va_arg(ap, int);
  103e36:	8b 45 14             	mov    0x14(%ebp),%eax
  103e39:	8d 50 04             	lea    0x4(%eax),%edx
  103e3c:	89 55 14             	mov    %edx,0x14(%ebp)
  103e3f:	8b 18                	mov    (%eax),%ebx
            if (err < 0) {
  103e41:	85 db                	test   %ebx,%ebx
  103e43:	79 02                	jns    103e47 <vprintfmt+0x13b>
                err = -err;
  103e45:	f7 db                	neg    %ebx
            }
            if (err > MAXERROR || (p = error_string[err]) == NULL) {
  103e47:	83 fb 06             	cmp    $0x6,%ebx
  103e4a:	7f 0b                	jg     103e57 <vprintfmt+0x14b>
  103e4c:	8b 34 9d 74 4e 10 00 	mov    0x104e74(,%ebx,4),%esi
  103e53:	85 f6                	test   %esi,%esi
  103e55:	75 19                	jne    103e70 <vprintfmt+0x164>
                printfmt(putch, putdat, "error %d", err);
  103e57:	53                   	push   %ebx
  103e58:	68 a1 4e 10 00       	push   $0x104ea1
  103e5d:	ff 75 0c             	pushl  0xc(%ebp)
  103e60:	ff 75 08             	pushl  0x8(%ebp)
  103e63:	e8 80 fe ff ff       	call   103ce8 <printfmt>
  103e68:	83 c4 10             	add    $0x10,%esp
            }
            else {
                printfmt(putch, putdat, "%s", p);
            }
            break;
  103e6b:	e9 37 02 00 00       	jmp    1040a7 <vprintfmt+0x39b>
            }
            if (err > MAXERROR || (p = error_string[err]) == NULL) {
                printfmt(putch, putdat, "error %d", err);
            }
            else {
                printfmt(putch, putdat, "%s", p);
  103e70:	56                   	push   %esi
  103e71:	68 aa 4e 10 00       	push   $0x104eaa
  103e76:	ff 75 0c             	pushl  0xc(%ebp)
  103e79:	ff 75 08             	pushl  0x8(%ebp)
  103e7c:	e8 67 fe ff ff       	call   103ce8 <printfmt>
  103e81:	83 c4 10             	add    $0x10,%esp
            }
            break;
  103e84:	e9 1e 02 00 00       	jmp    1040a7 <vprintfmt+0x39b>

        // string
        case 's':
            if ((p = va_arg(ap, char *)) == NULL) {
  103e89:	8b 45 14             	mov    0x14(%ebp),%eax
  103e8c:	8d 50 04             	lea    0x4(%eax),%edx
  103e8f:	89 55 14             	mov    %edx,0x14(%ebp)
  103e92:	8b 30                	mov    (%eax),%esi
  103e94:	85 f6                	test   %esi,%esi
  103e96:	75 05                	jne    103e9d <vprintfmt+0x191>
                p = "(null)";
  103e98:	be ad 4e 10 00       	mov    $0x104ead,%esi
            }
            if (width > 0 && padc != '-') {
  103e9d:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103ea1:	7e 76                	jle    103f19 <vprintfmt+0x20d>
  103ea3:	80 7d db 2d          	cmpb   $0x2d,-0x25(%ebp)
  103ea7:	74 70                	je     103f19 <vprintfmt+0x20d>
                for (width -= strnlen(p, precision); width > 0; width --) {
  103ea9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  103eac:	83 ec 08             	sub    $0x8,%esp
  103eaf:	50                   	push   %eax
  103eb0:	56                   	push   %esi
  103eb1:	e8 17 f8 ff ff       	call   1036cd <strnlen>
  103eb6:	83 c4 10             	add    $0x10,%esp
  103eb9:	89 c2                	mov    %eax,%edx
  103ebb:	8b 45 e8             	mov    -0x18(%ebp),%eax
  103ebe:	29 d0                	sub    %edx,%eax
  103ec0:	89 45 e8             	mov    %eax,-0x18(%ebp)
  103ec3:	eb 17                	jmp    103edc <vprintfmt+0x1d0>
                    putch(padc, putdat);
  103ec5:	0f be 45 db          	movsbl -0x25(%ebp),%eax
  103ec9:	83 ec 08             	sub    $0x8,%esp
  103ecc:	ff 75 0c             	pushl  0xc(%ebp)
  103ecf:	50                   	push   %eax
  103ed0:	8b 45 08             	mov    0x8(%ebp),%eax
  103ed3:	ff d0                	call   *%eax
  103ed5:	83 c4 10             	add    $0x10,%esp
        case 's':
            if ((p = va_arg(ap, char *)) == NULL) {
                p = "(null)";
            }
            if (width > 0 && padc != '-') {
                for (width -= strnlen(p, precision); width > 0; width --) {
  103ed8:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
  103edc:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103ee0:	7f e3                	jg     103ec5 <vprintfmt+0x1b9>
                    putch(padc, putdat);
                }
            }
            for (; (ch = *p ++) != '\0' && (precision < 0 || -- precision >= 0); width --) {
  103ee2:	eb 35                	jmp    103f19 <vprintfmt+0x20d>
                if (altflag && (ch < ' ' || ch > '~')) {
  103ee4:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
  103ee8:	74 1c                	je     103f06 <vprintfmt+0x1fa>
  103eea:	83 fb 1f             	cmp    $0x1f,%ebx
  103eed:	7e 05                	jle    103ef4 <vprintfmt+0x1e8>
  103eef:	83 fb 7e             	cmp    $0x7e,%ebx
  103ef2:	7e 12                	jle    103f06 <vprintfmt+0x1fa>
                    putch('?', putdat);
  103ef4:	83 ec 08             	sub    $0x8,%esp
  103ef7:	ff 75 0c             	pushl  0xc(%ebp)
  103efa:	6a 3f                	push   $0x3f
  103efc:	8b 45 08             	mov    0x8(%ebp),%eax
  103eff:	ff d0                	call   *%eax
  103f01:	83 c4 10             	add    $0x10,%esp
  103f04:	eb 0f                	jmp    103f15 <vprintfmt+0x209>
                }
                else {
                    putch(ch, putdat);
  103f06:	83 ec 08             	sub    $0x8,%esp
  103f09:	ff 75 0c             	pushl  0xc(%ebp)
  103f0c:	53                   	push   %ebx
  103f0d:	8b 45 08             	mov    0x8(%ebp),%eax
  103f10:	ff d0                	call   *%eax
  103f12:	83 c4 10             	add    $0x10,%esp
            if (width > 0 && padc != '-') {
                for (width -= strnlen(p, precision); width > 0; width --) {
                    putch(padc, putdat);
                }
            }
            for (; (ch = *p ++) != '\0' && (precision < 0 || -- precision >= 0); width --) {
  103f15:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
  103f19:	89 f0                	mov    %esi,%eax
  103f1b:	8d 70 01             	lea    0x1(%eax),%esi
  103f1e:	0f b6 00             	movzbl (%eax),%eax
  103f21:	0f be d8             	movsbl %al,%ebx
  103f24:	85 db                	test   %ebx,%ebx
  103f26:	74 26                	je     103f4e <vprintfmt+0x242>
  103f28:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  103f2c:	78 b6                	js     103ee4 <vprintfmt+0x1d8>
  103f2e:	83 6d e4 01          	subl   $0x1,-0x1c(%ebp)
  103f32:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
  103f36:	79 ac                	jns    103ee4 <vprintfmt+0x1d8>
                }
                else {
                    putch(ch, putdat);
                }
            }
            for (; width > 0; width --) {
  103f38:	eb 14                	jmp    103f4e <vprintfmt+0x242>
                putch(' ', putdat);
  103f3a:	83 ec 08             	sub    $0x8,%esp
  103f3d:	ff 75 0c             	pushl  0xc(%ebp)
  103f40:	6a 20                	push   $0x20
  103f42:	8b 45 08             	mov    0x8(%ebp),%eax
  103f45:	ff d0                	call   *%eax
  103f47:	83 c4 10             	add    $0x10,%esp
                }
                else {
                    putch(ch, putdat);
                }
            }
            for (; width > 0; width --) {
  103f4a:	83 6d e8 01          	subl   $0x1,-0x18(%ebp)
  103f4e:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
  103f52:	7f e6                	jg     103f3a <vprintfmt+0x22e>
                putch(' ', putdat);
            }
            break;
  103f54:	e9 4e 01 00 00       	jmp    1040a7 <vprintfmt+0x39b>

        // (signed) decimal
        case 'd':
            num = getint(&ap, lflag);
  103f59:	83 ec 08             	sub    $0x8,%esp
  103f5c:	ff 75 e0             	pushl  -0x20(%ebp)
  103f5f:	8d 45 14             	lea    0x14(%ebp),%eax
  103f62:	50                   	push   %eax
  103f63:	e8 39 fd ff ff       	call   103ca1 <getint>
  103f68:	83 c4 10             	add    $0x10,%esp
  103f6b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103f6e:	89 55 f4             	mov    %edx,-0xc(%ebp)
            if ((long long)num < 0) {
  103f71:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103f74:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103f77:	85 d2                	test   %edx,%edx
  103f79:	79 23                	jns    103f9e <vprintfmt+0x292>
                putch('-', putdat);
  103f7b:	83 ec 08             	sub    $0x8,%esp
  103f7e:	ff 75 0c             	pushl  0xc(%ebp)
  103f81:	6a 2d                	push   $0x2d
  103f83:	8b 45 08             	mov    0x8(%ebp),%eax
  103f86:	ff d0                	call   *%eax
  103f88:	83 c4 10             	add    $0x10,%esp
                num = -(long long)num;
  103f8b:	8b 45 f0             	mov    -0x10(%ebp),%eax
  103f8e:	8b 55 f4             	mov    -0xc(%ebp),%edx
  103f91:	f7 d8                	neg    %eax
  103f93:	83 d2 00             	adc    $0x0,%edx
  103f96:	f7 da                	neg    %edx
  103f98:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103f9b:	89 55 f4             	mov    %edx,-0xc(%ebp)
            }
            base = 10;
  103f9e:	c7 45 ec 0a 00 00 00 	movl   $0xa,-0x14(%ebp)
            goto number;
  103fa5:	e9 9f 00 00 00       	jmp    104049 <vprintfmt+0x33d>

        // unsigned decimal
        case 'u':
            num = getuint(&ap, lflag);
  103faa:	83 ec 08             	sub    $0x8,%esp
  103fad:	ff 75 e0             	pushl  -0x20(%ebp)
  103fb0:	8d 45 14             	lea    0x14(%ebp),%eax
  103fb3:	50                   	push   %eax
  103fb4:	e8 99 fc ff ff       	call   103c52 <getuint>
  103fb9:	83 c4 10             	add    $0x10,%esp
  103fbc:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103fbf:	89 55 f4             	mov    %edx,-0xc(%ebp)
            base = 10;
  103fc2:	c7 45 ec 0a 00 00 00 	movl   $0xa,-0x14(%ebp)
            goto number;
  103fc9:	eb 7e                	jmp    104049 <vprintfmt+0x33d>

        // (unsigned) octal
        case 'o':
            num = getuint(&ap, lflag);
  103fcb:	83 ec 08             	sub    $0x8,%esp
  103fce:	ff 75 e0             	pushl  -0x20(%ebp)
  103fd1:	8d 45 14             	lea    0x14(%ebp),%eax
  103fd4:	50                   	push   %eax
  103fd5:	e8 78 fc ff ff       	call   103c52 <getuint>
  103fda:	83 c4 10             	add    $0x10,%esp
  103fdd:	89 45 f0             	mov    %eax,-0x10(%ebp)
  103fe0:	89 55 f4             	mov    %edx,-0xc(%ebp)
            base = 8;
  103fe3:	c7 45 ec 08 00 00 00 	movl   $0x8,-0x14(%ebp)
            goto number;
  103fea:	eb 5d                	jmp    104049 <vprintfmt+0x33d>

        // pointer
        case 'p':
            putch('0', putdat);
  103fec:	83 ec 08             	sub    $0x8,%esp
  103fef:	ff 75 0c             	pushl  0xc(%ebp)
  103ff2:	6a 30                	push   $0x30
  103ff4:	8b 45 08             	mov    0x8(%ebp),%eax
  103ff7:	ff d0                	call   *%eax
  103ff9:	83 c4 10             	add    $0x10,%esp
            putch('x', putdat);
  103ffc:	83 ec 08             	sub    $0x8,%esp
  103fff:	ff 75 0c             	pushl  0xc(%ebp)
  104002:	6a 78                	push   $0x78
  104004:	8b 45 08             	mov    0x8(%ebp),%eax
  104007:	ff d0                	call   *%eax
  104009:	83 c4 10             	add    $0x10,%esp
            num = (unsigned long long)(uintptr_t)va_arg(ap, void *);
  10400c:	8b 45 14             	mov    0x14(%ebp),%eax
  10400f:	8d 50 04             	lea    0x4(%eax),%edx
  104012:	89 55 14             	mov    %edx,0x14(%ebp)
  104015:	8b 00                	mov    (%eax),%eax
  104017:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10401a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
            base = 16;
  104021:	c7 45 ec 10 00 00 00 	movl   $0x10,-0x14(%ebp)
            goto number;
  104028:	eb 1f                	jmp    104049 <vprintfmt+0x33d>

        // (unsigned) hexadecimal
        case 'x':
            num = getuint(&ap, lflag);
  10402a:	83 ec 08             	sub    $0x8,%esp
  10402d:	ff 75 e0             	pushl  -0x20(%ebp)
  104030:	8d 45 14             	lea    0x14(%ebp),%eax
  104033:	50                   	push   %eax
  104034:	e8 19 fc ff ff       	call   103c52 <getuint>
  104039:	83 c4 10             	add    $0x10,%esp
  10403c:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10403f:	89 55 f4             	mov    %edx,-0xc(%ebp)
            base = 16;
  104042:	c7 45 ec 10 00 00 00 	movl   $0x10,-0x14(%ebp)
        number:
            printnum(putch, putdat, num, base, width, padc);
  104049:	0f be 55 db          	movsbl -0x25(%ebp),%edx
  10404d:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104050:	83 ec 04             	sub    $0x4,%esp
  104053:	52                   	push   %edx
  104054:	ff 75 e8             	pushl  -0x18(%ebp)
  104057:	50                   	push   %eax
  104058:	ff 75 f4             	pushl  -0xc(%ebp)
  10405b:	ff 75 f0             	pushl  -0x10(%ebp)
  10405e:	ff 75 0c             	pushl  0xc(%ebp)
  104061:	ff 75 08             	pushl  0x8(%ebp)
  104064:	e8 f8 fa ff ff       	call   103b61 <printnum>
  104069:	83 c4 20             	add    $0x20,%esp
            break;
  10406c:	eb 39                	jmp    1040a7 <vprintfmt+0x39b>

        // escaped '%' character
        case '%':
            putch(ch, putdat);
  10406e:	83 ec 08             	sub    $0x8,%esp
  104071:	ff 75 0c             	pushl  0xc(%ebp)
  104074:	53                   	push   %ebx
  104075:	8b 45 08             	mov    0x8(%ebp),%eax
  104078:	ff d0                	call   *%eax
  10407a:	83 c4 10             	add    $0x10,%esp
            break;
  10407d:	eb 28                	jmp    1040a7 <vprintfmt+0x39b>

        // unrecognized escape sequence - just print it literally
        default:
            putch('%', putdat);
  10407f:	83 ec 08             	sub    $0x8,%esp
  104082:	ff 75 0c             	pushl  0xc(%ebp)
  104085:	6a 25                	push   $0x25
  104087:	8b 45 08             	mov    0x8(%ebp),%eax
  10408a:	ff d0                	call   *%eax
  10408c:	83 c4 10             	add    $0x10,%esp
            for (fmt --; fmt[-1] != '%'; fmt --)
  10408f:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  104093:	eb 04                	jmp    104099 <vprintfmt+0x38d>
  104095:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
  104099:	8b 45 10             	mov    0x10(%ebp),%eax
  10409c:	83 e8 01             	sub    $0x1,%eax
  10409f:	0f b6 00             	movzbl (%eax),%eax
  1040a2:	3c 25                	cmp    $0x25,%al
  1040a4:	75 ef                	jne    104095 <vprintfmt+0x389>
                /* do nothing */;
            break;
  1040a6:	90                   	nop
        }
    }
  1040a7:	e9 68 fc ff ff       	jmp    103d14 <vprintfmt+0x8>
    int base, width, precision, lflag, altflag;

    while (1) {
        while ((ch = *(unsigned char *)fmt ++) != '%') {
            if (ch == '\0') {
                return;
  1040ac:	90                   	nop
            for (fmt --; fmt[-1] != '%'; fmt --)
                /* do nothing */;
            break;
        }
    }
}
  1040ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
  1040b0:	5b                   	pop    %ebx
  1040b1:	5e                   	pop    %esi
  1040b2:	5d                   	pop    %ebp
  1040b3:	c3                   	ret    

001040b4 <sprintputch>:
 * sprintputch - 'print' a single character in a buffer
 * @ch:         the character will be printed
 * @b:          the buffer to place the character @ch
 * */
static void
sprintputch(int ch, struct sprintbuf *b) {
  1040b4:	55                   	push   %ebp
  1040b5:	89 e5                	mov    %esp,%ebp
    b->cnt ++;
  1040b7:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040ba:	8b 40 08             	mov    0x8(%eax),%eax
  1040bd:	8d 50 01             	lea    0x1(%eax),%edx
  1040c0:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040c3:	89 50 08             	mov    %edx,0x8(%eax)
    if (b->buf < b->ebuf) {
  1040c6:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040c9:	8b 10                	mov    (%eax),%edx
  1040cb:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040ce:	8b 40 04             	mov    0x4(%eax),%eax
  1040d1:	39 c2                	cmp    %eax,%edx
  1040d3:	73 12                	jae    1040e7 <sprintputch+0x33>
        *b->buf ++ = ch;
  1040d5:	8b 45 0c             	mov    0xc(%ebp),%eax
  1040d8:	8b 00                	mov    (%eax),%eax
  1040da:	8d 48 01             	lea    0x1(%eax),%ecx
  1040dd:	8b 55 0c             	mov    0xc(%ebp),%edx
  1040e0:	89 0a                	mov    %ecx,(%edx)
  1040e2:	8b 55 08             	mov    0x8(%ebp),%edx
  1040e5:	88 10                	mov    %dl,(%eax)
    }
}
  1040e7:	90                   	nop
  1040e8:	5d                   	pop    %ebp
  1040e9:	c3                   	ret    

001040ea <snprintf>:
 * @str:        the buffer to place the result into
 * @size:       the size of buffer, including the trailing null space
 * @fmt:        the format string to use
 * */
int
snprintf(char *str, size_t size, const char *fmt, ...) {
  1040ea:	55                   	push   %ebp
  1040eb:	89 e5                	mov    %esp,%ebp
  1040ed:	83 ec 18             	sub    $0x18,%esp
    va_list ap;
    int cnt;
    va_start(ap, fmt);
  1040f0:	8d 45 14             	lea    0x14(%ebp),%eax
  1040f3:	89 45 f0             	mov    %eax,-0x10(%ebp)
    cnt = vsnprintf(str, size, fmt, ap);
  1040f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
  1040f9:	50                   	push   %eax
  1040fa:	ff 75 10             	pushl  0x10(%ebp)
  1040fd:	ff 75 0c             	pushl  0xc(%ebp)
  104100:	ff 75 08             	pushl  0x8(%ebp)
  104103:	e8 0b 00 00 00       	call   104113 <vsnprintf>
  104108:	83 c4 10             	add    $0x10,%esp
  10410b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    va_end(ap);
    return cnt;
  10410e:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  104111:	c9                   	leave  
  104112:	c3                   	ret    

00104113 <vsnprintf>:
 *
 * Call this function if you are already dealing with a va_list.
 * Or you probably want snprintf() instead.
 * */
int
vsnprintf(char *str, size_t size, const char *fmt, va_list ap) {
  104113:	55                   	push   %ebp
  104114:	89 e5                	mov    %esp,%ebp
  104116:	83 ec 18             	sub    $0x18,%esp
    struct sprintbuf b = {str, str + size - 1, 0};
  104119:	8b 45 08             	mov    0x8(%ebp),%eax
  10411c:	89 45 ec             	mov    %eax,-0x14(%ebp)
  10411f:	8b 45 0c             	mov    0xc(%ebp),%eax
  104122:	8d 50 ff             	lea    -0x1(%eax),%edx
  104125:	8b 45 08             	mov    0x8(%ebp),%eax
  104128:	01 d0                	add    %edx,%eax
  10412a:	89 45 f0             	mov    %eax,-0x10(%ebp)
  10412d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    if (str == NULL || b.buf > b.ebuf) {
  104134:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
  104138:	74 0a                	je     104144 <vsnprintf+0x31>
  10413a:	8b 55 ec             	mov    -0x14(%ebp),%edx
  10413d:	8b 45 f0             	mov    -0x10(%ebp),%eax
  104140:	39 c2                	cmp    %eax,%edx
  104142:	76 07                	jbe    10414b <vsnprintf+0x38>
        return -E_INVAL;
  104144:	b8 fd ff ff ff       	mov    $0xfffffffd,%eax
  104149:	eb 20                	jmp    10416b <vsnprintf+0x58>
    }
    // print the string to the buffer
    vprintfmt((void*)sprintputch, &b, fmt, ap);
  10414b:	ff 75 14             	pushl  0x14(%ebp)
  10414e:	ff 75 10             	pushl  0x10(%ebp)
  104151:	8d 45 ec             	lea    -0x14(%ebp),%eax
  104154:	50                   	push   %eax
  104155:	68 b4 40 10 00       	push   $0x1040b4
  10415a:	e8 ad fb ff ff       	call   103d0c <vprintfmt>
  10415f:	83 c4 10             	add    $0x10,%esp
    // null terminate the buffer
    *b.buf = '\0';
  104162:	8b 45 ec             	mov    -0x14(%ebp),%eax
  104165:	c6 00 00             	movb   $0x0,(%eax)
    return b.cnt;
  104168:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
  10416b:	c9                   	leave  
  10416c:	c3                   	ret    
