#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Source/FreeRTOS/Common/PollQ.c Source/FreeRTOS/Common/integer.c Source/FreeRTOS/MemMang/heap_4.c Source/FreeRTOS/portable/PIC18F/port.c Source/FreeRTOS/croutine.c Source/FreeRTOS/event_groups.c Source/FreeRTOS/list.c Source/FreeRTOS/stream_buffer.c Source/FreeRTOS/tasks.c Source/FreeRTOS/timers.c Source/FreeRTOS/queue.c Source/ParTest/ParTest.c Source/serial/serial.c Source/main1.c Source/uart_main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1 ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1 ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1 ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1 ${OBJECTDIR}/Source/FreeRTOS/croutine.p1 ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1 ${OBJECTDIR}/Source/FreeRTOS/list.p1 ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1 ${OBJECTDIR}/Source/FreeRTOS/tasks.p1 ${OBJECTDIR}/Source/FreeRTOS/timers.p1 ${OBJECTDIR}/Source/FreeRTOS/queue.p1 ${OBJECTDIR}/Source/ParTest/ParTest.p1 ${OBJECTDIR}/Source/serial/serial.p1 ${OBJECTDIR}/Source/main1.p1 ${OBJECTDIR}/Source/uart_main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d ${OBJECTDIR}/Source/FreeRTOS/list.p1.d ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d ${OBJECTDIR}/Source/ParTest/ParTest.p1.d ${OBJECTDIR}/Source/serial/serial.p1.d ${OBJECTDIR}/Source/main1.p1.d ${OBJECTDIR}/Source/uart_main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1 ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1 ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1 ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1 ${OBJECTDIR}/Source/FreeRTOS/croutine.p1 ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1 ${OBJECTDIR}/Source/FreeRTOS/list.p1 ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1 ${OBJECTDIR}/Source/FreeRTOS/tasks.p1 ${OBJECTDIR}/Source/FreeRTOS/timers.p1 ${OBJECTDIR}/Source/FreeRTOS/queue.p1 ${OBJECTDIR}/Source/ParTest/ParTest.p1 ${OBJECTDIR}/Source/serial/serial.p1 ${OBJECTDIR}/Source/main1.p1 ${OBJECTDIR}/Source/uart_main.p1

# Source Files
SOURCEFILES=Source/FreeRTOS/Common/PollQ.c Source/FreeRTOS/Common/integer.c Source/FreeRTOS/MemMang/heap_4.c Source/FreeRTOS/portable/PIC18F/port.c Source/FreeRTOS/croutine.c Source/FreeRTOS/event_groups.c Source/FreeRTOS/list.c Source/FreeRTOS/stream_buffer.c Source/FreeRTOS/tasks.c Source/FreeRTOS/timers.c Source/FreeRTOS/queue.c Source/ParTest/ParTest.c Source/serial/serial.c Source/main1.c Source/uart_main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F47J53
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1: Source/FreeRTOS/Common/PollQ.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/Common" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1 Source/FreeRTOS/Common/PollQ.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.d ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1: Source/FreeRTOS/Common/integer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/Common" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1 Source/FreeRTOS/Common/integer.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.d ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1: Source/FreeRTOS/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/MemMang" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1 Source/FreeRTOS/MemMang/heap_4.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.d ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1: Source/FreeRTOS/portable/PIC18F/port.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1 Source/FreeRTOS/portable/PIC18F/port.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.d ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/croutine.p1: Source/FreeRTOS/croutine.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/croutine.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/croutine.p1 Source/FreeRTOS/croutine.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/croutine.d ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/event_groups.p1: Source/FreeRTOS/event_groups.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1 Source/FreeRTOS/event_groups.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/event_groups.d ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/list.p1: Source/FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/list.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/list.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/list.p1 Source/FreeRTOS/list.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/list.d ${OBJECTDIR}/Source/FreeRTOS/list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1: Source/FreeRTOS/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1 Source/FreeRTOS/stream_buffer.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.d ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/tasks.p1: Source/FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/tasks.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/tasks.p1 Source/FreeRTOS/tasks.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/tasks.d ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/timers.p1: Source/FreeRTOS/timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/timers.p1 Source/FreeRTOS/timers.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/timers.d ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/queue.p1: Source/FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/queue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/queue.p1 Source/FreeRTOS/queue.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/queue.d ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/ParTest/ParTest.p1: Source/ParTest/ParTest.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/ParTest" 
	@${RM} ${OBJECTDIR}/Source/ParTest/ParTest.p1.d 
	@${RM} ${OBJECTDIR}/Source/ParTest/ParTest.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/ParTest/ParTest.p1 Source/ParTest/ParTest.c 
	@-${MV} ${OBJECTDIR}/Source/ParTest/ParTest.d ${OBJECTDIR}/Source/ParTest/ParTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/ParTest/ParTest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/serial/serial.p1: Source/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/serial" 
	@${RM} ${OBJECTDIR}/Source/serial/serial.p1.d 
	@${RM} ${OBJECTDIR}/Source/serial/serial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/serial/serial.p1 Source/serial/serial.c 
	@-${MV} ${OBJECTDIR}/Source/serial/serial.d ${OBJECTDIR}/Source/serial/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/serial/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/main1.p1: Source/main1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source" 
	@${RM} ${OBJECTDIR}/Source/main1.p1.d 
	@${RM} ${OBJECTDIR}/Source/main1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/main1.p1 Source/main1.c 
	@-${MV} ${OBJECTDIR}/Source/main1.d ${OBJECTDIR}/Source/main1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/main1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/uart_main.p1: Source/uart_main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source" 
	@${RM} ${OBJECTDIR}/Source/uart_main.p1.d 
	@${RM} ${OBJECTDIR}/Source/uart_main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/uart_main.p1 Source/uart_main.c 
	@-${MV} ${OBJECTDIR}/Source/uart_main.d ${OBJECTDIR}/Source/uart_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/uart_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1: Source/FreeRTOS/Common/PollQ.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/Common" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1 Source/FreeRTOS/Common/PollQ.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.d ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/Common/PollQ.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1: Source/FreeRTOS/Common/integer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/Common" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1 Source/FreeRTOS/Common/integer.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.d ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/Common/integer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1: Source/FreeRTOS/MemMang/heap_4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/MemMang" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1 Source/FreeRTOS/MemMang/heap_4.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.d ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/MemMang/heap_4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1: Source/FreeRTOS/portable/PIC18F/port.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1 Source/FreeRTOS/portable/PIC18F/port.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.d ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/portable/PIC18F/port.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/croutine.p1: Source/FreeRTOS/croutine.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/croutine.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/croutine.p1 Source/FreeRTOS/croutine.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/croutine.d ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/croutine.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/event_groups.p1: Source/FreeRTOS/event_groups.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1 Source/FreeRTOS/event_groups.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/event_groups.d ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/event_groups.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/list.p1: Source/FreeRTOS/list.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/list.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/list.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/list.p1 Source/FreeRTOS/list.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/list.d ${OBJECTDIR}/Source/FreeRTOS/list.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/list.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1: Source/FreeRTOS/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1 Source/FreeRTOS/stream_buffer.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.d ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/stream_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/tasks.p1: Source/FreeRTOS/tasks.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/tasks.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/tasks.p1 Source/FreeRTOS/tasks.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/tasks.d ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/tasks.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/timers.p1: Source/FreeRTOS/timers.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/timers.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/timers.p1 Source/FreeRTOS/timers.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/timers.d ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/FreeRTOS/queue.p1: Source/FreeRTOS/queue.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/FreeRTOS" 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d 
	@${RM} ${OBJECTDIR}/Source/FreeRTOS/queue.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/FreeRTOS/queue.p1 Source/FreeRTOS/queue.c 
	@-${MV} ${OBJECTDIR}/Source/FreeRTOS/queue.d ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/FreeRTOS/queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/ParTest/ParTest.p1: Source/ParTest/ParTest.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/ParTest" 
	@${RM} ${OBJECTDIR}/Source/ParTest/ParTest.p1.d 
	@${RM} ${OBJECTDIR}/Source/ParTest/ParTest.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/ParTest/ParTest.p1 Source/ParTest/ParTest.c 
	@-${MV} ${OBJECTDIR}/Source/ParTest/ParTest.d ${OBJECTDIR}/Source/ParTest/ParTest.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/ParTest/ParTest.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/serial/serial.p1: Source/serial/serial.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source/serial" 
	@${RM} ${OBJECTDIR}/Source/serial/serial.p1.d 
	@${RM} ${OBJECTDIR}/Source/serial/serial.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/serial/serial.p1 Source/serial/serial.c 
	@-${MV} ${OBJECTDIR}/Source/serial/serial.d ${OBJECTDIR}/Source/serial/serial.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/serial/serial.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/main1.p1: Source/main1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source" 
	@${RM} ${OBJECTDIR}/Source/main1.p1.d 
	@${RM} ${OBJECTDIR}/Source/main1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/main1.p1 Source/main1.c 
	@-${MV} ${OBJECTDIR}/Source/main1.d ${OBJECTDIR}/Source/main1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/main1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Source/uart_main.p1: Source/uart_main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/Source" 
	@${RM} ${OBJECTDIR}/Source/uart_main.p1.d 
	@${RM} ${OBJECTDIR}/Source/uart_main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Source/uart_main.p1 Source/uart_main.c 
	@-${MV} ${OBJECTDIR}/Source/uart_main.d ${OBJECTDIR}/Source/uart_main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Source/uart_main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"Source" -I"Source/FreeRTOS/include" -I"Source/FreeRTOS/portable/PIC18F" -I"Source/FreeRTOS/portable/." -I"Source/FreeRTOS/Common" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/RTOS_TEST03.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
