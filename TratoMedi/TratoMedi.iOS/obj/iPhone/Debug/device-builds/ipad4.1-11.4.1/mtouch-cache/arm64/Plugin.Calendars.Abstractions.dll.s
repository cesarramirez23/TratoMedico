.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.12.0 (tarball Mon Sep 17 21:30:02 EDT 2018)"
	.asciz "Plugin.Calendars.Abstractions.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_get_Name
Plugin_Calendars_Abstractions_Calendar_get_Name:
.file 1 "<unknown>"
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #200]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_set_Name_string
Plugin_Calendars_Abstractions_Calendar_set_Name_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #208]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_get_Color
Plugin_Calendars_Abstractions_Calendar_get_Color:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #216]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_set_Color_string
Plugin_Calendars_Abstractions_Calendar_set_Color_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #224]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_get_ExternalID
Plugin_Calendars_Abstractions_Calendar_get_ExternalID:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #232]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string
Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #240]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar
Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #248]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x3940c000
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool
Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #256]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x394063a1
.word 0x3900c001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents
Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #264]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x3940c400
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool
Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #272]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x394063a1
.word 0x3900c401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_get_AccountName
Plugin_Calendars_Abstractions_Calendar_get_AccountName:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #280]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar_set_AccountName_string
Plugin_Calendars_Abstractions_Calendar_set_AccountName_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #288]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_Calendar__ctor
Plugin_Calendars_Abstractions_Calendar__ctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #296]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_Name
Plugin_Calendars_Abstractions_CalendarEvent_get_Name:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string
Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #312]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_Start
Plugin_Calendars_Abstractions_CalendarEvent_get_Start:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #320]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x9100e000
.word 0x910103a1
.word 0xf9400000
.word 0xf90023a0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_f:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime
Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #328]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0x910103a1
.word 0x9100e000
.word 0xf94023a1
.word 0xf9000001
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_End
Plugin_Calendars_Abstractions_CalendarEvent_get_End:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #336]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x91010000
.word 0x910103a1
.word 0xf9400000
.word 0xf90023a0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime
Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #344]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0x910103a1
.word 0x91010000
.word 0xf94023a1
.word 0xf9000001
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_Location
Plugin_Calendars_Abstractions_CalendarEvent_get_Location:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #352]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string
Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #360]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay
Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39412000
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool
Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #376]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x394063a1
.word 0x39012001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_Description
Plugin_Calendars_Abstractions_CalendarEvent_get_Description:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #384]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string
Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #392]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders
Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder
Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #408]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID
Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #416]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401800
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string
Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #424]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent_ToString
Plugin_Calendars_Abstractions_CalendarEvent_ToString:
.loc 1 1 0
.word 0xa9ac7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #432]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0x3901e3bf
.word 0xf9402bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800140

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xd2800141
bl _p_1
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xf9009fa0
.word 0xaa1903e0
.word 0xd2800000

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #448]
.word 0xaa1903e0
.word 0xd2800001
.word 0xf9400323
.word 0xf9408070
.word 0xd63f0200
.word 0xf9409fa0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xf90093a0
.word 0xaa1803e0
.word 0xf9009ba0
.word 0xd2800020
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_2
.word 0xf90097a0
.word 0xf9402bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a2
.word 0xf9409ba3
.word 0xaa0303e0
.word 0xd2800021
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94093a0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf9008fa0
.word 0xaa1703e0
.word 0xd2800040

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #456]
.word 0xaa1703e0
.word 0xd2800041
.word 0xf94002e3
.word 0xf9408070
.word 0xd63f0200
.word 0xf9408fa0
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf9007fa0
.word 0xaa1603e0
.word 0xf90087a0
.word 0xd2800060
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_3
.word 0x53001c00
.word 0xf9008ba0
.word 0xf9402bb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
.word 0x53001c01
.word 0x3901e3a0
.word 0x9101e3a0
bl _p_4
.word 0xf90083a0
.word 0xf9402bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a2
.word 0xf94087a3
.word 0xaa0303e0
.word 0xd2800061
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf9407fa0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf9007ba0
.word 0xaa1503e0
.word 0xd2800080

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #464]
.word 0xaa1503e0
.word 0xd2800081
.word 0xf94002a3
.word 0xf9408070
.word 0xd63f0200
.word 0xf9407ba0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90073a0
.word 0xaa1403e0
.word 0xf90077a0
.word 0xd28000a0
.word 0xaa1a03e0
.word 0x9101c3a0
.word 0xf90043a0
.word 0xaa1a03e0
bl _p_5
.word 0xf94043be
.word 0xf90003c0
.word 0xf9402bb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0xaa0003e2
.word 0xf94077a3
.word 0x9101c3a0
.word 0x91004040
.word 0xf9403ba1
.word 0xf9000001
.word 0xaa0303e0
.word 0xd28000a1
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94073a0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf9006fa0
.word 0xaa1303e0
.word 0xd28000c0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #480]
.word 0xaa1303e0
.word 0xd28000c1
.word 0xf9400263
.word 0xf9408070
.word 0xd63f0200
.word 0xf9406fa0
.word 0xf90047a0
.word 0xf94047a0
.word 0xf90067a0
.word 0xf94047a0
.word 0xf9006ba0
.word 0xd28000e0
.word 0xaa1a03e0
.word 0x9101a3a0
.word 0xf90043a0
.word 0xaa1a03e0
bl _p_7
.word 0xf94043be
.word 0xf90003c0
.word 0xf9402bb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0xaa0003e2
.word 0xf9406ba3
.word 0x9101a3a0
.word 0x91004040
.word 0xf94037a1
.word 0xf9000001
.word 0xaa0303e0
.word 0xd28000e1
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94067a0
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xf90063a0
.word 0xf9404ba3
.word 0xd2800100

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #488]
.word 0xaa0303e0
.word 0xd2800101
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94063a0
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90057a0
.word 0xf9404fa0
.word 0xf9005fa0
.word 0xd2800120
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_8
.word 0xf9005ba0
.word 0xf9402bb1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba2
.word 0xf9405fa3
.word 0xaa0303e0
.word 0xd2800121
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94057a0
bl _p_9
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf943fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf9402bb1
.word 0xf9442e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d47bfd
.word 0xd65f03c0

Lme_1d:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEvent__ctor
Plugin_Calendars_Abstractions_CalendarEvent__ctor:
.loc 1 1 0
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #496]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1e:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore
Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #504]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x91004000
.word 0x910103a1
.word 0xf9400000
.word 0xf90023a0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1f:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan
Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan:
.loc 1 1 0
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #512]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0x910103a1
.word 0x91004000
.word 0xf94023a1
.word 0xf9000001
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_20:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method
Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #520]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9001ba0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_21:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod
Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #528]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801ba1
.word 0xb9001801
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object
Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object:
.loc 1 1 0
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #536]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xf94023b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xeb1a033f
.word 0x54000201
.word 0xf94023b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x14000084
.word 0xf94023b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f7
.word 0xaa1a03f6
.word 0xeb1f035f
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xaa1603e0
.word 0xaa1603f5
.word 0xaa1603e0
.word 0xaa1603e0
.word 0xaa1603f8
.word 0xb4000bd6
.word 0xf94023b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910183a0
.word 0xf90037a0
.word 0xaa1903e0
bl _p_10
.word 0xf94037be
.word 0xf90003c0
.word 0xf94023b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x910163a0
.word 0xf90037a0
.word 0xaa1803e0
.word 0x3940031e
bl _p_10
.word 0xf94037be
.word 0xf90003c0
.word 0xf94023b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0xf94033a0
.word 0x910163a1
.word 0xf9402fa1
bl _p_11
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x340004e0
.word 0xf94023b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_12
.word 0x93407c00
.word 0xf9003fa0
.word 0xf94023b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x3940031e
bl _p_12
.word 0x93407c00
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf94043a1
.word 0x6b01001f
.word 0x9a9f17e0
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x1400001e
.word 0xf94023b1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x1400000f
.word 0xf94023b1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94023b1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_23:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode
Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode:
.loc 1 1 0
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #552]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x9100c3a0
.word 0xf9001fa0
.word 0xaa1a03e0
bl _p_10
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_12
.word 0x93407c00
.word 0xf9002ba0
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #560]
.word 0x9100c3a0
.word 0xf9401ba0
bl _p_13
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402430
.word 0xd63f0200
.word 0x93407c00
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_CalendarEventReminder__ctor
Plugin_Calendars_Abstractions_CalendarEventReminder__ctor:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #568]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd280001e
.word 0xf2e805de
.word 0x9e6703c0
.word 0x9100c3a0
.word 0xf9001fa0
.word 0xd280001e
.word 0xf2e805de
.word 0x9e6703c0
bl _p_14
.word 0xf9401fbe
.word 0xf90003c0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100c3a0
.word 0x91004340
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_25:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string
Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string:
.loc 1 1 0
.word 0xa9b17bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x910223a0
.word 0xd2800001
.word 0xd2800a01
.word 0xd2800001
.word 0xd2800a02
bl _p_15
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf94017b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a1
.word 0xf9400ba0
.word 0xf9005fa0
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a1
.word 0xf9400fa0
.word 0xf90057a0
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a1
.word 0xf94013a0
.word 0xf9005ba0
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0xf90077a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
.word 0x910163a0
.word 0xaa0003e8
bl _p_16
.word 0xf94017b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
.word 0x910163a1
.word 0x91002002
.word 0xaa0203e0
.word 0xf9402fa1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94033a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94037a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0x92800000
.word 0xf2bfffe0
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9008bbe
.word 0xf94017b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0x91002000
.word 0x910103a1
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400401
.word 0xf90027a1
.word 0xf9400800
.word 0xf9002ba0
.word 0x910103a0
.word 0x9101c3a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0xf9402ba0
.word 0xf90043a0
.word 0xf94017b1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x910223a1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #592]
bl _p_17
.word 0xf94017b1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0x91002000

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
bl _p_18
.word 0xf90073a0
.word 0xf94017b1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf94017b1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0

Lme_2f:
.text
ut_48:
add x0, x0, 16
b Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_48
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext
Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext:
.loc 1 1 0
.word 0xa9ab7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #600]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xd280001a
.word 0xd2800019
.word 0x910303a0
.word 0xd2800000
.word 0xf90063a0
.word 0xf90067a0
.word 0x9102c3a0
.word 0xd2800000
.word 0xf9005ba0
.word 0xf9005fa0
.word 0xf9006bbf
.word 0xf9402fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb9800000
.word 0xaa0003fa
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x34001d9a
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf90097a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #608]
.word 0xd2800701
.word 0xd2800701
bl _p_6
.word 0xf900a7a0
bl _p_19
.word 0xf9402fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a7a0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf900a3a0
.word 0xaa1703e0
.word 0xf9402ba0
.word 0xf9401001
.word 0xaa1703e0
.word 0x394002fe
bl _p_20
.word 0xf9402fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940a3a0
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf9009fa0
.word 0xaa1603e0
.word 0xf9402ba0
.word 0xf9401401
.word 0xaa1603e0
.word 0x394002de
bl _p_21
.word 0xf9402fb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409fa0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf9009ba0
.word 0xaa1503e0
.word 0xd2800020
.word 0xaa1503e0
.word 0xd2800021
.word 0x394002be
bl _p_22
.word 0xf9402fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9409ba0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90093a0
.word 0xaa1403e0
.word 0xd2800020
.word 0xaa1403e0
.word 0xd2800021
.word 0x3940029e
bl _p_23
.word 0xf9402fb1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a0
.word 0xf94097a1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402fb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401802
.word 0xf9402ba0
.word 0xf9401c01
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #616]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9008fa0
.word 0xf9402fb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408fa2
.word 0xd2800000
.word 0x910283a0
.word 0xf9006fa0
.word 0xaa0203e0
.word 0xd2800001
.word 0x3940005e
bl _p_24
.word 0xf9406fbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402fb1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910283a0
.word 0x9102c3a0
.word 0xf94053a0
.word 0xf9005ba0
.word 0xf94057a0
.word 0xf9005fa0
.word 0xf9402fb1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x9102c3a0
.word 0x910243a1
.word 0xf9006fa1
bl _p_25
.word 0xf9406fbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402fb1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910243a0
.word 0x910303a0
.word 0xf9404ba0
.word 0xf90063a0
.word 0xf9404fa0
.word 0xf90067a0
.word 0xf9402fb1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.word 0x910303a0
bl _p_26
.word 0x53001c00
.word 0xf9008ba0
.word 0xf9402fb1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
.word 0x35000e40
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xd2800013
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900001f
.word 0xf9402fb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x910303a1
.word 0x910203a1
.word 0xf94063a1
.word 0xf90043a1
.word 0xf94067a1
.word 0xf90047a1
.word 0x910203a1
.word 0x91010002
.word 0xaa0203e0
.word 0xf94043a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94047a1
.word 0xf9000001
.word 0xf9402fb1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91002000
.word 0x910303a1
.word 0xf9402ba2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #624]
bl _p_27
.word 0xf9402fb1
.word 0xf9445a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9446a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000090
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91010000
.word 0x9101c3a1
.word 0xf9400001
.word 0xf9003ba1
.word 0xf9400400
.word 0xf9003fa0
.word 0x9101c3a0
.word 0x910303a0
.word 0xf9403ba0
.word 0xf90063a0
.word 0xf9403fa0
.word 0xf90067a0
.word 0xf9402fb1
.word 0xf944d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91010000
.word 0xd2800001
.word 0xf9000001
.word 0xf9000401
.word 0xf9402fb1
.word 0xf944f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9454e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910303a0
bl _p_28
.word 0xf9402fb1
.word 0xf9456631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9457631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401c00
.word 0xaa0003f9
.word 0xf9402fb1
.word 0xf9459231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000028
.word 0xf90073a0
.word 0xf94073a0
.word 0xf9006ba0
.word 0xf9402fb1
.word 0xf945b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf9402fb1
.word 0xf945da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91002000
.word 0xf9406ba1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
bl _p_29
.word 0xf9402fb1
.word 0xf9460631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9461631
.word 0xb4000051
.word 0xd63f0220
bl _p_30
.word 0xf90083a0
.word 0xf94083a0
.word 0xb4000060
.word 0xf94083a0
bl _p_31
.word 0x1400001f
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9465231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900001e
.word 0xf9402fb1
.word 0xf9467a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91002000
.word 0xaa1903e1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
.word 0xaa1903e1
bl _p_32
.word 0xf9402fb1
.word 0xf946aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf946ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf946da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d57bfd
.word 0xd65f03c0

Lme_30:
.text
ut_49:
add x0, x0, 16
b Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #632]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x91002000
.word 0xf9400fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
bl _p_33
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception
Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception:
.loc 1 1 0
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #640]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2
bl _p_34
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult
wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #648]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_31
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_34:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #664]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_31
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_35:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar
wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #672]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_31
.word 0xf94037a0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000030
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000024
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffc4b
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_36:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #680]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_31
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_37:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #688]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_31
.word 0xf94037a0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000030
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000024
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffc4b
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_38:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #696]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf90037bf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_31
.word 0xf9403fa0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb50004c0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x14000039
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400002b
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90047a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf90037a0
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffb8b
.word 0xf94037a0
.word 0xf9402bb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_39:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #704]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_31
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_3a:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #712]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_31
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_3b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #720]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_31
.word 0xf94037a0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000030
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000024
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffc4b
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_3c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #728]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_31
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_3d:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #736]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_31
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_3e:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #744]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_31
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_3f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__Insert_T_REF_int_T_REF
System_Array_InternalArray__Insert_T_REF_int_T_REF:
.file 2 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.0.0.15/src/Xamarin.iOS/mcs/class/corlib/System/Array.cs"
.loc 2 139 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #752]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd287c860
.word 0xd287c860
bl _p_37
.word 0xaa0003e1
.word 0xd2802140
.word 0xf2a04000
.word 0xd2802140
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_31
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__RemoveAt_int
System_Array_InternalArray__RemoveAt_int:
.loc 2 144 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #760]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xd287c860
.word 0xd287c860
bl _p_37
.word 0xaa0003e1
.word 0xd2802140
.word 0xf2a04000
.word 0xd2802140
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_31
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IndexOf_T_REF_T_REF
System_Array_InternalArray__IndexOf_T_REF_T_REF:
.loc 2 149 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf9002faf
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #768]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xf90033bf
.word 0xf94023b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400320
.word 0x3940b000
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ad
.loc 2 150 0
.word 0xf94023b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd287cfe0
.word 0xd287cfe0
bl _p_37
bl _p_38
.word 0xf90053a0
.word 0xf94023b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xd28022e0
.word 0xf2a04000
.word 0xd28022e0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_31
.loc 2 152 0
.word 0xf94023b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f8
.loc 2 153 0
.word 0xf94023b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0x14000069
.loc 2 155 0
.word 0xf94023b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1703e0
.word 0x910183a0
.word 0xf9402fa0
bl _p_39
.word 0x93407ee0
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400000
.word 0xf90033a0
.loc 2 156 0
.word 0xf94023b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500043a
.loc 2 157 0
.word 0xf94023b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb5000860
.loc 2 158 0
.word 0xf94023b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003bb7
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf9003fa0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf9403fa0
.word 0xb9800400
.word 0xf90043a0
.word 0x14000002
.word 0xf90043bf
.word 0xf94043a0
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf94043a1
.word 0xb010000
.word 0x14000057
.loc 2 162 0
.word 0xf94023b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0xaa1a03e0
.word 0xf94033a2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x340002a0
.loc 2 165 0
.word 0xf94023b1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf90037b7
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b35
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98006b4
.word 0x14000002
.word 0xd2800014
.word 0xf94023b1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xb140000
.word 0x1400002f
.loc 2 153 0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0x6b1802ff
.word 0x54fff1ab
.loc 2 170 0
.word 0xf94023b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf90047a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94047a0
.word 0xb9800400
.word 0xf9004ba0
.word 0x14000002
.word 0xf9004bbf
.word 0xf9404ba0
.word 0xf9004ba0
.word 0xf94023b1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0x51000400
.word 0xf94023b1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_T_REF_int
System_Array_InternalArray__get_Item_T_REF_int:
.loc 2 176 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #776]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90023bf
.word 0xf94013b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x6b00035f
.word 0x540001e3
.loc 2 177 0
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2850e40
.word 0xd2850e40
bl _p_37
.word 0xaa0003e1
.word 0xd2801460
.word 0xf2a04000
.word 0xd2801460
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_31
.loc 2 180 0
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xf9401fa0
bl _p_40
.word 0x93407f40
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400000
.word 0xf90023a0
.loc 2 181 0
.word 0xf94013b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__set_Item_T_REF_int_T_REF
System_Array_InternalArray__set_Item_T_REF_int_T_REF:
.loc 2 186 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90037af
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90027a2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #784]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xf9402bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf9003ba0
.word 0xf9402bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x6b00035f
.word 0x540001e3
.loc 2 187 0
.word 0xf9402bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2850e40
.word 0xd2850e40
bl _p_37
.word 0xaa0003e1
.word 0xd2801460
.word 0xf2a04000
.word 0xd2801460
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_31
.loc 2 189 0
.word 0xf9402bb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x540002c0
.word 0xf94002f5
.word 0xf9400ae0
.word 0xb5000240
.word 0x3940b2a0
.word 0xd280003e
.word 0xeb1e001f
.word 0x540001c1
.word 0xf94002a0
.word 0xf9400414
.word 0xf9401680

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x1, [x16, #792]
.word 0xeb01001f
.word 0x540000e1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #800]
.word 0xeb00029f
.word 0x54000040
.word 0xd2800016
.word 0xaa1603e0
.word 0xaa1603f8
.loc 2 190 0
.word 0xf9402bb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb4000256
.loc 2 191 0
.word 0xf9402bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf94027a2
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xf9400303
.word 0xf9408070
.word 0xd63f0200
.loc 2 192 0
.word 0xf9402bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001e
.loc 2 194 0
.word 0xf9402bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x910123a0
.word 0xf94037a0
bl _p_41
.word 0x93407f40
.word 0xd37df000
.word 0x8b000320
.word 0x91008001
.word 0xf94027a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 2 195 0
.word 0xf9402bb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod:
.file 3 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.0.0.15/src/Xamarin.iOS/external/corefx/src/Common/src/CoreLib/System/Tuple.cs"
.loc 3 35 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf90013a1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #808]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910043a0
.word 0x910103a0
.word 0xf9400ba0
.word 0xf90023a0
.word 0xb98023a0
.word 0xf9002fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800401
.word 0xd2800401
bl _p_6
.word 0xf9402fa2
.word 0xf9002ba0
.word 0x910103a1
.word 0xf94023a1
bl _p_42
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_45:
.text
ut_70:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_:
.file 4 "/Library/Frameworks/Xamarin.iOS.framework/Versions/12.0.0.15/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/runtime/compilerservices/AsyncMethodBuilder.cs"
.loc 4 459 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #824]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910223a0
.word 0xd2800000
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf90053a0
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e3a0
.word 0xf9400340
.word 0xf9001fa0
.word 0xf9400740
.word 0xf90023a0
.word 0xf9400b40
.word 0xf90027a0
.word 0xf9400f40
.word 0xf9002ba0
.word 0xf9401340
.word 0xf9002fa0
.word 0xf9401740
.word 0xf90033a0
.word 0xf9401b40
.word 0xf90037a0
.word 0xf9401f40
.word 0xf9003ba0
.word 0xf9402340
.word 0xf9003fa0
.word 0xf9402740
.word 0xf90043a0
.word 0x14000015
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xd29e6200
.word 0xf2a00020
.word 0xd29e6200
.word 0xf2a00020
bl _p_37
.word 0xaa0003e1
.word 0xd2801440
.word 0xf2a04000
.word 0xd2801440
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_31
.loc 4 466 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
.word 0xd2800000
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf90053a0
.loc 4 467 0
.word 0xf94013b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
bl _p_43
.loc 4 470 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
bl _p_44
.loc 4 471 0
.word 0xf94013b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_45
.loc 4 472 0
.word 0xf94013b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf90057bf
.word 0x94000005
.word 0xf94057a0
.word 0xb4000040
bl _p_46
.word 0x1400000e
.word 0xf90063be
.loc 4 475 0
.word 0xf94013b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x910223a0
bl _p_47
.loc 4 476 0
.word 0xf94013b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063be
.word 0xd61f03c0
.loc 4 477 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_46:
.text
ut_71:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_:
.loc 4 542 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xaa0003f8
.word 0xf90023a1
.word 0xf90027a2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #832]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf9005fbf
.word 0xd2800017
.word 0xd2800016
.word 0xf9402bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9005fbf
.loc 4 543 0
.word 0xf9402bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_48
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa1803f5
.word 0x350000c0
.word 0xaa1503e0
.word 0xd2800000
.word 0xaa1503f4
.word 0xd2800013
.word 0x14000010
.word 0xaa1503e0
.word 0xaa1803e0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
.word 0xaa1803e0
bl _p_18
.word 0xf9007ba0
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa1503f4
.word 0xaa0003f3
.word 0xaa1403e0
.word 0xaa1303e0
.word 0x9102e3a2
.word 0xaa1403e0
.word 0xaa1303e1
bl _p_49
.word 0xf9007ba0
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa0003f7
.loc 4 547 0
.word 0xf9402bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400300
.word 0xb5000860
.loc 4 551 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #584]
.word 0xaa1803e0
bl _p_18
.word 0xf9007fa0
.word 0xf9402bb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
.word 0xaa0003f6
.loc 4 556 0
.word 0xf9402bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf94027a0
.word 0x9101a3a1
.word 0xf9400001
.word 0xf90037a1
.word 0xf9400401
.word 0xf9003ba1
.word 0xf9400801
.word 0xf9003fa1
.word 0xf9400c01
.word 0xf90043a1
.word 0xf9401001
.word 0xf90047a1
.word 0xf9401401
.word 0xf9004ba1
.word 0xf9401801
.word 0xf9004fa1
.word 0xf9401c01
.word 0xf90053a1
.word 0xf9402001
.word 0xf90057a1
.word 0xf9402400
.word 0xf9005ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #840]
.word 0xd2800c01
.word 0xd2800c01
bl _p_6
.word 0x9101a3a1
.word 0xf9007ba0
.word 0x91004000
.word 0xd2800a02
.word 0xd2800a02
bl _mono_gc_wbarrier_range_copy
.word 0xf9407ba1
.word 0xf9405fa2
.word 0xaa1603e3
.word 0xaa1803e0
bl _p_50
.loc 4 559 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa1703e1
.word 0xaa1703e1
bl _p_51
.loc 4 560 0
.word 0xf9402bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf90063a0
.word 0xf94063a0
.word 0xf9007ba0
.loc 4 563 0
.word 0xf9402bb1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xd2800001
.word 0xd2800001
bl _p_52
.loc 4 564 0
.word 0xf9402bb1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
bl _p_30
.word 0xf90073a0
.word 0xf94073a0
.word 0xb4000060
.word 0xf94073a0
bl _p_31
.word 0x14000001
.loc 4 565 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf9402bb1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_47:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod:
.loc 3 219 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf90017a2

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #848]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.loc 3 221 0
.word 0xf9401bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910063a0
.word 0x910123a0
.word 0xf9400fa0
.word 0xf90027a0
.word 0x910123a0
.word 0x91004320
.word 0xf94027a1
.word 0xf9000001
.loc 3 222 0
.word 0xf9401bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb9802ba0
.word 0xb9001b20
.loc 3 223 0
.word 0xf9401bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_48:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1:
.loc 3 216 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #856]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x91004000
.word 0x910103a1
.word 0xf9400000
.word 0xf90023a0
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_49:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2:
.loc 3 217 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #864]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object:
.loc 3 227 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #872]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9002fa0
.word 0xf9400fa0
.word 0xf90027a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #880]
bl _p_53
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xf9402ba2
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xf9400063

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #888]
.word 0x92800af0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4b:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer:
.loc 3 232 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #896]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800017
.word 0xf94023b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000119
.word 0xf94023b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000086
.loc 3 234 0
.word 0xf94023b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903f6
.word 0xaa1903f5
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x1, [x16, #904]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xaa1503e0
.word 0xaa1503f7
.loc 3 236 0
.word 0xf94023b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000115
.loc 3 238 0
.word 0xf94023b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000065
.loc 3 241 0
.word 0xf94023b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x91004300
.word 0x910183a1
.word 0xf9400000
.word 0xf90033a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0x910183a1
.word 0xf9003fa0
.word 0x91004000
.word 0xf94033a1
.word 0xf9000001
.word 0xaa1703e0
.word 0x910042e0
.word 0x910163a1
.word 0xf9400000
.word 0xf9002fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0xaa0003e2
.word 0xf9403fa1
.word 0x910163a0
.word 0x91004040
.word 0xf9402fa3
.word 0xf9000003
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #920]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x34000580
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xb9801b00
.word 0xf90047a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800281
.word 0xd2800281
bl _p_6
.word 0xf94047a1
.word 0xb9001001
.word 0xf90043a0
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xf9003fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800281
.word 0xd2800281
bl _p_6
.word 0xaa0003e2
.word 0xf9403fa0
.word 0xf94043a1
.word 0xb9001040
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #920]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x14000003
.word 0xd2800000
.word 0xd2800000
.word 0xf94023b1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_4c:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object:
.loc 3 246 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #936]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9002fa0
.word 0xf9400fa0
.word 0xf90027a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #944]
bl _p_54
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xf9402ba2
.word 0xf9402fa3
.word 0xaa0303e0
.word 0xf9400063

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #952]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_4d:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer:
.loc 3 251 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #960]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800017
.word 0xd2800016
.word 0xf94027b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000119
.word 0xf94027b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x140000c1
.loc 3 253 0
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903f5
.word 0xaa1903f4
.word 0xeb1f033f
.word 0x54000160
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x1, [x16, #904]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800014
.word 0xaa1403e0
.word 0xaa1403f7
.loc 3 255 0
.word 0xf94027b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xb50005d4
.loc 3 257 0
.word 0xf94027b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2842aa0
.word 0xd2842aa0
bl _p_37
.word 0xf9003fa0
.word 0xaa1803e0
.word 0xf9400300
.word 0xf9400c00
.word 0xf90047a0
.word 0xf94027b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9402030
.word 0xd63f0200
.word 0xf90043a0
.word 0xf94027b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf94043a1
bl _p_55
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2843220
.word 0xd2843220
bl _p_37
.word 0xaa0003e2
.word 0xf9403ba1
.word 0xd2801420
.word 0xf2a04000
.word 0xd2801420
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_31
.loc 3 260 0
.word 0xf94027b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800016
.loc 3 262 0
.word 0xf94027b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x91004300
.word 0x9101a3a1
.word 0xf9400000
.word 0xf90037a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0x9101a3a1
.word 0xf90043a0
.word 0x91004000
.word 0xf94037a1
.word 0xf9000001
.word 0xaa1703e0
.word 0x910042e0
.word 0x910183a1
.word 0xf9400000
.word 0xf90033a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0xaa0003e2
.word 0xf94043a1
.word 0x910183a0
.word 0x91004040
.word 0xf94033a3
.word 0xf9000003
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #968]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xf9003fa0
.word 0xf94027b1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf9003ba0
.word 0xaa0003f6
.loc 3 264 0
.word 0xf94027b1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003e1
.word 0x34000100
.word 0xf94027b1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1603e0
.word 0x1400002f
.loc 3 266 0
.word 0xf94027b1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xb9801b00
.word 0xf90047a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800281
.word 0xd2800281
bl _p_6
.word 0xf94047a1
.word 0xb9001001
.word 0xf90043a0
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xf9003fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800281
.word 0xd2800281
bl _p_6
.word 0xaa0003e2
.word 0xf9403fa0
.word 0xf94043a1
.word 0xb9001040
.word 0xaa1a03e0
.word 0xf9400343

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #968]
.word 0x928010f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0x93407c00
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf94027b1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_4e:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode:
.loc 3 271 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #976]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90023a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #880]
bl _p_53
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xf94023a2
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #984]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4f:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer:
.loc 3 276 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #992]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0x91004320
.word 0x9100e3a1
.word 0xf9400000
.word 0xf9001fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0xaa0003e1
.word 0x9100e3a0
.word 0x91004020
.word 0xf9401fa2
.word 0xf9000002
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #1000]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf90027a0
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf9002fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800281
.word 0xd2800281
bl _p_6
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xb9001020
.word 0xaa1a03e0
.word 0xf9400342

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #1000]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0x93407c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9402ba1
bl _p_56
.word 0x93407c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_50:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString:
.loc 3 285 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1008]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #1016]
.word 0xd2800601
.word 0xd2800601
bl _p_6
.word 0xf90027a0
bl _p_57
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xaa0003f9
.loc 3 286 0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800500
.word 0xaa1903e0
.word 0xd2800501
.word 0x3940033e
bl _p_58
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.loc 3 287 0
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa2
.word 0xaa1903e1
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x15, [x16, #1024]
.word 0x928002f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_51:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder:
.loc 3 292 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1032]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0x91004320
.word 0x9100e3a1
.word 0xf9400000
.word 0xf9001fa0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #912]
.word 0xd2800301
.word 0xd2800301
bl _p_6
.word 0xaa0003e1
.word 0x9100e3a0
.word 0x91004020
.word 0xf9401fa2
.word 0xf9000002
.word 0xaa1a03e0
.word 0x3940035e
bl _p_59
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 3 293 0
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x1, [x16, #1040]
.word 0xaa1a03e0
.word 0x3940035e
bl _p_60
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.loc 3 294 0
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf90027a0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #928]
.word 0xd2800281
.word 0xd2800281
bl _p_6
.word 0xaa0003e1
.word 0xf94027a0
.word 0xb9001020
.word 0xaa1a03e0
.word 0x3940035e
bl _p_59
.word 0xf94013b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.loc 3 295 0
.word 0xf94013b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800520
.word 0xaa1a03e0
.word 0xd2800521
.word 0x3940035e
bl _p_58
.word 0xf94013b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.loc 3 296 0
.word 0xf94013b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9402030
.word 0xd63f0200
.word 0xf90023a0
.word 0xf94013b1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length
System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length:
.loc 3 302 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1048]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800040
.word 0xd2800040
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_53:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1056]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xb9400000
.word 0x34000140
bl _p_35
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_31
.word 0xf9403fa0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb5000500
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000240
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x1400003b
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x1400002c
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000589
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90047a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffb6b
.word 0xb9806ba0
.word 0xf9402bb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ea0
.word 0xaa1103e1
bl _p_36

Lme_54:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Plugin_Calendars_Abstractions_Calendar_get_Name
bl Plugin_Calendars_Abstractions_Calendar_set_Name_string
bl Plugin_Calendars_Abstractions_Calendar_get_Color
bl Plugin_Calendars_Abstractions_Calendar_set_Color_string
bl Plugin_Calendars_Abstractions_Calendar_get_ExternalID
bl Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string
bl Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar
bl Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool
bl Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents
bl Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool
bl Plugin_Calendars_Abstractions_Calendar_get_AccountName
bl Plugin_Calendars_Abstractions_Calendar_set_AccountName_string
bl Plugin_Calendars_Abstractions_Calendar__ctor
bl Plugin_Calendars_Abstractions_CalendarEvent_get_Name
bl Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string
bl Plugin_Calendars_Abstractions_CalendarEvent_get_Start
bl Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime
bl Plugin_Calendars_Abstractions_CalendarEvent_get_End
bl Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime
bl Plugin_Calendars_Abstractions_CalendarEvent_get_Location
bl Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string
bl Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay
bl Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool
bl Plugin_Calendars_Abstractions_CalendarEvent_get_Description
bl Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string
bl Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders
bl Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder
bl Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID
bl Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string
bl Plugin_Calendars_Abstractions_CalendarEvent_ToString
bl Plugin_Calendars_Abstractions_CalendarEvent__ctor
bl Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore
bl Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan
bl Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method
bl Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod
bl Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object
bl Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode
bl Plugin_Calendars_Abstractions_CalendarEventReminder__ctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string
bl Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext
bl Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
bl Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception
bl method_addresses
bl wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult
bl wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object
bl wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar
bl wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
bl wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
bl wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
bl wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
bl wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
bl System_Array_InternalArray__Insert_T_REF_int_T_REF
bl System_Array_InternalArray__RemoveAt_int
bl System_Array_InternalArray__IndexOf_T_REF_T_REF
bl System_Array_InternalArray__get_Item_T_REF_int
bl System_Array_InternalArray__set_Item_T_REF_int_T_REF
bl System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
bl System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder
bl System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length
bl wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 48,49,70,71
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_48
bl ut_49
bl ut_70
bl ut_71

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 0,13,12,31,0,68,14,64,157,8,158,7,68,13,29,13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31
	.byte 0,68,14,80,157,10,158,9,68,13,29,34,12,31,0,68,14,192,2,157,40,158,39,68,13,29,68,147,38,148,37,68
	.byte 149,36,150,35,68,151,34,152,33,68,153,32,154,31,29,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,149,16
	.byte 150,15,68,151,14,152,13,68,153,12,154,11,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10,16,12,31
	.byte 0,68,14,64,157,8,158,7,68,13,29,68,154,6,14,12,31,0,68,14,240,1,157,30,158,29,68,13,29,34,12,31
	.byte 0,68,14,208,2,157,42,158,41,68,13,29,68,147,40,148,39,68,149,38,150,37,68,151,36,152,35,68,153,34,154,33
	.byte 34,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,152,9,68,153
	.byte 8,154,7,34,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152
	.byte 11,68,153,10,154,9,29,12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,148,20,149,19,68,151,18,152,17,68
	.byte 153,16,154,15,18,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9,32,12,31,0,68,14,128,1,157
	.byte 16,158,15,68,13,29,68,148,14,149,13,68,150,12,151,11,68,152,10,153,9,68,154,8,13,12,31,0,68,14,96,157
	.byte 12,158,11,68,13,29,17,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,154,24,29,12,31,0,68,14,128,2
	.byte 157,32,158,31,68,13,29,68,147,30,148,29,68,149,28,150,27,68,151,26,152,25,16,12,31,0,68,14,80,157,10,158
	.byte 9,68,13,29,68,153,8,32,12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,148,16,149,15,68,150,14,151,13
	.byte 68,152,12,153,11,68,154,10,18,12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7

.text
	.align 4
plt:
mono_aot_Plugin_Calendars_Abstractions_plt:
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_1:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1072]
br x16
.word 1539
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEvent_get_Name
plt_Plugin_Calendars_Abstractions_CalendarEvent_get_Name:
_p_2:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1080]
br x16
.word 1547
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay
plt_Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay:
_p_3:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1088]
br x16
.word 1552
	.no_dead_strip plt_bool_ToString
plt_bool_ToString:
_p_4:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1096]
br x16
.word 1557
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEvent_get_Start
plt_Plugin_Calendars_Abstractions_CalendarEvent_get_Start:
_p_5:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1104]
br x16
.word 1560
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_6:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1112]
br x16
.word 1565
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEvent_get_End
plt_Plugin_Calendars_Abstractions_CalendarEvent_get_End:
_p_7:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1120]
br x16
.word 1573
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEvent_get_Location
plt_Plugin_Calendars_Abstractions_CalendarEvent_get_Location:
_p_8:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1128]
br x16
.word 1578
	.no_dead_strip plt_string_Concat_object__
plt_string_Concat_object__:
_p_9:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1136]
br x16
.word 1583
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore
plt_Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore:
_p_10:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1144]
br x16
.word 1586
	.no_dead_strip plt_System_TimeSpan_op_Equality_System_TimeSpan_System_TimeSpan
plt_System_TimeSpan_op_Equality_System_TimeSpan_System_TimeSpan:
_p_11:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1152]
br x16
.word 1591
	.no_dead_strip plt_Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method
plt_Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method:
_p_12:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1160]
br x16
.word 1594
	.no_dead_strip plt_System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
plt_System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod:
_p_13:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1168]
br x16
.word 1599
	.no_dead_strip plt_System_TimeSpan_FromMinutes_double
plt_System_TimeSpan_FromMinutes_double:
_p_14:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1176]
br x16
.word 1611
	.no_dead_strip plt_string_memset_byte__int_int
plt_string_memset_byte__int_int:
_p_15:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1184]
br x16
.word 1614
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Create
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Create:
_p_16:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1192]
br x16
.word 1617
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_:
_p_17:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1200]
br x16
.word 1628
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_get_Task
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_get_Task:
_p_18:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1208]
br x16
.word 1640
	.no_dead_strip plt_Plugin_Calendars_Abstractions_Calendar__ctor
plt_Plugin_Calendars_Abstractions_Calendar__ctor:
_p_19:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1216]
br x16
.word 1651
	.no_dead_strip plt_Plugin_Calendars_Abstractions_Calendar_set_Name_string
plt_Plugin_Calendars_Abstractions_Calendar_set_Name_string:
_p_20:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1224]
br x16
.word 1656
	.no_dead_strip plt_Plugin_Calendars_Abstractions_Calendar_set_Color_string
plt_Plugin_Calendars_Abstractions_Calendar_set_Color_string:
_p_21:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1232]
br x16
.word 1661
	.no_dead_strip plt_Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool
plt_Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool:
_p_22:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1240]
br x16
.word 1666
	.no_dead_strip plt_Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool
plt_Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool:
_p_23:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1248]
br x16
.word 1671
	.no_dead_strip plt_System_Threading_Tasks_Task_ConfigureAwait_bool
plt_System_Threading_Tasks_Task_ConfigureAwait_bool:
_p_24:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1256]
br x16
.word 1676
	.no_dead_strip plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_GetAwaiter
plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_GetAwaiter:
_p_25:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1264]
br x16
.word 1679
	.no_dead_strip plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_get_IsCompleted
plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_get_IsCompleted:
_p_26:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1272]
br x16
.word 1682
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_:
_p_27:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1280]
br x16
.word 1685
	.no_dead_strip plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_GetResult
plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_GetResult:
_p_28:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1288]
br x16
.word 1697
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_SetException_System_Exception
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_SetException_System_Exception:
_p_29:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1296]
br x16
.word 1700
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_30:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1304]
br x16
.word 1711
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_31:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1312]
br x16
.word 1750
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_SetResult_Plugin_Calendars_Abstractions_Calendar
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_SetResult_Plugin_Calendars_Abstractions_Calendar:
_p_32:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1320]
br x16
.word 1778
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
_p_33:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1328]
br x16
.word 1789
	.no_dead_strip plt_System_Exception__ctor_string_System_Exception
plt_System_Exception__ctor_string_System_Exception:
_p_34:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1336]
br x16
.word 1800
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_35:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1344]
br x16
.word 1803
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_36:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1352]
br x16
.word 1841
	.no_dead_strip plt__jit_icall_mono_helper_ldstr_mscorlib
plt__jit_icall_mono_helper_ldstr_mscorlib:
_p_37:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1360]
br x16
.word 1876
	.no_dead_strip plt_Locale_GetText_string
plt_Locale_GetText_string:
_p_38:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1368]
br x16
.word 1905
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_39:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1376]
br x16
.word 1924
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_40:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1384]
br x16
.word 1963
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_41:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1392]
br x16
.word 2002
	.no_dead_strip plt_System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
plt_System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod:
_p_42:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1400]
br x16
.word 2024
	.no_dead_strip plt_System_Runtime_CompilerServices_RuntimeHelpers_PrepareConstrainedRegions
plt_System_Runtime_CompilerServices_RuntimeHelpers_PrepareConstrainedRegions:
_p_43:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1408]
br x16
.word 2046
	.no_dead_strip plt_System_Threading_ExecutionContext_EstablishCopyOnWriteScope_System_Threading_ExecutionContextSwitcher_
plt_System_Threading_ExecutionContext_EstablishCopyOnWriteScope_System_Threading_ExecutionContextSwitcher_:
_p_44:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1416]
br x16
.word 2049
	.no_dead_strip plt_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext
plt_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext:
_p_45:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1424]
br x16
.word 2052
	.no_dead_strip plt__jit_icall_mono_thread_self_abort
plt__jit_icall_mono_thread_self_abort:
_p_46:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1432]
br x16
.word 2057
	.no_dead_strip plt_System_Threading_ExecutionContextSwitcher_Undo
plt_System_Threading_ExecutionContextSwitcher_Undo:
_p_47:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1440]
br x16
.word 2082
	.no_dead_strip plt_System_Threading_Tasks_AsyncCausalityTracer_get_LoggingOn
plt_System_Threading_Tasks_AsyncCausalityTracer_get_LoggingOn:
_p_48:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1448]
br x16
.word 2085
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_GetCompletionAction_System_Threading_Tasks_Task_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_GetCompletionAction_System_Threading_Tasks_Task_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_:
_p_49:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1456]
br x16
.word 2088
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_PostBoxInitialization_System_Runtime_CompilerServices_IAsyncStateMachine_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_System_Threading_Tasks_Task
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_PostBoxInitialization_System_Runtime_CompilerServices_IAsyncStateMachine_System_Runtime_CompilerServices_AsyncMethodBuilderCore_MoveNextRunner_System_Threading_Tasks_Task:
_p_50:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1464]
br x16
.word 2091
	.no_dead_strip plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_UnsafeOnCompleted_System_Action
plt_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_UnsafeOnCompleted_System_Action:
_p_51:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1472]
br x16
.word 2094
	.no_dead_strip plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_ThrowAsync_System_Exception_System_Threading_SynchronizationContext
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_ThrowAsync_System_Exception_System_Threading_SynchronizationContext:
_p_52:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1480]
br x16
.word 2097
	.no_dead_strip plt_System_Collections_Generic_EqualityComparer_1_object_get_Default
plt_System_Collections_Generic_EqualityComparer_1_object_get_Default:
_p_53:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1488]
br x16
.word 2100
	.no_dead_strip plt_System_Collections_Generic_Comparer_1_object_get_Default
plt_System_Collections_Generic_Comparer_1_object_get_Default:
_p_54:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1496]
br x16
.word 2119
	.no_dead_strip plt_SR_Format_string_object
plt_SR_Format_string_object:
_p_55:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1504]
br x16
.word 2138
	.no_dead_strip plt_System_Tuple_CombineHashCodes_int_int
plt_System_Tuple_CombineHashCodes_int_int:
_p_56:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1512]
br x16
.word 2140
	.no_dead_strip plt_System_Text_StringBuilder__ctor
plt_System_Text_StringBuilder__ctor:
_p_57:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1520]
br x16
.word 2143
	.no_dead_strip plt_System_Text_StringBuilder_Append_char
plt_System_Text_StringBuilder_Append_char:
_p_58:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1528]
br x16
.word 2146
	.no_dead_strip plt_System_Text_StringBuilder_Append_object
plt_System_Text_StringBuilder_Append_object:
_p_59:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1536]
br x16
.word 2149
	.no_dead_strip plt_System_Text_StringBuilder_Append_string
plt_System_Text_StringBuilder_Append_string:
_p_60:
adrp x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Calendars_Abstractions_got@PAGEOFF
ldr x16, [x16, #1544]
br x16
.word 2152
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Plugin_Calendars_Abstractions_got, 1552
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash
	.align 3
	.quad name_0
	.align 3
	.quad _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "BAE63829-745F-4FB4-9FF7-A35B5037F1A6"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Plugin.Calendars.Abstractions"
.data
	.align 3
_mono_aot_file_info:

	.long 144,0
	.align 3
	.quad mono_aot_Plugin_Calendars_Abstractions_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 133,1552,61,85,70,387000831,0,11356
	.long 128,8,8,8,0,25,13416,2048
	.long 1848,1376,0,1656,1816,1464,0,1104
	.long 136,2040,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
	.byte 164,3,90,138,75,237,233,168,185,101,140,251,232,63,73,123
	.globl _mono_aot_module_Plugin_Calendars_Abstractions_info
	.align 3
_mono_aot_module_Plugin_Calendars_Abstractions_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_3:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM7=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_2:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM11=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM12=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM13=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_0:

	.byte 5
	.asciz "Plugin_Calendars_Abstractions_Calendar"

	.byte 56,16
LDIFF_SYM16=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM17=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,16,6
	.asciz "<Color>k__BackingField"

LDIFF_SYM18=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM18
	.byte 2,35,24,6
	.asciz "<ExternalID>k__BackingField"

LDIFF_SYM19=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM19
	.byte 2,35,32,6
	.asciz "<CanEditCalendar>k__BackingField"

LDIFF_SYM20=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,48,6
	.asciz "<CanEditEvents>k__BackingField"

LDIFF_SYM21=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,49,6
	.asciz "<AccountName>k__BackingField"

LDIFF_SYM22=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,40,0,7
	.asciz "Plugin_Calendars_Abstractions_Calendar"

LDIFF_SYM23=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM24=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM25=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:get_Name"
	.asciz "Plugin_Calendars_Abstractions_Calendar_get_Name"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_get_Name
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM26=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM27=Lfde0_end - Lfde0_start
	.long LDIFF_SYM27
Lfde0_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_get_Name

LDIFF_SYM28=Lme_0 - Plugin_Calendars_Abstractions_Calendar_get_Name
	.long LDIFF_SYM28
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:set_Name"
	.asciz "Plugin_Calendars_Abstractions_Calendar_set_Name_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_set_Name_string
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM29=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM30=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM31=Lfde1_end - Lfde1_start
	.long LDIFF_SYM31
Lfde1_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_set_Name_string

LDIFF_SYM32=Lme_1 - Plugin_Calendars_Abstractions_Calendar_set_Name_string
	.long LDIFF_SYM32
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:get_Color"
	.asciz "Plugin_Calendars_Abstractions_Calendar_get_Color"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_get_Color
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM33=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM34=Lfde2_end - Lfde2_start
	.long LDIFF_SYM34
Lfde2_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_get_Color

LDIFF_SYM35=Lme_2 - Plugin_Calendars_Abstractions_Calendar_get_Color
	.long LDIFF_SYM35
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:set_Color"
	.asciz "Plugin_Calendars_Abstractions_Calendar_set_Color_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_set_Color_string
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM36=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM37=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM38=Lfde3_end - Lfde3_start
	.long LDIFF_SYM38
Lfde3_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_set_Color_string

LDIFF_SYM39=Lme_3 - Plugin_Calendars_Abstractions_Calendar_set_Color_string
	.long LDIFF_SYM39
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:get_ExternalID"
	.asciz "Plugin_Calendars_Abstractions_Calendar_get_ExternalID"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_get_ExternalID
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM40=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM41=Lfde4_end - Lfde4_start
	.long LDIFF_SYM41
Lfde4_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_get_ExternalID

LDIFF_SYM42=Lme_4 - Plugin_Calendars_Abstractions_Calendar_get_ExternalID
	.long LDIFF_SYM42
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:set_ExternalID"
	.asciz "Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM43=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM44=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM45=Lfde5_end - Lfde5_start
	.long LDIFF_SYM45
Lfde5_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string

LDIFF_SYM46=Lme_5 - Plugin_Calendars_Abstractions_Calendar_set_ExternalID_string
	.long LDIFF_SYM46
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:get_CanEditCalendar"
	.asciz "Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM47=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM48=Lfde6_end - Lfde6_start
	.long LDIFF_SYM48
Lfde6_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar

LDIFF_SYM49=Lme_6 - Plugin_Calendars_Abstractions_Calendar_get_CanEditCalendar
	.long LDIFF_SYM49
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:set_CanEditCalendar"
	.asciz "Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM50=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM51=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM52=Lfde7_end - Lfde7_start
	.long LDIFF_SYM52
Lfde7_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool

LDIFF_SYM53=Lme_7 - Plugin_Calendars_Abstractions_Calendar_set_CanEditCalendar_bool
	.long LDIFF_SYM53
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:get_CanEditEvents"
	.asciz "Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM54=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM55=Lfde8_end - Lfde8_start
	.long LDIFF_SYM55
Lfde8_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents

LDIFF_SYM56=Lme_8 - Plugin_Calendars_Abstractions_Calendar_get_CanEditEvents
	.long LDIFF_SYM56
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:set_CanEditEvents"
	.asciz "Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM57=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM58=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM59=Lfde9_end - Lfde9_start
	.long LDIFF_SYM59
Lfde9_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool

LDIFF_SYM60=Lme_9 - Plugin_Calendars_Abstractions_Calendar_set_CanEditEvents_bool
	.long LDIFF_SYM60
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:get_AccountName"
	.asciz "Plugin_Calendars_Abstractions_Calendar_get_AccountName"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_get_AccountName
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM61=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM62=Lfde10_end - Lfde10_start
	.long LDIFF_SYM62
Lfde10_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_get_AccountName

LDIFF_SYM63=Lme_a - Plugin_Calendars_Abstractions_Calendar_get_AccountName
	.long LDIFF_SYM63
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:set_AccountName"
	.asciz "Plugin_Calendars_Abstractions_Calendar_set_AccountName_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar_set_AccountName_string
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM64=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM65=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM66=Lfde11_end - Lfde11_start
	.long LDIFF_SYM66
Lfde11_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar_set_AccountName_string

LDIFF_SYM67=Lme_b - Plugin_Calendars_Abstractions_Calendar_set_AccountName_string
	.long LDIFF_SYM67
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.Calendar:.ctor"
	.asciz "Plugin_Calendars_Abstractions_Calendar__ctor"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_Calendar__ctor
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM68=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM69=Lfde12_end - Lfde12_start
	.long LDIFF_SYM69
Lfde12_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_Calendar__ctor

LDIFF_SYM70=Lme_c - Plugin_Calendars_Abstractions_Calendar__ctor
	.long LDIFF_SYM70
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_5:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM71=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM72=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM72
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM73=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM73
LTDIE_4:

	.byte 5
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent"

	.byte 80,16
LDIFF_SYM74=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,0,6
	.asciz "<Name>k__BackingField"

LDIFF_SYM75=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,16,6
	.asciz "<Start>k__BackingField"

LDIFF_SYM76=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,56,6
	.asciz "<End>k__BackingField"

LDIFF_SYM77=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,64,6
	.asciz "<Location>k__BackingField"

LDIFF_SYM78=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,24,6
	.asciz "<AllDay>k__BackingField"

LDIFF_SYM79=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,72,6
	.asciz "<Description>k__BackingField"

LDIFF_SYM80=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,32,6
	.asciz "<Reminders>k__BackingField"

LDIFF_SYM81=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,40,6
	.asciz "<ExternalID>k__BackingField"

LDIFF_SYM82=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,48,0,7
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent"

LDIFF_SYM83=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM84=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM85=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_Name"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_Name"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Name
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM86=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM87=Lfde13_end - Lfde13_start
	.long LDIFF_SYM87
Lfde13_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Name

LDIFF_SYM88=Lme_d - Plugin_Calendars_Abstractions_CalendarEvent_get_Name
	.long LDIFF_SYM88
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_Name"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM89=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM90=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM91=Lfde14_end - Lfde14_start
	.long LDIFF_SYM91
Lfde14_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string

LDIFF_SYM92=Lme_e - Plugin_Calendars_Abstractions_CalendarEvent_set_Name_string
	.long LDIFF_SYM92
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_Start"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_Start"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Start
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM93=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM94=Lfde15_end - Lfde15_start
	.long LDIFF_SYM94
Lfde15_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Start

LDIFF_SYM95=Lme_f - Plugin_Calendars_Abstractions_CalendarEvent_get_Start
	.long LDIFF_SYM95
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_Start"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime
	.quad Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM96=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM97=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM98=Lfde16_end - Lfde16_start
	.long LDIFF_SYM98
Lfde16_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime

LDIFF_SYM99=Lme_10 - Plugin_Calendars_Abstractions_CalendarEvent_set_Start_System_DateTime
	.long LDIFF_SYM99
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_End"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_End"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_End
	.quad Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM100=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM101=Lfde17_end - Lfde17_start
	.long LDIFF_SYM101
Lfde17_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_End

LDIFF_SYM102=Lme_11 - Plugin_Calendars_Abstractions_CalendarEvent_get_End
	.long LDIFF_SYM102
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_End"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM103=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM105=Lfde18_end - Lfde18_start
	.long LDIFF_SYM105
Lfde18_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime

LDIFF_SYM106=Lme_12 - Plugin_Calendars_Abstractions_CalendarEvent_set_End_System_DateTime
	.long LDIFF_SYM106
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_Location"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_Location"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Location
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM107=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM108=Lfde19_end - Lfde19_start
	.long LDIFF_SYM108
Lfde19_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Location

LDIFF_SYM109=Lme_13 - Plugin_Calendars_Abstractions_CalendarEvent_get_Location
	.long LDIFF_SYM109
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_Location"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM110=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM111=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM112=Lfde20_end - Lfde20_start
	.long LDIFF_SYM112
Lfde20_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string

LDIFF_SYM113=Lme_14 - Plugin_Calendars_Abstractions_CalendarEvent_set_Location_string
	.long LDIFF_SYM113
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_AllDay"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM114=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM115=Lfde21_end - Lfde21_start
	.long LDIFF_SYM115
Lfde21_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay

LDIFF_SYM116=Lme_15 - Plugin_Calendars_Abstractions_CalendarEvent_get_AllDay
	.long LDIFF_SYM116
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_AllDay"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM117=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM118=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM119=Lfde22_end - Lfde22_start
	.long LDIFF_SYM119
Lfde22_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool

LDIFF_SYM120=Lme_16 - Plugin_Calendars_Abstractions_CalendarEvent_set_AllDay_bool
	.long LDIFF_SYM120
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_Description"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_Description"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Description
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM121=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM122=Lfde23_end - Lfde23_start
	.long LDIFF_SYM122
Lfde23_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Description

LDIFF_SYM123=Lme_17 - Plugin_Calendars_Abstractions_CalendarEvent_get_Description
	.long LDIFF_SYM123
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_Description"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM124=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM125=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM126=Lfde24_end - Lfde24_start
	.long LDIFF_SYM126
Lfde24_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string

LDIFF_SYM127=Lme_18 - Plugin_Calendars_Abstractions_CalendarEvent_set_Description_string
	.long LDIFF_SYM127
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_Reminders"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM128=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM129=Lfde25_end - Lfde25_start
	.long LDIFF_SYM129
Lfde25_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders

LDIFF_SYM130=Lme_19 - Plugin_Calendars_Abstractions_CalendarEvent_get_Reminders
	.long LDIFF_SYM130
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_Reminders"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM131=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM132=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM133=Lfde26_end - Lfde26_start
	.long LDIFF_SYM133
Lfde26_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder

LDIFF_SYM134=Lme_1a - Plugin_Calendars_Abstractions_CalendarEvent_set_Reminders_System_Collections_Generic_IList_1_Plugin_Calendars_Abstractions_CalendarEventReminder
	.long LDIFF_SYM134
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:get_ExternalID"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM135=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM136=Lfde27_end - Lfde27_start
	.long LDIFF_SYM136
Lfde27_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID

LDIFF_SYM137=Lme_1b - Plugin_Calendars_Abstractions_CalendarEvent_get_ExternalID
	.long LDIFF_SYM137
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:set_ExternalID"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM138=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM139=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM140=Lfde28_end - Lfde28_start
	.long LDIFF_SYM140
Lfde28_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string

LDIFF_SYM141=Lme_1c - Plugin_Calendars_Abstractions_CalendarEvent_set_ExternalID_string
	.long LDIFF_SYM141
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:ToString"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent_ToString"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent_ToString
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM142=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM143=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 3,141,248,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM144=Lfde29_end - Lfde29_start
	.long LDIFF_SYM144
Lfde29_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent_ToString

LDIFF_SYM145=Lme_1d - Plugin_Calendars_Abstractions_CalendarEvent_ToString
	.long LDIFF_SYM145
	.long 0
	.byte 12,31,0,68,14,192,2,157,40,158,39,68,13,29,68,147,38,148,37,68,149,36,150,35,68,151,34,152,33,68,153,32
	.byte 154,31
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEvent:.ctor"
	.asciz "Plugin_Calendars_Abstractions_CalendarEvent__ctor"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEvent__ctor
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM146=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM147=Lfde30_end - Lfde30_start
	.long LDIFF_SYM147
Lfde30_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEvent__ctor

LDIFF_SYM148=Lme_1e - Plugin_Calendars_Abstractions_CalendarEvent__ctor
	.long LDIFF_SYM148
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_7:

	.byte 8
	.asciz "Plugin_Calendars_Abstractions_CalendarReminderMethod"

	.byte 4
LDIFF_SYM149=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 9
	.asciz "Default"

	.byte 0,9
	.asciz "Alert"

	.byte 1,9
	.asciz "Email"

	.byte 2,9
	.asciz "Sms"

	.byte 3,0,7
	.asciz "Plugin_Calendars_Abstractions_CalendarReminderMethod"

LDIFF_SYM150=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_6:

	.byte 5
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder"

	.byte 32,16
LDIFF_SYM153=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,6
	.asciz "<TimeBefore>k__BackingField"

LDIFF_SYM154=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,16,6
	.asciz "<Method>k__BackingField"

LDIFF_SYM155=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,24,0,7
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder"

LDIFF_SYM156=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM157=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM158=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:get_TimeBefore"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM159=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM160=Lfde31_end - Lfde31_start
	.long LDIFF_SYM160
Lfde31_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore

LDIFF_SYM161=Lme_1f - Plugin_Calendars_Abstractions_CalendarEventReminder_get_TimeBefore
	.long LDIFF_SYM161
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:set_TimeBefore"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM162=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM163=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM164=Lfde32_end - Lfde32_start
	.long LDIFF_SYM164
Lfde32_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan

LDIFF_SYM165=Lme_20 - Plugin_Calendars_Abstractions_CalendarEventReminder_set_TimeBefore_System_TimeSpan
	.long LDIFF_SYM165
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:get_Method"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM166=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM167=Lfde33_end - Lfde33_start
	.long LDIFF_SYM167
Lfde33_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method

LDIFF_SYM168=Lme_21 - Plugin_Calendars_Abstractions_CalendarEventReminder_get_Method
	.long LDIFF_SYM168
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:set_Method"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM169=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM170=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM171=Lfde34_end - Lfde34_start
	.long LDIFF_SYM171
Lfde34_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod

LDIFF_SYM172=Lme_22 - Plugin_Calendars_Abstractions_CalendarEventReminder_set_Method_Plugin_Calendars_Abstractions_CalendarReminderMethod
	.long LDIFF_SYM172
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:Equals"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM173=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 1,105,3
	.asciz "obj"

LDIFF_SYM174=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM175=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM176=Lfde35_end - Lfde35_start
	.long LDIFF_SYM176
Lfde35_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object

LDIFF_SYM177=Lme_23 - Plugin_Calendars_Abstractions_CalendarEventReminder_Equals_object
	.long LDIFF_SYM177
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,149,16,150,15,68,151,14,152,13,68,153,12,154,11
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:GetHashCode"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM178=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM179=Lfde36_end - Lfde36_start
	.long LDIFF_SYM179
Lfde36_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode

LDIFF_SYM180=Lme_24 - Plugin_Calendars_Abstractions_CalendarEventReminder_GetHashCode
	.long LDIFF_SYM180
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Calendars.Abstractions.CalendarEventReminder:.ctor"
	.asciz "Plugin_Calendars_Abstractions_CalendarEventReminder__ctor"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder__ctor
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM181=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM182=Lfde37_end - Lfde37_start
	.long LDIFF_SYM182
Lfde37_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_CalendarEventReminder__ctor

LDIFF_SYM183=Lme_25 - Plugin_Calendars_Abstractions_CalendarEventReminder__ctor
	.long LDIFF_SYM183
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_8:

	.byte 17
	.asciz "Plugin_Calendars_Abstractions_ICalendars"

	.byte 16,7
	.asciz "Plugin_Calendars_Abstractions_ICalendars"

LDIFF_SYM184=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM185=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM186=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.ICalendarsExtensions:CreateCalendarAsync"
	.asciz "Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "api"

LDIFF_SYM187=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,141,16,3
	.asciz "calendarName"

LDIFF_SYM188=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,141,24,3
	.asciz "color"

LDIFF_SYM189=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,141,32,11
	.asciz "V_0"

LDIFF_SYM190=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 3,141,136,1,11
	.asciz "V_1"

LDIFF_SYM191=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 3,141,240,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM192=Lfde38_end - Lfde38_start
	.long LDIFF_SYM192
Lfde38_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string

LDIFF_SYM193=Lme_2f - Plugin_Calendars_Abstractions_ICalendarsExtensions_CreateCalendarAsync_Plugin_Calendars_Abstractions_ICalendars_string_string
	.long LDIFF_SYM193
	.long 0
	.byte 12,31,0,68,14,240,1,157,30,158,29,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_10:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM194=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM195=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM196=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM196
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM197=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM197
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM198=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM198
LTDIE_9:

	.byte 5
	.asciz "_<CreateCalendarAsync>d__0"

	.byte 96,16
LDIFF_SYM199=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,0,6
	.asciz "<>1__state"

LDIFF_SYM200=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,0,6
	.asciz "<>t__builder"

LDIFF_SYM201=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,35,8,6
	.asciz "calendarName"

LDIFF_SYM202=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,32,6
	.asciz "color"

LDIFF_SYM203=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,35,40,6
	.asciz "api"

LDIFF_SYM204=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,35,48,6
	.asciz "<calendar>5__2"

LDIFF_SYM205=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM205
	.byte 2,35,56,6
	.asciz "<>u__1"

LDIFF_SYM206=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,64,0,7
	.asciz "_<CreateCalendarAsync>d__0"

LDIFF_SYM207=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_12:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM210=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM211=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM212=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_14:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM213=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM214=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM215=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_17:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM216=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM217=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM218=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM218
LTDIE_18:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM219=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM220=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM221=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM222=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM223=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_19:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM224=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM225=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM226=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM227=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM227
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM228=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_16:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM229=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM230=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM231=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM232=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,64,6
	.asciz "_freeList"

LDIFF_SYM233=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,68,6
	.asciz "_freeCount"

LDIFF_SYM234=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM234
	.byte 2,35,72,6
	.asciz "_version"

LDIFF_SYM235=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,35,76,6
	.asciz "_comparer"

LDIFF_SYM236=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM237=LTDIE_18_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM237
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM238=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM239=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM240=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM240
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM241=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM242=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_20:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 16,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM243=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM244=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM245=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM245
LTDIE_22:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 16,16
LDIFF_SYM246=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM247=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM248=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM249=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM249
LTDIE_21:

	.byte 5
	.asciz "System_Type"

	.byte 24,16
LDIFF_SYM250=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM251=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,16,0,7
	.asciz "System_Type"

LDIFF_SYM252=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM252
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM253=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM254=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_15:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 88,16
LDIFF_SYM255=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM256=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,16,6
	.asciz "m_data"

LDIFF_SYM257=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,24,6
	.asciz "m_types"

LDIFF_SYM258=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,32,6
	.asciz "m_nameToIndex"

LDIFF_SYM259=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,40,6
	.asciz "m_currMember"

LDIFF_SYM260=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,80,6
	.asciz "m_converter"

LDIFF_SYM261=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,48,6
	.asciz "m_fullTypeName"

LDIFF_SYM262=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,35,56,6
	.asciz "m_assemName"

LDIFF_SYM263=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,35,64,6
	.asciz "objectType"

LDIFF_SYM264=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 2,35,72,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM265=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,84,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM266=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM266
	.byte 2,35,85,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM267=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,35,86,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM268=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM269=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM269
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM270=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM270
LTDIE_24:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 24,16
LDIFF_SYM271=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM271
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM272=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM273=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM273
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM274=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM274
LTDIE_29:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 16,16
LDIFF_SYM275=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM275
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM276=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM277=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM278=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_28:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 16,16
LDIFF_SYM279=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM280=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM280
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM281=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM281
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM282=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM282
LTDIE_27:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 16,16
LDIFF_SYM283=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM284=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM284
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM285=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM286=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM286
LTDIE_26:

	.byte 5
	.asciz "System_Reflection_MonoCMethod"

	.byte 40,16
LDIFF_SYM287=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM287
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM288=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,16,6
	.asciz "name"

LDIFF_SYM289=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,35,24,6
	.asciz "reftype"

LDIFF_SYM290=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,35,32,0,7
	.asciz "System_Reflection_MonoCMethod"

LDIFF_SYM291=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM292=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM293=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_25:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 32,16
LDIFF_SYM294=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM295=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,16,6
	.asciz "default_ctor"

LDIFF_SYM296=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,24,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM297=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM297
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM298=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM298
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM299=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM299
LTDIE_23:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 48,16
LDIFF_SYM300=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM301=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,35,24,6
	.asciz "GenericCache"

LDIFF_SYM302=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,32,6
	.asciz "m_serializationCtor"

LDIFF_SYM303=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 2,35,40,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM304=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM304
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM305=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM305
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM306=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_33:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 16,16
LDIFF_SYM307=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM308=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM308
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM309=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM309
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM310=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM310
LTDIE_34:

	.byte 5
	.asciz "System_DelegateData"

	.byte 40,16
LDIFF_SYM311=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM311
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM312=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM313=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM314=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,35,32,0,7
	.asciz "System_DelegateData"

LDIFF_SYM315=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM315
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM316=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM316
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM317=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM317
LTDIE_32:

	.byte 5
	.asciz "System_Delegate"

	.byte 104,16
LDIFF_SYM318=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM319=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM320=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM321=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM322=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM323=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM324=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM325=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM326=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM327=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM328=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM329=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,35,96,0,7
	.asciz "System_Delegate"

LDIFF_SYM330=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM331=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM332=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_31:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 112,16
LDIFF_SYM333=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM334=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM334
	.byte 2,35,104,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM335=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM335
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM336=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM336
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM337=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM337
LTDIE_30:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 112,16
LDIFF_SYM338=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM339=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM339
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM340=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM340
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM341=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM341
LTDIE_13:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 56,16
LDIFF_SYM342=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM342
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM343=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,16,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM344=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,24,6
	.asciz "m_realObject"

LDIFF_SYM345=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,32,6
	.asciz "m_realType"

LDIFF_SYM346=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,40,6
	.asciz "SerializeObjectState"

LDIFF_SYM347=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM348=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM348
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM349=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM350=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_11:

	.byte 5
	.asciz "System_Exception"

	.byte 136,1,16
LDIFF_SYM351=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM352=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM353=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM354=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM355=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM356=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM357=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM358=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM359=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM360=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM361=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM362=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM363=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM364=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM364
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM365=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM366=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 3,35,128,1,0,7
	.asciz "System_Exception"

LDIFF_SYM367=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM367
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM368=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM368
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM369=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.ICalendarsExtensions/<CreateCalendarAsync>d__0:MoveNext"
	.asciz "Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM370=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 3,141,208,0,11
	.asciz "V_0"

LDIFF_SYM371=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 1,106,11
	.asciz "V_1"

LDIFF_SYM372=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 1,105,11
	.asciz "V_2"

LDIFF_SYM373=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 3,141,192,1,11
	.asciz "V_3"

LDIFF_SYM374=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 3,141,176,1,11
	.asciz "V_4"

LDIFF_SYM375=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 3,141,208,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM376=Lfde39_end - Lfde39_start
	.long LDIFF_SYM376
Lfde39_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext

LDIFF_SYM377=Lme_30 - Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_MoveNext
	.long LDIFF_SYM377
	.long 0
	.byte 12,31,0,68,14,208,2,157,42,158,41,68,13,29,68,147,40,148,39,68,149,38,150,37,68,151,36,152,35,68,153,34
	.byte 154,33
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_35:

	.byte 17
	.asciz "System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 16,7
	.asciz "System_Runtime_CompilerServices_IAsyncStateMachine"

LDIFF_SYM378=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM378
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM379=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM379
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM380=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.ICalendarsExtensions/<CreateCalendarAsync>d__0:SetStateMachine"
	.asciz "Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM381=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,141,16,3
	.asciz "stateMachine"

LDIFF_SYM382=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM383=Lfde40_end - Lfde40_start
	.long LDIFF_SYM383
Lfde40_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine

LDIFF_SYM384=Lme_31 - Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.long LDIFF_SYM384
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_36:

	.byte 5
	.asciz "Plugin_Calendars_Abstractions_PlatformException"

	.byte 136,1,16
LDIFF_SYM385=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 2,35,0,0,7
	.asciz "Plugin_Calendars_Abstractions_PlatformException"

LDIFF_SYM386=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM386
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM387=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM387
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM388=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM388
	.byte 2
	.asciz "Plugin.Calendars.Abstractions.PlatformException:.ctor"
	.asciz "Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception"

	.byte 0,0
	.quad Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM389=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 2,141,16,3
	.asciz "message"

LDIFF_SYM390=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 2,141,24,3
	.asciz "innerException"

LDIFF_SYM391=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM392=Lfde41_end - Lfde41_start
	.long LDIFF_SYM392
Lfde41_start:

	.long 0
	.align 3
	.quad Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception

LDIFF_SYM393=Lme_32 - Plugin_Calendars_Abstractions_PlatformException__ctor_string_System_Exception
	.long LDIFF_SYM393
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_37:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM394=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM395=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM395
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM396=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM396
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM397=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM397
LTDIE_38:

	.byte 5
	.asciz "System_Array"

	.byte 16,16
LDIFF_SYM398=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM399=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM399
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM400=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM400
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM401=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<Plugin.Calendars.Abstractions.Calendar>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM402=LTDIE_37_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM403=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM404=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM405=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM406=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM407=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM408=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM409=Lfde42_end - Lfde42_start
	.long LDIFF_SYM409
Lfde42_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult

LDIFF_SYM410=Lme_34 - wrapper_delegate_invoke_System_Func_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult
	.long LDIFF_SYM410
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,152,9,68,153,8
	.byte 154,7
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_39:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM411=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM412=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM413=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM413
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM414=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<object,_Plugin.Calendars.Abstractions.Calendar>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM415=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM416=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM417=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM417
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM418=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM418
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM419=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM420=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM421=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM422=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM423=Lfde43_end - Lfde43_start
	.long LDIFF_SYM423
Lfde43_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object

LDIFF_SYM424=Lme_35 - wrapper_delegate_invoke_System_Func_2_object_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_object
	.long LDIFF_SYM424
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_40:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM425=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM426=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM426
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM427=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM427
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM428=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM428
LTDIE_43:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
LDIFF_SYM429=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM430=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM430
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM431=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM431
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM432=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM432
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM433=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM433
LTDIE_47:

	.byte 8
	.asciz "System_Threading_SynchronizationContextProperties"

	.byte 4
LDIFF_SYM434=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "RequireWaitNotification"

	.byte 1,0,7
	.asciz "System_Threading_SynchronizationContextProperties"

LDIFF_SYM435=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM435
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM436=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM436
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM437=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM437
LTDIE_46:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 20,16
LDIFF_SYM438=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM438
	.byte 2,35,0,6
	.asciz "_props"

LDIFF_SYM439=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,16,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM440=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM440
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM441=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM441
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM442=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM442
LTDIE_50:

	.byte 5
	.asciz "System_Single"

	.byte 20,16
LDIFF_SYM443=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM444=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,16,0,7
	.asciz "System_Single"

LDIFF_SYM445=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM445
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM446=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM446
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM447=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM447
LTDIE_51:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 16,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM448=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM448
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM449=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM449
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM450=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM450
LTDIE_52:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 16,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM451=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM451
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM452=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM452
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM453=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM453
LTDIE_49:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 80,16
LDIFF_SYM454=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM455=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 2,35,16,6
	.asciz "count"

LDIFF_SYM456=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 2,35,56,6
	.asciz "occupancy"

LDIFF_SYM457=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 2,35,60,6
	.asciz "loadsize"

LDIFF_SYM458=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,64,6
	.asciz "loadFactor"

LDIFF_SYM459=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,68,6
	.asciz "version"

LDIFF_SYM460=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,72,6
	.asciz "isWriterInProgress"

LDIFF_SYM461=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,76,6
	.asciz "keys"

LDIFF_SYM462=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,24,6
	.asciz "values"

LDIFF_SYM463=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,32,6
	.asciz "_keycomparer"

LDIFF_SYM464=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM464
	.byte 2,35,40,6
	.asciz "_syncRoot"

LDIFF_SYM465=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM465
	.byte 2,35,48,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM466=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM466
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM467=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM467
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM468=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM468
LTDIE_53:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 16,16
LDIFF_SYM469=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM470=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM470
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM471=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM471
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM472=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM472
LTDIE_54:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 16,16
LDIFF_SYM473=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM474=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM474
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM475=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM475
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM476=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_48:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 56,16
LDIFF_SYM477=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM477
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM478=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,35,16,6
	.asciz "m_RemotingData"

LDIFF_SYM479=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,24,6
	.asciz "m_SecurityData"

LDIFF_SYM480=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,32,6
	.asciz "m_HostContext"

LDIFF_SYM481=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM481
	.byte 2,35,40,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM482=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2,35,48,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM483=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM483
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM484=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM484
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM485=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM485
LTDIE_55:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 16,16
LDIFF_SYM486=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM487=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM487
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM488=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM488
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM489=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM489
LTDIE_56:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM490=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "IsNewCapture"

	.byte 1,9
	.asciz "IsFlowSuppressed"

	.byte 2,9
	.asciz "IsPreAllocatedDefault"

	.byte 4,0,7
	.asciz "_Flags"

LDIFF_SYM491=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM491
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM492=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM492
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM493=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM493
LTDIE_58:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 16,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM494=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM494
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM495=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM495
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM496=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM496
LTDIE_59:

	.byte 5
	.asciz "_KeyCollection"

	.byte 24,16
LDIFF_SYM497=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM498=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,35,16,0,7
	.asciz "_KeyCollection"

LDIFF_SYM499=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM499
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM500=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM500
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM501=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM501
LTDIE_60:

	.byte 5
	.asciz "_ValueCollection"

	.byte 24,16
LDIFF_SYM502=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 2,35,0,6
	.asciz "_dictionary"

LDIFF_SYM503=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 2,35,16,0,7
	.asciz "_ValueCollection"

LDIFF_SYM504=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM504
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM505=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM505
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM506=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM506
LTDIE_57:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 80,16
LDIFF_SYM507=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,35,0,6
	.asciz "_buckets"

LDIFF_SYM508=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 2,35,16,6
	.asciz "_entries"

LDIFF_SYM509=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 2,35,24,6
	.asciz "_count"

LDIFF_SYM510=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 2,35,64,6
	.asciz "_freeList"

LDIFF_SYM511=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 2,35,68,6
	.asciz "_freeCount"

LDIFF_SYM512=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 2,35,72,6
	.asciz "_version"

LDIFF_SYM513=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2,35,76,6
	.asciz "_comparer"

LDIFF_SYM514=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 2,35,32,6
	.asciz "_keys"

LDIFF_SYM515=LTDIE_59_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 2,35,40,6
	.asciz "_values"

LDIFF_SYM516=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM517=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 2,35,56,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM518=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM518
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM519=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM519
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM520=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM520
LTDIE_61:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM521=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM522=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM523=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM524=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM525=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM526=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM526
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM527=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM527
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM528=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM528
LTDIE_45:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 72,16
LDIFF_SYM529=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM530=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM530
	.byte 2,35,16,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM531=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,35,24,6
	.asciz "_logicalCallContext"

LDIFF_SYM532=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,35,32,6
	.asciz "_illogicalCallContext"

LDIFF_SYM533=LTDIE_55_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,35,40,6
	.asciz "_flags"

LDIFF_SYM534=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,35,64,6
	.asciz "_localValues"

LDIFF_SYM535=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,35,48,6
	.asciz "_localChangeNotifications"

LDIFF_SYM536=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,35,56,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM537=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM537
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM538=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM538
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM539=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM539
LTDIE_66:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 24,16
LDIFF_SYM540=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM541=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2,35,16,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM542=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM542
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM543=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM543
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM544=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM544
LTDIE_70:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
LDIFF_SYM545=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM546=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM546
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM547=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM547
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM548=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM548
LTDIE_69:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
LDIFF_SYM549=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM550=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM550
	.byte 2,35,16,6
	.asciz "_state"

LDIFF_SYM551=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 2,35,24,6
	.asciz "_ownsHandle"

LDIFF_SYM552=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 2,35,28,6
	.asciz "_fullyInitialized"

LDIFF_SYM553=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,35,29,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM554=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM554
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM555=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM555
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM556=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM556
LTDIE_68:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
LDIFF_SYM557=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM558=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM558
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM559=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM559
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM560=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM560
LTDIE_67:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
LDIFF_SYM561=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM561
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM562=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM562
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM563=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM564=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM564
LTDIE_65:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 48,16
LDIFF_SYM565=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,35,0,6
	.asciz "waitHandle"

LDIFF_SYM566=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,35,24,6
	.asciz "safeWaitHandle"

LDIFF_SYM567=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2,35,32,6
	.asciz "hasThreadAffinity"

LDIFF_SYM568=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,35,40,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM569=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM569
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM570=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM570
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM571=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM571
LTDIE_64:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 48,16
LDIFF_SYM572=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM573=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM573
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM574=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM574
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM575=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_63:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 48,16
LDIFF_SYM576=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM576
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM577=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM578=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM578
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM579=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_62:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 40,16
LDIFF_SYM580=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM580
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM581=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM581
	.byte 2,35,16,6
	.asciz "m_eventObj"

LDIFF_SYM582=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 2,35,24,6
	.asciz "m_combinedState"

LDIFF_SYM583=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM583
	.byte 2,35,32,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM584=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM584
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM585=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM585
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM586=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM586
LTDIE_72:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM587=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM587
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM588=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM588
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM589=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM589
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM590=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM591=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM591
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM592=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM593=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM593
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM594=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_73:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
LDIFF_SYM595=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM595
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM596=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM596
	.byte 2,35,16,6
	.asciz "m_stackTrace"

LDIFF_SYM597=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,24,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM598=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM598
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM599=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM599
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM600=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM600
LTDIE_71:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
LDIFF_SYM601=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM602=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,16,6
	.asciz "m_faultExceptions"

LDIFF_SYM603=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 2,35,24,6
	.asciz "m_cancellationException"

LDIFF_SYM604=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,35,32,6
	.asciz "m_isHandled"

LDIFF_SYM605=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM606=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM606
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM607=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM607
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM608=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM608
LTDIE_74:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 40,16
LDIFF_SYM609=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM610=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,16,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM611=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM611
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM612=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM612
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM613=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM613
LTDIE_75:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 40,16
LDIFF_SYM614=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM615=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM616=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,35,32,6
	.asciz "_version"

LDIFF_SYM617=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM617
	.byte 2,35,36,6
	.asciz "_syncRoot"

LDIFF_SYM618=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM618
	.byte 2,35,24,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM619=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM619
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM620=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM620
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM621=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM621
LTDIE_44:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 72,16
LDIFF_SYM622=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM622
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM623=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM623
	.byte 2,35,16,6
	.asciz "m_completionEvent"

LDIFF_SYM624=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM624
	.byte 2,35,24,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM625=LTDIE_71_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 2,35,32,6
	.asciz "m_cancellationToken"

LDIFF_SYM626=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM626
	.byte 2,35,40,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM627=LTDIE_74_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM627
	.byte 2,35,48,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM628=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM628
	.byte 2,35,64,6
	.asciz "m_completionCountdown"

LDIFF_SYM629=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM629
	.byte 2,35,68,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM630=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM630
	.byte 2,35,56,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM631=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM631
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM632=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM632
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM633=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM633
LTDIE_42:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 72,16
LDIFF_SYM634=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM635=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 2,35,64,6
	.asciz "m_action"

LDIFF_SYM636=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM636
	.byte 2,35,16,6
	.asciz "m_stateObject"

LDIFF_SYM637=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 2,35,24,6
	.asciz "m_taskScheduler"

LDIFF_SYM638=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 2,35,32,6
	.asciz "m_parent"

LDIFF_SYM639=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 2,35,40,6
	.asciz "m_stateFlags"

LDIFF_SYM640=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 2,35,68,6
	.asciz "m_continuationObject"

LDIFF_SYM641=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM641
	.byte 2,35,48,6
	.asciz "m_contingentProperties"

LDIFF_SYM642=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM642
	.byte 2,35,56,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM643=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM643
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM644=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM644
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM645=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM645
LTDIE_41:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM646=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM646
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM647=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM647
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM648=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM648
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM649=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM649
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM650=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM650
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.Threading.Tasks.Task`1<Plugin.Calendars.Abstractions.Calendar>>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar
	.quad Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM651=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM652=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM653=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM654=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM654
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM655=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM655
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM656=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM657=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM657
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM658=Lfde44_end - Lfde44_start
	.long LDIFF_SYM658
Lfde44_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar

LDIFF_SYM659=Lme_36 - wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_void_T_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar
	.long LDIFF_SYM659
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,152,9,68,153,8
	.byte 154,7
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_76:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM660=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM660
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM661=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM661
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM662=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM662
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM663=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM663
LTDIE_77:

	.byte 17
	.asciz "System_IAsyncResult"

	.byte 16,7
	.asciz "System_IAsyncResult"

LDIFF_SYM664=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM664
LTDIE_77_POINTER:

	.byte 13
LDIFF_SYM665=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM665
LTDIE_77_REFERENCE:

	.byte 14
LDIFF_SYM666=LTDIE_77 - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.IAsyncResult,_Plugin.Calendars.Abstractions.Calendar>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult
	.quad Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM667=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM667
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM668=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM668
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM669=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM670=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM670
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM671=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM671
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM672=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM672
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM673=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM673
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM674=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM674
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM675=Lfde45_end - Lfde45_start
	.long LDIFF_SYM675
Lfde45_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult

LDIFF_SYM676=Lme_37 - wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_IAsyncResult
	.long LDIFF_SYM676
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_78:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM677=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM677
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM678=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM678
LTDIE_78_POINTER:

	.byte 13
LDIFF_SYM679=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM679
LTDIE_78_REFERENCE:

	.byte 14
LDIFF_SYM680=LTDIE_78 - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.IAsyncResult>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
	.quad Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM681=LTDIE_78_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM681
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM682=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM682
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM683=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM683
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM684=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM685=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM685
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM686=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM686
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM687=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM688=Lfde46_end - Lfde46_start
	.long LDIFF_SYM688
Lfde46_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult

LDIFF_SYM689=Lme_38 - wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
	.long LDIFF_SYM689
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,152,9,68,153,8
	.byte 154,7
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_79:

	.byte 5
	.asciz "System_Func`3"

	.byte 112,16
LDIFF_SYM690=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM690
	.byte 2,35,0,0,7
	.asciz "System_Func`3"

LDIFF_SYM691=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM691
LTDIE_79_POINTER:

	.byte 13
LDIFF_SYM692=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM692
LTDIE_79_REFERENCE:

	.byte 14
LDIFF_SYM693=LTDIE_79 - Ldebug_info_start
	.long LDIFF_SYM693
LTDIE_80:

	.byte 5
	.asciz "System_AsyncCallback"

	.byte 112,16
LDIFF_SYM694=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 2,35,0,0,7
	.asciz "System_AsyncCallback"

LDIFF_SYM695=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM695
LTDIE_80_POINTER:

	.byte 13
LDIFF_SYM696=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM696
LTDIE_80_REFERENCE:

	.byte 14
LDIFF_SYM697=LTDIE_80 - Ldebug_info_start
	.long LDIFF_SYM697
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`3<System.AsyncCallback,_object,_System.IAsyncResult>:invoke_TResult_T1_T2"
	.asciz "wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
	.quad Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM698=LTDIE_79_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM698
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM699=LTDIE_80_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM700=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM701=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM701
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM702=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM703=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM704=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM704
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM705=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM705
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM706=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM707=Lfde47_end - Lfde47_start
	.long LDIFF_SYM707
Lfde47_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object

LDIFF_SYM708=Lme_39 - wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
	.long LDIFF_SYM708
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_81:

	.byte 5
	.asciz "System_Func`1"

	.byte 112,16
LDIFF_SYM709=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM709
	.byte 2,35,0,0,7
	.asciz "System_Func`1"

LDIFF_SYM710=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM710
LTDIE_81_POINTER:

	.byte 13
LDIFF_SYM711=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM711
LTDIE_81_REFERENCE:

	.byte 14
LDIFF_SYM712=LTDIE_81 - Ldebug_info_start
	.long LDIFF_SYM712
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`1<System.Threading.Tasks.Task>:invoke_TResult"
	.asciz "wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
	.quad Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM713=LTDIE_81_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM713
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM714=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 1,105,11
	.asciz "V_1"

LDIFF_SYM715=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM715
	.byte 1,104,11
	.asciz "V_2"

LDIFF_SYM716=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 1,103,11
	.asciz "V_3"

LDIFF_SYM717=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM717
	.byte 1,102,11
	.asciz "V_4"

LDIFF_SYM718=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM718
	.byte 1,101,11
	.asciz "V_5"

LDIFF_SYM719=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM720=Lfde48_end - Lfde48_start
	.long LDIFF_SYM720
Lfde48_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult

LDIFF_SYM721=Lme_3a - wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
	.long LDIFF_SYM721
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,152,9,68,153,8
	.byte 154,7
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_82:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM722=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM722
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM723=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM723
LTDIE_82_POINTER:

	.byte 13
LDIFF_SYM724=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM724
LTDIE_82_REFERENCE:

	.byte 14
LDIFF_SYM725=LTDIE_82 - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<object,_System.Threading.Tasks.Task>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
	.quad Lme_3b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM726=LTDIE_82_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM727=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM727
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM728=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM728
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM729=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM729
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM730=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM730
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM731=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM731
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM732=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM732
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM733=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM734=Lfde49_end - Lfde49_start
	.long LDIFF_SYM734
Lfde49_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object

LDIFF_SYM735=Lme_3b - wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
	.long LDIFF_SYM735
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde49_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_83:

	.byte 5
	.asciz "System_Action`1"

	.byte 112,16
LDIFF_SYM736=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM736
	.byte 2,35,0,0,7
	.asciz "System_Action`1"

LDIFF_SYM737=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM737
LTDIE_83_POINTER:

	.byte 13
LDIFF_SYM738=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM738
LTDIE_83_REFERENCE:

	.byte 14
LDIFF_SYM739=LTDIE_83 - Ldebug_info_start
	.long LDIFF_SYM739
LTDIE_84:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 80,16
LDIFF_SYM740=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM740
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM741=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM741
	.byte 2,35,72,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM742=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM742
LTDIE_84_POINTER:

	.byte 13
LDIFF_SYM743=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM743
LTDIE_84_REFERENCE:

	.byte 14
LDIFF_SYM744=LTDIE_84 - Ldebug_info_start
	.long LDIFF_SYM744
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Action`1<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>>:invoke_void_T"
	.asciz "wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM745=LTDIE_83_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM745
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM746=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM746
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM747=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM747
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM748=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM748
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM749=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM749
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM750=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM750
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM751=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM751
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM752=Lfde50_end - Lfde50_start
	.long LDIFF_SYM752
Lfde50_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM753=Lme_3c - wrapper_delegate_invoke_System_Action_1_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_void_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM753
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,151,10,152,9,68,153,8
	.byte 154,7
	.align 3
Lfde50_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_85:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM754=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM754
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM755=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM755
LTDIE_85_POINTER:

	.byte 13
LDIFF_SYM756=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM756
LTDIE_85_REFERENCE:

	.byte 14
LDIFF_SYM757=LTDIE_85 - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.IAsyncResult,_System.Threading.Tasks.Task>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
	.quad Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM758=LTDIE_85_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM758
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM759=LTDIE_77_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM759
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM760=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM760
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM761=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM761
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM762=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM762
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM763=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM763
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM764=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM765=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM766=Lfde51_end - Lfde51_start
	.long LDIFF_SYM766
Lfde51_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult

LDIFF_SYM767=Lme_3d - wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
	.long LDIFF_SYM767
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde51_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_86:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM768=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM768
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM769=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM769
LTDIE_86_POINTER:

	.byte 13
LDIFF_SYM770=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM770
LTDIE_86_REFERENCE:

	.byte 14
LDIFF_SYM771=LTDIE_86 - Ldebug_info_start
	.long LDIFF_SYM771
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>,_System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM772=LTDIE_86_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM772
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM773=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM773
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM774=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM775=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM776=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM777=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM778=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM779=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM779
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM780=Lfde52_end - Lfde52_start
	.long LDIFF_SYM780
Lfde52_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM781=Lme_3e - wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM781
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde52_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_87:

	.byte 5
	.asciz "System_Func`2"

	.byte 112,16
LDIFF_SYM782=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 2,35,0,0,7
	.asciz "System_Func`2"

LDIFF_SYM783=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM783
LTDIE_87_POINTER:

	.byte 13
LDIFF_SYM784=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM784
LTDIE_87_REFERENCE:

	.byte 14
LDIFF_SYM785=LTDIE_87 - Ldebug_info_start
	.long LDIFF_SYM785
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Func`2<System.Threading.Tasks.Task`1<System.Threading.Tasks.Task>,_System.Threading.Tasks.Task`1<Plugin.Calendars.Abstractions.Calendar>>:invoke_TResult_T"
	.asciz "wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.quad Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM786=LTDIE_87_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM786
	.byte 1,105,3
	.asciz "param0"

LDIFF_SYM787=LTDIE_84_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM788=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 1,104,11
	.asciz "V_1"

LDIFF_SYM789=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM789
	.byte 1,103,11
	.asciz "V_2"

LDIFF_SYM790=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM790
	.byte 1,102,11
	.asciz "V_3"

LDIFF_SYM791=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM791
	.byte 1,101,11
	.asciz "V_4"

LDIFF_SYM792=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM792
	.byte 1,100,11
	.asciz "V_5"

LDIFF_SYM793=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM793
	.byte 1,99,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM794=Lfde53_end - Lfde53_start
	.long LDIFF_SYM794
Lfde53_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task

LDIFF_SYM795=Lme_3f - wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_Plugin_Calendars_Abstractions_Calendar_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
	.long LDIFF_SYM795
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde53_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__Insert<T_REF>"
	.asciz "System_Array_InternalArray__Insert_T_REF_int_T_REF"

	.byte 1,139,1
	.quad System_Array_InternalArray__Insert_T_REF_int_T_REF
	.quad Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM796=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM796
	.byte 2,141,16,3
	.asciz "index"

LDIFF_SYM797=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM797
	.byte 2,141,24,3
	.asciz "item"

LDIFF_SYM798=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM798
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM799=Lfde54_end - Lfde54_start
	.long LDIFF_SYM799
Lfde54_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__Insert_T_REF_int_T_REF

LDIFF_SYM800=Lme_40 - System_Array_InternalArray__Insert_T_REF_int_T_REF
	.long LDIFF_SYM800
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde54_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__RemoveAt"
	.asciz "System_Array_InternalArray__RemoveAt_int"

	.byte 1,144,1
	.quad System_Array_InternalArray__RemoveAt_int
	.quad Lme_41

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM801=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM801
	.byte 2,141,16,3
	.asciz "index"

LDIFF_SYM802=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM802
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM803=Lfde55_end - Lfde55_start
	.long LDIFF_SYM803
Lfde55_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__RemoveAt_int

LDIFF_SYM804=Lme_41 - System_Array_InternalArray__RemoveAt_int
	.long LDIFF_SYM804
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde55_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__IndexOf<T_REF>"
	.asciz "System_Array_InternalArray__IndexOf_T_REF_T_REF"

	.byte 1,149,1
	.quad System_Array_InternalArray__IndexOf_T_REF_T_REF
	.quad Lme_42

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM805=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM805
	.byte 1,105,3
	.asciz "item"

LDIFF_SYM806=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM806
	.byte 1,106,11
	.asciz "length"

LDIFF_SYM807=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM807
	.byte 1,104,11
	.asciz "i"

LDIFF_SYM808=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM808
	.byte 1,103,11
	.asciz "value"

LDIFF_SYM809=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM809
	.byte 3,141,224,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM810=Lfde56_end - Lfde56_start
	.long LDIFF_SYM810
Lfde56_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__IndexOf_T_REF_T_REF

LDIFF_SYM811=Lme_42 - System_Array_InternalArray__IndexOf_T_REF_T_REF
	.long LDIFF_SYM811
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,148,20,149,19,68,151,18,152,17,68,153,16,154,15
	.align 3
Lfde56_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__get_Item<T_REF>"
	.asciz "System_Array_InternalArray__get_Item_T_REF_int"

	.byte 1,176,1
	.quad System_Array_InternalArray__get_Item_T_REF_int
	.quad Lme_43

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM812=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM812
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM813=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM813
	.byte 1,106,11
	.asciz "value"

LDIFF_SYM814=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM814
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM815=Lfde57_end - Lfde57_start
	.long LDIFF_SYM815
Lfde57_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__get_Item_T_REF_int

LDIFF_SYM816=Lme_43 - System_Array_InternalArray__get_Item_T_REF_int
	.long LDIFF_SYM816
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde57_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Array:InternalArray__set_Item<T_REF>"
	.asciz "System_Array_InternalArray__set_Item_T_REF_int_T_REF"

	.byte 1,186,1
	.quad System_Array_InternalArray__set_Item_T_REF_int_T_REF
	.quad Lme_44

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM817=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM817
	.byte 1,105,3
	.asciz "index"

LDIFF_SYM818=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM818
	.byte 1,106,3
	.asciz "item"

LDIFF_SYM819=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM819
	.byte 3,141,200,0,11
	.asciz "oarray"

LDIFF_SYM820=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM820
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM821=Lfde58_end - Lfde58_start
	.long LDIFF_SYM821
Lfde58_start:

	.long 0
	.align 3
	.quad System_Array_InternalArray__set_Item_T_REF_int_T_REF

LDIFF_SYM822=Lme_44 - System_Array_InternalArray__set_Item_T_REF_int_T_REF
	.long LDIFF_SYM822
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,148,14,149,13,68,150,12,151,11,68,152,10,153,9,68,154,8
	.align 3
Lfde58_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple:Create<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>"
	.asciz "System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod"

	.byte 2,35
	.quad System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
	.quad Lme_45

	.byte 2,118,16,3
	.asciz "item1"

LDIFF_SYM823=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM823
	.byte 2,141,16,3
	.asciz "item2"

LDIFF_SYM824=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM824
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM825=Lfde59_end - Lfde59_start
	.long LDIFF_SYM825
Lfde59_start:

	.long 0
	.align 3
	.quad System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod

LDIFF_SYM826=Lme_45 - System_Tuple_Create_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
	.long LDIFF_SYM826
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde59_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_88:

	.byte 5
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder`1"

	.byte 40,16
LDIFF_SYM827=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM827
	.byte 2,35,0,6
	.asciz "m_coreState"

LDIFF_SYM828=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM828
	.byte 2,35,16,6
	.asciz "m_task"

LDIFF_SYM829=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM829
	.byte 2,35,32,0,7
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder`1"

LDIFF_SYM830=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM830
LTDIE_88_POINTER:

	.byte 13
LDIFF_SYM831=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM831
LTDIE_88_REFERENCE:

	.byte 14
LDIFF_SYM832=LTDIE_88 - Ldebug_info_start
	.long LDIFF_SYM832
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<Plugin.Calendars.Abstractions.Calendar>:Start<Plugin.Calendars.Abstractions.ICalendarsExtensions/<CreateCalendarAsync>d__0>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_"

	.byte 3,203,3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
	.quad Lme_46

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM833=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM833
	.byte 2,141,24,3
	.asciz "stateMachine"

LDIFF_SYM834=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM834
	.byte 1,106,11
	.asciz "ecs"

LDIFF_SYM835=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM835
	.byte 3,141,136,1,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM836=Lfde60_end - Lfde60_start
	.long LDIFF_SYM836
Lfde60_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_

LDIFF_SYM837=Lme_46 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_Start_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
	.long LDIFF_SYM837
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,154,24
	.align 3
Lfde60_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_89:

	.byte 5
	.asciz "_ConfiguredTaskAwaiter"

	.byte 32,16
LDIFF_SYM838=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM838
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM839=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM839
	.byte 2,35,0,6
	.asciz "m_continueOnCapturedContext"

LDIFF_SYM840=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM840
	.byte 2,35,8,0,7
	.asciz "_ConfiguredTaskAwaiter"

LDIFF_SYM841=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM841
LTDIE_89_POINTER:

	.byte 13
LDIFF_SYM842=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM842
LTDIE_89_REFERENCE:

	.byte 14
LDIFF_SYM843=LTDIE_89 - Ldebug_info_start
	.long LDIFF_SYM843
LTDIE_90:

	.byte 5
	.asciz "_MoveNextRunner"

	.byte 32,16
LDIFF_SYM844=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM844
	.byte 2,35,0,6
	.asciz "m_context"

LDIFF_SYM845=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM845
	.byte 2,35,16,6
	.asciz "m_stateMachine"

LDIFF_SYM846=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM846
	.byte 2,35,24,0,7
	.asciz "_MoveNextRunner"

LDIFF_SYM847=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM847
LTDIE_90_POINTER:

	.byte 13
LDIFF_SYM848=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM848
LTDIE_90_REFERENCE:

	.byte 14
LDIFF_SYM849=LTDIE_90 - Ldebug_info_start
	.long LDIFF_SYM849
LTDIE_91:

	.byte 5
	.asciz "System_Action"

	.byte 112,16
LDIFF_SYM850=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM850
	.byte 2,35,0,0,7
	.asciz "System_Action"

LDIFF_SYM851=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM851
LTDIE_91_POINTER:

	.byte 13
LDIFF_SYM852=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM852
LTDIE_91_REFERENCE:

	.byte 14
LDIFF_SYM853=LTDIE_91 - Ldebug_info_start
	.long LDIFF_SYM853
	.byte 2
	.asciz "System.Runtime.CompilerServices.AsyncTaskMethodBuilder`1<Plugin.Calendars.Abstractions.Calendar>:AwaitUnsafeOnCompleted<System.Runtime.CompilerServices.ConfiguredTaskAwaitable/ConfiguredTaskAwaiter,_Plugin.Calendars.Abstractions.ICalendarsExtensions/<CreateCalendarAsync>d__0>"
	.asciz "System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_"

	.byte 3,158,4
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
	.quad Lme_47

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM854=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM854
	.byte 1,104,3
	.asciz "awaiter"

LDIFF_SYM855=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM855
	.byte 3,141,192,0,3
	.asciz "stateMachine"

LDIFF_SYM856=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM856
	.byte 3,141,200,0,11
	.asciz "runnerToInitialize"

LDIFF_SYM857=LTDIE_90_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM857
	.byte 3,141,184,1,11
	.asciz "continuation"

LDIFF_SYM858=LTDIE_91_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM858
	.byte 1,103,11
	.asciz "builtTask"

LDIFF_SYM859=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM859
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM860=Lfde61_end - Lfde61_start
	.long LDIFF_SYM860
Lfde61_start:

	.long 0
	.align 3
	.quad System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_

LDIFF_SYM861=Lme_47 - System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_Plugin_Calendars_Abstractions_Calendar_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter_Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_System_Runtime_CompilerServices_ConfiguredTaskAwaitable_ConfiguredTaskAwaiter__Plugin_Calendars_Abstractions_ICalendarsExtensions__CreateCalendarAsyncd__0_
	.long LDIFF_SYM861
	.long 0
	.byte 12,31,0,68,14,128,2,157,32,158,31,68,13,29,68,147,30,148,29,68,149,28,150,27,68,151,26,152,25
	.align 3
Lfde61_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_92:

	.byte 5
	.asciz "System_Tuple`2"

	.byte 32,16
LDIFF_SYM862=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM862
	.byte 2,35,0,6
	.asciz "m_Item1"

LDIFF_SYM863=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM863
	.byte 2,35,16,6
	.asciz "m_Item2"

LDIFF_SYM864=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM864
	.byte 2,35,24,0,7
	.asciz "System_Tuple`2"

LDIFF_SYM865=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM865
LTDIE_92_POINTER:

	.byte 13
LDIFF_SYM866=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM866
LTDIE_92_REFERENCE:

	.byte 14
LDIFF_SYM867=LTDIE_92 - Ldebug_info_start
	.long LDIFF_SYM867
	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:.ctor"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod"

	.byte 2,219,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
	.quad Lme_48

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM868=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM868
	.byte 1,105,3
	.asciz "item1"

LDIFF_SYM869=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM869
	.byte 2,141,24,3
	.asciz "item2"

LDIFF_SYM870=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM870
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM871=Lfde62_end - Lfde62_start
	.long LDIFF_SYM871
Lfde62_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod

LDIFF_SYM872=Lme_48 - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod__ctor_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod
	.long LDIFF_SYM872
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde62_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:get_Item1"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1"

	.byte 2,216,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1
	.quad Lme_49

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM873=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM873
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM874=Lfde63_end - Lfde63_start
	.long LDIFF_SYM874
Lfde63_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1

LDIFF_SYM875=Lme_49 - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item1
	.long LDIFF_SYM875
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde63_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:get_Item2"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2"

	.byte 2,217,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2
	.quad Lme_4a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM876=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM876
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM877=Lfde64_end - Lfde64_start
	.long LDIFF_SYM877
Lfde64_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2

LDIFF_SYM878=Lme_4a - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_get_Item2
	.long LDIFF_SYM878
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde64_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:Equals"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object"

	.byte 2,227,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object
	.quad Lme_4b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM879=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM879
	.byte 2,141,16,3
	.asciz "obj"

LDIFF_SYM880=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM880
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM881=Lfde65_end - Lfde65_start
	.long LDIFF_SYM881
Lfde65_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object

LDIFF_SYM882=Lme_4b - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_Equals_object
	.long LDIFF_SYM882
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde65_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:System.Collections.IStructuralEquatable.Equals"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer"

	.byte 2,232,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
	.quad Lme_4c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM883=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM883
	.byte 1,104,3
	.asciz "other"

LDIFF_SYM884=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM884
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM885=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM885
	.byte 1,106,11
	.asciz "objTuple"

LDIFF_SYM886=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM886
	.byte 1,103,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM887=Lfde66_end - Lfde66_start
	.long LDIFF_SYM887
Lfde66_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer

LDIFF_SYM888=Lme_4c - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_Equals_object_System_Collections_IEqualityComparer
	.long LDIFF_SYM888
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,149,16,150,15,68,151,14,152,13,68,153,12,154,11
	.align 3
Lfde66_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:System.IComparable.CompareTo"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object"

	.byte 2,246,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object
	.quad Lme_4d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM889=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM889
	.byte 2,141,16,3
	.asciz "obj"

LDIFF_SYM890=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM890
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM891=Lfde67_end - Lfde67_start
	.long LDIFF_SYM891
Lfde67_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object

LDIFF_SYM892=Lme_4d - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_IComparable_CompareTo_object
	.long LDIFF_SYM892
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.align 3
Lfde67_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_93:

	.byte 17
	.asciz "System_Collections_IComparer"

	.byte 16,7
	.asciz "System_Collections_IComparer"

LDIFF_SYM893=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM893
LTDIE_93_POINTER:

	.byte 13
LDIFF_SYM894=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM894
LTDIE_93_REFERENCE:

	.byte 14
LDIFF_SYM895=LTDIE_93 - Ldebug_info_start
	.long LDIFF_SYM895
	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:System.Collections.IStructuralComparable.CompareTo"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer"

	.byte 2,251,1
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
	.quad Lme_4e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM896=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM896
	.byte 1,104,3
	.asciz "other"

LDIFF_SYM897=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM897
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM898=LTDIE_93_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM898
	.byte 1,106,11
	.asciz "objTuple"

LDIFF_SYM899=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM899
	.byte 1,103,11
	.asciz "c"

LDIFF_SYM900=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM900
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM901=Lfde68_end - Lfde68_start
	.long LDIFF_SYM901
Lfde68_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer

LDIFF_SYM902=Lme_4e - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralComparable_CompareTo_object_System_Collections_IComparer
	.long LDIFF_SYM902
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,148,16,149,15,68,150,14,151,13,68,152,12,153,11,68,154,10
	.align 3
Lfde68_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:GetHashCode"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode"

	.byte 2,143,2
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode
	.quad Lme_4f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM903=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM903
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM904=Lfde69_end - Lfde69_start
	.long LDIFF_SYM904
Lfde69_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode

LDIFF_SYM905=Lme_4f - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_GetHashCode
	.long LDIFF_SYM905
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde69_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:System.Collections.IStructuralEquatable.GetHashCode"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer"

	.byte 2,148,2
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
	.quad Lme_50

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM906=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM906
	.byte 1,105,3
	.asciz "comparer"

LDIFF_SYM907=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM907
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM908=Lfde70_end - Lfde70_start
	.long LDIFF_SYM908
Lfde70_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer

LDIFF_SYM909=Lme_50 - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Collections_IStructuralEquatable_GetHashCode_System_Collections_IEqualityComparer
	.long LDIFF_SYM909
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10,154,9
	.align 3
Lfde70_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_94:

	.byte 5
	.asciz "System_Text_StringBuilder"

	.byte 48,16
LDIFF_SYM910=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM910
	.byte 2,35,0,6
	.asciz "m_ChunkChars"

LDIFF_SYM911=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM911
	.byte 2,35,16,6
	.asciz "m_ChunkPrevious"

LDIFF_SYM912=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM912
	.byte 2,35,24,6
	.asciz "m_ChunkLength"

LDIFF_SYM913=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM913
	.byte 2,35,32,6
	.asciz "m_ChunkOffset"

LDIFF_SYM914=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM914
	.byte 2,35,36,6
	.asciz "m_MaxCapacity"

LDIFF_SYM915=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM915
	.byte 2,35,40,0,7
	.asciz "System_Text_StringBuilder"

LDIFF_SYM916=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM916
LTDIE_94_POINTER:

	.byte 13
LDIFF_SYM917=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM917
LTDIE_94_REFERENCE:

	.byte 14
LDIFF_SYM918=LTDIE_94 - Ldebug_info_start
	.long LDIFF_SYM918
	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:ToString"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString"

	.byte 2,157,2
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString
	.quad Lme_51

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM919=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM919
	.byte 2,141,24,11
	.asciz "sb"

LDIFF_SYM920=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM920
	.byte 1,105,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM921=Lfde71_end - Lfde71_start
	.long LDIFF_SYM921
Lfde71_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString

LDIFF_SYM922=Lme_51 - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_ToString
	.long LDIFF_SYM922
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8
	.align 3
Lfde71_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:System.ITupleInternal.ToString"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder"

	.byte 2,164,2
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder
	.quad Lme_52

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM923=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM923
	.byte 1,105,3
	.asciz "sb"

LDIFF_SYM924=LTDIE_94_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM924
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM925=Lfde72_end - Lfde72_start
	.long LDIFF_SYM925
Lfde72_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder

LDIFF_SYM926=Lme_52 - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_ITupleInternal_ToString_System_Text_StringBuilder
	.long LDIFF_SYM926
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,153,8,154,7
	.align 3
Lfde72_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Tuple`2<System.TimeSpan,_Plugin.Calendars.Abstractions.CalendarReminderMethod>:System.Runtime.CompilerServices.ITuple.get_Length"
	.asciz "System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length"

	.byte 2,174,2
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length
	.quad Lme_53

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM927=LTDIE_92_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM927
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM928=Lfde73_end - Lfde73_start
	.long LDIFF_SYM928
Lfde73_start:

	.long 0
	.align 3
	.quad System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length

LDIFF_SYM929=Lme_53 - System_Tuple_2_System_TimeSpan_Plugin_Calendars_Abstractions_CalendarReminderMethod_System_Runtime_CompilerServices_ITuple_get_Length
	.long LDIFF_SYM929
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde73_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_95:

	.byte 5
	.asciz "System_Comparison`1"

	.byte 112,16
LDIFF_SYM930=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM930
	.byte 2,35,0,0,7
	.asciz "System_Comparison`1"

LDIFF_SYM931=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM931
LTDIE_95_POINTER:

	.byte 13
LDIFF_SYM932=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM932
LTDIE_95_REFERENCE:

	.byte 14
LDIFF_SYM933=LTDIE_95 - Ldebug_info_start
	.long LDIFF_SYM933
	.byte 2
	.asciz "(wrapper_delegate-invoke)_System.Comparison`1<object>:invoke_int_T_T"
	.asciz "wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object"

	.byte 0,0
	.quad wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
	.quad Lme_54

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM934=LTDIE_95_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM934
	.byte 1,104,3
	.asciz "param0"

LDIFF_SYM935=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM935
	.byte 1,105,3
	.asciz "param1"

LDIFF_SYM936=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM936
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM937=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM937
	.byte 1,103,11
	.asciz "V_1"

LDIFF_SYM938=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM938
	.byte 1,102,11
	.asciz "V_2"

LDIFF_SYM939=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM939
	.byte 1,101,11
	.asciz "V_3"

LDIFF_SYM940=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM940
	.byte 1,100,11
	.asciz "V_4"

LDIFF_SYM941=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM941
	.byte 1,99,11
	.asciz "V_5"

LDIFF_SYM942=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM942
	.byte 3,141,232,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM943=Lfde74_end - Lfde74_start
	.long LDIFF_SYM943
Lfde74_start:

	.long 0
	.align 3
	.quad wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object

LDIFF_SYM944=Lme_54 - wrapper_delegate_invoke_System_Comparison_1_object_invoke_int_T_T_object_object
	.long LDIFF_SYM944
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29,68,147,16,148,15,68,149,14,150,13,68,151,12,152,11,68,153,10
	.byte 154,9
	.align 3
Lfde74_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
