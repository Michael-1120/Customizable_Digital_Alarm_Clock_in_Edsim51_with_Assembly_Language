ORG 0000H
MAIN:
	CALL Clear_RAM_0X
	CALL Clear_RAM_1X
	CALL Clear_RAM_2X	
	CALL Clear_RAM_3X
	CALL Clear_RAM_4X
	CALL Clear_RAM_7X
	CALL Clear_Registers
	CALL Initial_RAM_LCD
	CALL Alarm_Time_Value
	CALL Initial_Current_Time_Value
	LJMP PROGRAM_START

;Switch Configurations
	;SW 7 = Display Current Time Set Initially
	;SW 6 = Display Alarm Time Set Initially
	;SW 5 = Display Alarm Reminder/Phrase Set Initially
	;SW 4
	;SW 3
	;SW 2 = Turn OFF Alarm
	;SW 1 = For Starting the Clock Timer
	;SW 0 = For Starting the Program

Clear_Registers:
 	MOV R7, #0H ;For declaring the state of the clock (1:On, 0:Off)
 	MOV R6, #0H ;For Temporary Memory of HH time value
 	MOV R5, #0H ;For Temporary Memory of MM time value
 	MOV R4, #0H ;For Temporary Memory of SS time value
 	MOV R3, #0H ;For Starting the Program
		 ;For LCD Line Indicator
 	MOV R2, #0H ;For Short Loops
 	MOV R1, #0H ;For LCD Reading the Current Memory Address
		  ;For Decimal to 24HR Clock Cycle Loop
 	MOV R0, #0H ;For Decimal to 24HR Clock Cycle Loop
	RET

Clear_RAM_0X:
	MOV 00H, #0
	MOV 01H, #0
	MOV 02H, #0
	MOV 03H, #0
	MOV 04H, #0
	MOV 05H, #0
	MOV 06H, #0
	MOV 07H, #0
;	MOV 08H, #0
	MOV 09H, #0
	MOV 0AH, #0
	MOV 0BH, #0
	MOV 0CH, #0
	MOV 0DH, #0
	MOV 0EH, #0
	MOV 0FH, #0
	RET

Clear_RAM_1X:
	MOV 10H, #0
	MOV 11H, #0
	MOV 12H, #0
	MOV 13H, #0
	MOV 14H, #0
	MOV 15H, #0
	MOV 16H, #0
	MOV 17H, #0
	MOV 18H, #0
	MOV 19H, #0
	MOV 1AH, #0
	MOV 1BH, #0
	MOV 1CH, #0
	MOV 1DH, #0
	MOV 1EH, #0
	MOV 1FH, #0
	RET

Clear_RAM_2X:
	MOV 20H, #0
	MOV 21H, #0
	MOV 22H, #0
	MOV 23H, #0
	MOV 24H, #0
	MOV 25H, #0
	MOV 26H, #0
	MOV 27H, #0
	MOV 28H, #0
	MOV 29H, #0
	MOV 2AH, #0
	MOV 2BH, #0
	MOV 2CH, #0
	MOV 2DH, #0
	MOV 2EH, #0
	MOV 2FH, #0
	RET

Clear_RAM_3X:
	MOV 30H, #0
	MOV 31H, #0
	MOV 32H, #0
	MOV 33H, #0
	MOV 34H, #0
	MOV 35H, #0
	MOV 36H, #0
	MOV 37H, #0
	MOV 38H, #0
	MOV 39H, #0
	MOV 3AH, #0
	MOV 3BH, #0
	MOV 3CH, #0
	MOV 3DH, #0
	MOV 3EH, #0
	MOV 3FH, #0
	RET

Clear_RAM_4X:
	MOV 40H, #0
	MOV 41H, #0
	MOV 42H, #0
	MOV 43H, #0
	MOV 44H, #0
	MOV 45H, #0
	MOV 46H, #0
	MOV 47H, #0
	MOV 48H, #0
	MOV 49H, #0
	MOV 4AH, #0
	MOV 4BH, #0
	MOV 4CH, #0
	MOV 4DH, #0
	MOV 4EH, #0
	MOV 4FH, #0
	RET

Initial_RAM_LCD:
	MOV 50H, #'D'
	MOV 51H, #'I'
	MOV 52H, #'G'
	MOV 53H, #'I'
	MOV 54H, #'T'
	MOV 55H, #'A'
	MOV 56H, #'L'
	MOV 57H, #' '
	MOV 58H, #'C'
	MOV 59H, #'L'
	MOV 5AH, #'O'
	MOV 5BH, #'C'
	MOV 5CH, #'K'
	MOV 5DH, #' '
	MOV 5EH, #' '
	MOV 5FH, #0

	MOV 60H, #'H'
	MOV 61H, #'E'
	MOV 62H, #'L'
	MOV 63H, #'L'
	MOV 64H, #'O'
	MOV 65H, #' '
	MOV 66H, #'W'
	MOV 67H, #'O'
	MOV 68H, #'R'
	MOV 69H, #'L'
	MOV 6AH, #'D'
	MOV 6BH, #'!'
	MOV 6CH, #' '
	MOV 6DH, #' '
	MOV 6EH, #' '
	MOV 6FH, #0
	RET

Clear_RAM_7X:
	MOV 70H, #0
	MOV 71H, #0
	MOV 72H, #0
	MOV 73H, #0
	MOV 74H, #0
	MOV 75H, #0
	MOV 76H, #0
	MOV 77H, #0
	MOV 78H, #0
	MOV 79H, #0
	MOV 7AH, #0
	MOV 7BH, #0
	MOV 7CH, #0
	MOV 7DH, #0
	MOV 7EH, #0
	MOV 7FH, #0
	RET

Alarm_Time_Value: ;24 Hour Clock Cycle
	;Input Decimal Value #XX, ex. #09, #00, #00
	;Hours Value (HH)
	MOV 76H, #17
	;Minutes Value (MM)
	MOV 77H, #00
	;Seconds Value (SS)
	MOV 78H, #00
	RET

Initial_Current_Time_Value: ;24 Hour Clock Cycle
	;Input Decimal Value #XX, ex. #08, #30, #00
	;Hours Value (HH)
	MOV 79H, #16
	;Minutes Value (MM)
	MOV 7AH, #59
	;Seconds Value (SS)
	MOV 7BH, #50
	RET

Alarm_Reminders: ;15 Character Phrase/String
	;Input each character inside the #' '
	;Example: #'T',#'i',#'m',#'e',#' ',#'t',#'o',#' ',#'W',#'a',#'k',#'e',#' ',#'u',#'p'
	MOV 60H, #'A'
	MOV 61H, #'B'
	MOV 62H, #'C'
	MOV 63H, #'D'
	MOV 64H, #'E'
	MOV 65H, #'F'
	MOV 66H, #'G'
	MOV 67H, #'H'
	MOV 68H, #'I'
	MOV 69H, #'J'
	MOV 6AH, #'K'
	MOV 6BH, #'L'
	MOV 6CH, #'M'
	MOV 6DH, #'N'
	MOV 6EH, #'O'
	MOV 6FH, #0
	RET

PROGRAM_START:
	MOV A, #0
	MOV A, P2
	MOV R3, #0
	CPL A
	MOV R3, A
	MOV R2, #100
	DJNZ R2, $
	CJNE R3, #1, PROGRAM_START
	LCALL LCD_New
	LJMP SWITCHES

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;LCD SEGMENT
LCD_New:
	LCALL LCD_Initialize
	LCALL LCD_Function
	LCALL LCD_Display_Control
	LCALL LCD_Line_1
	LCALL LCD_Entry_Mode
	LCALL LCD_Data_Read_1
	RET

LCD_Initialize:
	CLR P1.3
	RET

LCD_Function:
	CLR P1.7
	CLR P1.6
	SETB P1.5
	CLR P1.4 

	SETB P1.2
	CLR P1.2 

	CALL LCD_Delay

	SETB P1.2
	CLR P1.2 

 	SETB P1.7
	CLR P1.6
	CLR P1.5
	CLR P1.4

	SETB P1.2
	CLR P1.2

	CALL LCD_Delay 
	RET

LCD_Display_Control:
	CLR P1.7
	CLR P1.6
	CLR P1.5
	CLR P1.4 
	
	SETB P1.2
	CLR P1.2

	SETB P1.7
	SETB P1.6
	SETB P1.5
	SETB P1.4 

	SETB P1.2
	CLR P1.2 

	CALL LCD_Delay 
	RET

LCD_Entry_Mode:
	CLR P1.7
	CLR P1.6
	CLR P1.5
	CLR P1.4 

	SETB P1.2
	CLR P1.2 

	CLR P1.7
	SETB P1.6
	SETB P1.5 
	CLR P1.4

	SETB P1.2
	CLR P1.2 

	CALL LCD_Delay 
	RET

LCD_Data_Read_1:
	SETB P1.3 
	MOV R1, #50H
	MOV R3, #0
	CALL LCD_Loop
	RET

LCD_Line_1:
	SETB P1.7
	CLR P1.6
	CLR P1.5
	CLR P1.4 

	SETB P1.2
	CLR P1.2 

	CLR P1.7
	CLR P1.6
	CLR P1.5 
	CLR P1.4

	SETB P1.2
	CLR P1.2 

	CALL LCD_Delay 

	RET

LCD_Data_Read_2:
	CALL LCD_Line_2	

	SETB P1.3 
	MOV R3, #1
	MOV R1, #60H
	JMP LCD_Loop

LCD_Line_2:
	CLR P1.3
	
	SETB P1.7
	SETB P1.6
	CLR P1.5
	CLR P1.4 

	SETB P1.2
	CLR P1.2 

	CLR P1.7
	CLR P1.6
	CLR P1.5 
	CLR P1.4

	SETB P1.2
	CLR P1.2 

	CALL LCD_Delay 

	RET


LCD_Loop:
	MOV A, @R1

	CALL LCD_Send_Character

	INC R1 
	CJNE A, #0, LCD_Loop
	CJNE R3, #1, LCD_Data_Read_2
	MOV R3, #0
	RET

LCD_Send_Character:
	MOV C, ACC.7 
	MOV P1.7, C 
	MOV C, ACC.6 
	MOV P1.6, C 
	MOV C, ACC.5 
	MOV P1.5, C 
	MOV C, ACC.4 
	MOV P1.4, C 

	SETB P1.2 
	CLR P1.2 

	MOV C, ACC.3 
	MOV P1.7, C 
	MOV C, ACC.2 
	MOV P1.6, C 
	MOV C, ACC.1 
	MOV P1.5, C 
	MOV C, ACC.0 
	MOV P1.4, C 

	SETB P1.2 
	CLR P1.2 

	CALL LCD_Delay

	RET

LCD_Delay:
	MOV R2, #25
	DJNZ R2, $
	RET

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;SWITCH SEGMENT
SWITCHES:
	CALL Switch_Delay
	CALL Switch_Delay
	CALL Switch_Delay
	JMP Mode_1

Switch_Delay:
	MOV B, #10 ;Adjust Switch Delay
	MOV 7CH, B
	MOV 7DH, B
	MOV 7EH, B
	MOV 7FH, B
	CALL Switch_Delay_Loop
	RET

Switch_Delay_Loop:
	DEC 7FH
	MOV R0, 7FH
	CJNE R0, #0, Switch_Delay_Loop

	MOV 7FH, B
	DEC 7EH
	MOV R0, 7EH
	CJNE R0, #0, Switch_Delay_Loop

	MOV 7EH, B
	DEC 7DH
	MOV R0, 7DH
	CJNE R0, #0, Switch_Delay_Loop

	MOV 7DH, B
	DEC 7CH
	MOV R0, 7CH
	CJNE R0, #0, Switch_Delay_Loop
	MOV 7CH, B

	RET

SW_7_Current_Time:
	MOV A, #0
	MOV C, P2.7
	CPL C
	MOV ACC.0, C
	CLR C
	CJNE A, #1, No_SW_7_Current_Time
	JMP Mode_1

No_SW_7_Current_Time:
	RET

SW_6_Alarm_Time:
	MOV A, #0
	MOV C, P2.6
	CPL C
	MOV ACC.0, C
	CLR C
	CJNE A, #1, No_SW_6_Alarm_Time
	JMP Mode_2

No_SW_6_Alarm_Time:
	RET

SW_5_Alarm_Reminder:
	MOV A, #0
	MOV C, P2.5
	CPL C
	MOV ACC.0, C
	CLR C
	CJNE A, #1, No_SW_5_Alarm_Reminder
	JMP Mode_3

No_SW_5_Alarm_Reminder:
	RET

MODE_0:
	CALL Current_Time_Line_1
	CALL Current_Time_Update
	CALL LCD_New
	RET

Mode_1:
	CALL Current_Time_Line_1
	CALL Current_Time_Line_2
	CALL LCD_New
	CALL SW_6_Alarm_Time
	CALL SW_5_Alarm_Reminder
	LCALL SW_1_Start_Timer
	CALL Switch_Delay
	JMP Mode_1

Mode_2:
	CALL Alarm_Time_Line_1
	CALL Alarm_Time_Line_2
	CALL LCD_New
	CALL SW_7_Current_Time
	CALL SW_5_Alarm_Reminder
	LCALL SW_1_Start_Timer
	CALL Switch_Delay
	JMP Mode_2

Mode_3:
	CALL Alarm_Reminder_Line_1
	LCALL Alarm_Reminders
	CALL LCD_New
	CALL SW_7_Current_Time
	CALL SW_6_Alarm_Time
	LCALL SW_1_Start_Timer
	CALL Switch_Delay
	JMP Mode_3


Current_Time_Line_1:
	MOV 50H, #'C'
	MOV 51H, #'U'
	MOV 52H, #'R'
	MOV 53H, #'R'
	MOV 54H, #'E'
	MOV 55H, #'N'
	MOV 56H, #'T'
	MOV 57H, #' '
	MOV 58H, #'T'
	MOV 59H, #'I'
	MOV 5AH, #'M'
	MOV 5BH, #'E'
	MOV 5CH, #58
	MOV 5DH, #' '
	MOV 5EH, #' '
	MOV 5FH, #0
	RET

Alarm_Time_Line_1:
	MOV 50H, #'A'
	MOV 51H, #'L'
	MOV 52H, #'A'
	MOV 53H, #'R'
	MOV 54H, #'M'
	MOV 55H, #' '
	MOV 56H, #'T'
	MOV 57H, #'I'
	MOV 58H, #'M'
	MOV 59H, #'E'
	MOV 5AH, #58
	MOV 5BH, #' '
	MOV 5CH, #' '
	MOV 5DH, #' '
	MOV 5EH, #' '
	MOV 5FH, #0
	RET

Alarm_Reminder_Line_1:
	MOV 50H, #'A'
	MOV 51H, #'L'
	MOV 52H, #'A'
	MOV 53H, #'R'
	MOV 54H, #'M'
	MOV 55H, #' '
	MOV 56H, #'R'
	MOV 57H, #'E'
	MOV 58H, #'M'
	MOV 59H, #'I'
	MOV 5AH, #'N'
	MOV 5BH, #'D'
	MOV 5CH, #'E'
	MOV 5DH, #'R'
	MOV 5EH, #58
	MOV 5FH, #0
	RET

Current_Time_Line_2:
	MOV 60H, #'2'
	MOV 61H, #'4'
	MOV 62H, #'H'
	MOV 63H, #'R'
	MOV 64H, #127
	MOV 67H, #58
	MOV 6AH, #58
	MOV 6DH, #' '
	MOV 6EH, #' '
	MOV 6FH, #0

	MOV R4, 79H
	MOV R5, 7AH
	MOV R6, 7BH

	LCALL Decimal_24_Clock_Cycle

	MOV A, 70H
	MOV 65H, A
	MOV A, 71H
	MOV 66H, A

	MOV A, 72H
	MOV 68H, A
	MOV A, 73H
	MOV 69H, A

	MOV A, 74H
	MOV 6BH, A
	MOV A, 75H
	MOV 6CH, A

	RET

Alarm_Time_Line_2:
	MOV 60H, #'2'
	MOV 61H, #'4'
	MOV 62H, #'H'
	MOV 63H, #'R'
	MOV 64H, #127
	MOV 67H, #58
	MOV 6AH, #58
	MOV 6DH, #' '
	MOV 6EH, #' '
	MOV 6FH, #0

	MOV R4, 76H
	MOV R5, 77H
	MOV R6, 78H

	LCALL Decimal_24_Clock_Cycle

	MOV A, 70H
	MOV 65H, A
	MOV A, 71H
	MOV 66H, A

	MOV A, 72H
	MOV 68H, A
	MOV A, 73H
	MOV 69H, A

	MOV A, 74H
	MOV 6BH, A
	MOV A, 75H
	MOV 6CH, A

	RET

Current_Time_Update:
	MOV 60H, #' '
	MOV 61H, #' '
	MOV 62H, #58
	MOV 63H, #' '
	MOV 64H, #' '
	MOV 65H, #58
	MOV 66H, #' '
	MOV 67H, #' '
	MOV 68H, #' '
	MOV 69H, #' '
	MOV 6AH, #' '
	MOV 6BH, #' '
	MOV 6CH, #' '
	MOV 6DH, #' '
	MOV 6EH, #' '
	MOV 6FH, #0

	MOV R4, 79H
	MOV R5, 7AH
	MOV R6, 7BH

	LCALL Decimal_24_Clock_Cycle

	MOV A, 70H
	MOV 60H, A
	MOV A, 71H
	MOV 61H, A

	MOV A, 72H
	MOV 63H, A
	MOV A, 73H
	MOV 64H, A

	MOV A, 74H
	MOV 66H, A
	MOV A, 75H
	MOV 67H, A

	RET

Decimal_24_Clock_Cycle:
	CALL S_Loop
	CALL M_Loop
	CALL H_Loop	
	RET

S_Loop:
	MOV A, R6
	MOV R1, #0
	CALL T0
	MOV 75H, R0
	
	MOV A, R1
	CALL T0
	MOV 74H, R0

	RET

M_Loop:
	MOV A, R5
	MOV R1, #0
	CALL T0
	MOV 73H, R0
	
	MOV A, R1
	CALL T0
	MOV 72H, R0

	RET

H_Loop:
	MOV A, R4
	MOV R1, #0
	CALL T0
	MOV 71H, R0
	
	MOV A, R1
	CALL T0
	MOV 70H, R0

	RET

Decrement_By_10:
	CPL A
	ADD A, #10
	CPL A
	INC R1
	JMP T0

T0: CJNE A, #0, T1
	MOV R0, #'0'
	RET

T1: CJNE A, #1, T2
	MOV R0, #'1'
	RET

T2: CJNE A, #2, T3
	MOV R0, #'2'
	RET

T3: CJNE A, #3, T4
	MOV R0, #'3'
	RET

T4: CJNE A, #4, T5
	MOV R0, #'4'
	RET

T5: CJNE A, #5, T6
	MOV R0, #'5'
	RET

T6: CJNE A, #6, T7
	MOV R0, #'6'
	RET

T7: CJNE A, #7, T8
	MOV R0, #'7'
	RET

T8: CJNE A, #8, T9
	MOV R0, #'8'
	RET

T9: CJNE A, #9, Decrement_By_10
	MOV R0, #'9'
	RET

SW_1_Start_Timer:
	CJNE R7, #0, $
	MOV A, #0
	MOV C, P2.1
	CPL C
	MOV ACC.0, C
	CLR C
	CJNE A, #1, No_SW_1_Start_Timer
	MOV R7, #1
	LJMP TIMER

No_SW_1_Start_Timer:
	RET

;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;TIMER SEGMENT
TIMER:
	JMP Timer_Start

Increment:
	INC 7BH
	MOV A, 7BH
	CJNE A, #60, No_Increment
	MOV 7BH, #0

	INC 7AH
	MOV A, 7AH
	CJNE A, #60, No_Increment
	MOV 7AH, #0

	INC 79H
	MOV A, 79H
	CJNE A, #24, No_Increment 
;Set Clock Cycle (#24 = 24Hr, #12 = 12Hr)
	MOV 79H, #0
	RET

No_Increment:
	RET

Time_Compare:
	CLR A
	MOV A, 7BH
	CJNE A, 78H, Alarm_Off
	CLR A

	MOV A, 7AH
	CJNE A, 77H, Alarm_Off
	CLR A

	MOV A, 79H
	CJNE A, 76H, Alarm_Off
	CLR A

	LJMP Alarm_On


Alarm_Off:
	RET

Alarm_On:
	LCALL ALARM_MODE
	LJMP PROGRAM_RESET

Timer_Count:
	MOV B, #10 ; Adjust Clock Delay
	MOV 7CH, B
	MOV 7DH, B
	MOV 7EH, B
	MOV 7FH, B


Timer_Start:
	SETB C
	MOV P3.0, C 
	CPL C 
	MOV P3.1, C 
	CLR C

	MOV TMOD, #50H 
	SETB TR1 

Timer_Loop:
	MOV A, TL1 
	DEC 7FH
	MOV R0, 7FH
	CJNE R0, #0, Timer_Loop

	MOV 7FH, B
	DEC 7EH
	MOV R0, 7EH
	CJNE R0, #0, Timer_Loop

	MOV 7EH, B
	DEC 7DH
	MOV R0, 7DH
	CJNE R0, #0, Timer_Loop

	MOV 7DH, B
	DEC 7CH
	MOV R0, 7CH
	CJNE R0, #0, Timer_Loop
	MOV 7CH, B

Timer_Reset:
	CLR A 
	CLR TR1

	CALL Increment
	LCALL MODE_0
	CALL Time_Compare	

	MOV TL1, #0 
	SETB TR1 

	JMP Timer_Loop
;~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;ALARM
ALARM_MODE:
	MOV 50H, #' '
	MOV 51H, #' '
	MOV 52H, #58
	MOV 53H, #' '
	MOV 54H, #' '
	MOV 55H, #58
	MOV 56H, #' '
	MOV 57H, #' '
	MOV 58H, #' '
	MOV 59H, #' '
	MOV 5AH, #' '
	MOV 5BH, #' '
	MOV 5CH, #' '
	MOV 5DH, #' '
	MOV 5EH, #' '
	MOV 5FH, #0

	MOV R4, 76H
	MOV R5, 77H
	MOV R6, 78H

	LCALL Decimal_24_Clock_Cycle

	MOV A, 70H
	MOV 50H, A
	MOV A, 71H
	MOV 51H, A

	MOV A, 72H
	MOV 53H, A
	MOV A, 73H
	MOV 54H, A

	MOV A, 74H
	MOV 56H, A
	MOV A, 75H
	MOV 57H, A

	LCALL Alarm_Reminders

SW_2:
	LCALL LCD_New

	CALL LED_Blink
	MOV A, #0
	MOV C, P2.2
	CPL C
	MOV ACC.0, C
	CLR C
	CJNE A, #1, SW_2
	RET

LED_Blink:
	MOV A, #0
	MOV P1, A
	CALL LED_Delay
	CPL A
	MOV P1, A
	CALL LED_Delay	

LED_Delay:
LD2:MOV R2, #75
LD1:MOV R1, #75
	DJNZ R1, $
	DJNZ R2, LD1
	RET

PROGRAM_RESET:
	LCALL Initial_RAM_LCD
	LCALL LCD_New
	END 
