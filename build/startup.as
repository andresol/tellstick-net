
	; HI-TECH C PRO for the PIC18 MCU Family V9.66
	; Copyright (C) 1984-2011 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=18F67J60 --ROM=default,-1D000-1FCFF --runtime=+plib common.p1 \
	; discovery.p1 eeprom.p1 livemessage.p1 localaccess.p1 main.p1 \
	; message.p1 pwm.p1 rf.p1 send.p1 tellsticknet.p1 transmit_arctech.p1 \
	; RF/arctech.p1 RF/crc.p1 RF/everflourish.p1 RF/fineoffset.p1 \
	; RF/hasta.p1 RF/mandolyn.p1 RF/oregon.p1 RF/oregonv3.p1 RF/receive.p1 \
	; RF/transmit.p1 RF/x10.p1 TCPIP/ARP.p1 TCPIP/Helpers.p1 TCPIP/ICMP.p1 \
	; TCPIP/IP.p1 TCPIP/StackTsk.p1 TCPIP/Tick.p1 TCPIP/Reboot.p1 \
	; TCPIP/DNS.p1 TCPIP/DHCP.p1 TCPIP/UDP.p1 TCPIP/ETH97J60.p1 \
	; TCPIP/TCP.p1 TCPIP/Hashes.p1 \
	; --outdir=/home/andresol/tellstick-net/build -OTellStickNet.hex
	;


	GLOBAL	_main,start,_exit
	FNROOT	_main

	pic18cxx	equ	1

	psect	jflash_buffer,class=CODE,reloc=0x400,space=0
	psect	config,class=CONFIG,delta=1
	psect	idloc,class=IDLOC,delta=1
	psect	eeprom_data,class=EEDATA,delta=1
	psect	const,class=CODE,delta=1,reloc=2
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2
	psect	rbss,class=COMRAM,space=1
	psect	bss,class=RAM,space=1
	psect	rdata,class=COMRAM,space=1
	psect	irdata,class=CODE,space=0,reloc=2
	psect	bss,class=RAM,space=1
	psect	data,class=RAM,space=1
	psect	idata,class=CODE,space=0,reloc=2
	psect	nvram,class=NVRAM,space=1
	psect	nvrram,class=COMRAM,space=1
	psect	nvbit,class=COMRAM,bit,space=1
	psect	temp,ovrld,class=COMRAM,space=1
	psect	struct,ovrld,class=COMRAM,space=1
	psect	rbit,class=COMRAM,bit,space=1
	psect	bigbss,class=BIGRAM,space=1
	psect	bigdata,class=BIGRAM,space=1
	psect	ibigdata,class=CODE,space=0,reloc=2
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2


; User config settings for word 1
;
	psect config
	org 0
	dw 0xF4A0

; User config settings for word 2
;
	psect config
	org 2
	dw 0xFFC5
	psect	rparam,class=COMRAM,space=1
	psect	param0,class=BANK0,space=1
	psect	param1,class=BANK1,space=1
	psect	param2,class=BANK2,space=1
	psect	param3,class=BANK3,space=1
	psect	param4,class=BANK4,space=1
	psect	param5,class=BANK5,space=1
	psect	param6,class=BANK6,space=1
	psect	param7,class=BANK7,space=1
	psect	param8,class=BANK8,space=1
	psect	param9,class=BANK9,space=1
	psect	param10,class=BANK10,space=1
	psect	param11,class=BANK11,space=1
	psect	param12,class=BANK12,space=1
	psect	param13,class=BANK13,space=1
	psect	param14,class=BANK14,space=1
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	GLOBAL __accesstop
__accesstop EQU 96
	PSECT	ramtop,class=RAM
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	PSECT	reset_vec
reset_pos:
	goto	start

	PSECT	init
start:
_exit:
; fardata psect  - 0 bytes to load

; farbss psect  - 0 bytes to clear

; bigdata psect - 0 bytes to load

; data0 psect - 63 bytes to load
GLOBAL	__Ldata0,__Lidata
	lfsr	0,__Ldata0
	; load TBLPTR registers with __Lidata
	movlw	low (__Lidata)
	movwf	tblptrl
	movlw	high(__Lidata)
	movwf	tblptrh
	movlw	low highword(__Lidata)
	movwf	tblptru
	lfsr	1,63	; loop variable
	call	copy_data
	clrf	tblptru	; Upper address will now be non-zero, maintain clear in cp16 mode

	lfsr	0,0
	lfsr	1,1783
	call	clear_ram
	lfsr	0,3710
	lfsr	1,2
	call	clear_ram
	PSECT	end_init
	goto	_main		;go do the main stuff
; Clear these memory locations
clear_ram:
	clrf	postinc0	;clear, increment FSR0
	movf	postdec1,w	;decrement loop variable
	movf	fsr1l,w
	bnz	clear_ram
	movf	fsr1h,w
	bnz	clear_ram
	return
; Copy the ROM data image to destination in RAM
copy_data:
	tblrd	*+
	movff	tablat,postinc0
	movf	postdec1,w	;decrement loop variable
	movf	fsr1l,w
	bnz	copy_data
	movf	fsr1h,w
	bnz	copy_data
	return

	END	reset_pos
