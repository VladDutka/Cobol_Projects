      ******************************************************************
      * Author: Vlad Dutka
      * Date: 
      * Purpose: QUIZ 2 - LOOPS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CHOICE PIC X9.
       01  GETCHE PIC Z.
       01  POS PIC 9999.
       01  POSA PIC 9999.
      *=================================================================
       01  INC PIC 999 VALUE 1.
       01  LIMDP PIC ZZ9.
       01  LIM PIC 999.
       01  J    PIC 999 VALUE 1.
       01  TOTS PIC 999 VALUE 0.
       01  N1 PIC 99999.
       01  N1DP PIC ZZZZ9.
       01  N2 PIC 99999.
       01  N2DP PIC ZZZZ9.
       01  TEMP PIC 99.
       01  X PIC 9999.
       01  XDP PIC ZZZ9.
       01  Y PIC 9999.
       01  YDP PIC ZZZ9.
       01  NTH PIC 9999.
       01  NTHDP PIC ZZZ9.
       01  SUMA PIC 9999.
       01  SUMADP PIC ZZZ9.
       01  SUMB PIC 9999.
       SCREEN SECTION.
       01  CLEARSCREEN.
           02 BLANK SCREEN.

       PROCEDURE DIVISION.
       MAINMENU.
           PERFORM UNTIL CHOICE = 4
           DISPLAY CLEARSCREEN
           DISPLAY "M A I N  M E N U" AT 0454
           DISPLAY "[A] PERFECT NUMBER BETWEEN 1 - 500" AT 1048
           DISPLAY "[B] FIND THE GCD OF 2 NUMBERS" AT 1248
           DISPLAY "[C] CALCULATE THE SERIES OF (1) + (1+2) + (1+2+N)"
           AT 1448
           DISPLAY "[D] EXIT" AT 1648

           DISPLAY "ENTER YOUR CHOICE: " AT 2051
           ACCEPT CHOICE AT 2071

           EVALUATE CHOICE

            WHEN 'A' WHEN 'a'
           PERFORM PERF
           PERFORM GETCH

           WHEN 'B' WHEN 'b'
           PERFORM GCD
           PERFORM GETCH

           WHEN 'C' WHEN 'c'
           PERFORM SERIES
           PERFORM GETCH

           WHEN 'D' WHEN 'd'
           PERFORM EXT

           WHEN OTHER
           DISPLAY "INVALID" AT 2458
           PERFORM MAINMENU
           END-EVALUATE
           END-PERFORM.

       PERF.
           DISPLAY CLEARSCREEN.
           COMPUTE POS = 1048.
           DISPLAY "CALCULATE PERFECT NUMBERS BETWEEN 1 TO 500" AT 0452.
           DISPLAY "ENTER MAX NUM:" AT 0648.
           ACCEPT LIMDP AT 0665.
           MOVE LIMDP TO LIM.

           DISPLAY "PERFECT NUMBERS BETWEEN 1 TO 500" AT 0848.

           PERFORM VARYING INC FROM 1 BY 1 UNTIL INC >= LIM
           COMPUTE TOTS = 0
           PERFORM VARYING J FROM 1 BY 1 UNTIL J >= INC
              IF FUNCTION MOD(INC,J) = 0
              COMPUTE TOTS = TOTS + J
              IF TOTS = INC
              DISPLAY INC AT POS
              ADD 5 TO POS
              END-IF
           END-PERFORM
           END-PERFORM.
       GCD.
           DISPLAY CLEARSCREEN.
           DISPLAY "THE GCD OF 2 NUMBERS" AT 0452.
           DISPLAY "ENTER 1ST NUMBER: " AT 0648
           ACCEPT N1DP AT 0665
           MOVE N1DP TO N1.
           DISPLAY "ENTER 2ND NUMBER: " AT 0848
           ACCEPT N2DP AT 0865
           MOVE N2DP TO N2.

           IF N1 < N2
             MOVE N2 TO TEMP
             MOVE N1 TO N2
             MOVE TEMP TO N2
           END-IF

           PERFORM UNTIL N2 = 0
             MOVE N1 TO TEMP
             MOVE N2 TO N1
             DIVIDE TEMP BY N2 GIVING TEMP REMAINDER N2
           END-PERFORM
           DISPLAY "GCD: " AT 1048
           DISPLAY N1 AT 1060.

       SERIES.
           DISPLAY CLEARSCREEN.
           COMPUTE POS = 0848.
           COMPUTE POSA = 0850.
           DISPLAY "CALCULATE THE SERIES OF (1) + (1+2) + (1+2+N)"
           AT 0452
           DISPLAY "INPUT THE VALUE OF NTH TERM :" AT 0648
           ACCEPT NTHDP AT 0680.
           MOVE NTHDP TO NTH.

           PERFORM VARYING X FROM 1 BY 1 UNTIL X > NTH
           COMPUTE SUMB = 0
           PERFORM VARYING Y FROM 1 BY 1 UNTIL Y > X

           COMPUTE SUMA = SUMA + Y
           COMPUTE SUMB = SUMB + Y
           MOVE Y TO YDP

      *     DISPLAY YDP NO ADVANCING

           IF (Y < X)
           DISPLAY " "

           END-IF

           END-PERFORM
      *     DISPLAY " = " SUMB
           END-PERFORM.
           MOVE SUMA TO SUMADP.
           DISPLAY "THE SUM OF THE ABOVE SERIES IS : " AT 0848
           DISPLAY SUMADP AT 0880.

       GETCH.
           DISPLAY "ENTER TO CONTINUE..." AT 2651
           ACCEPT GETCHE.
       EXT.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
