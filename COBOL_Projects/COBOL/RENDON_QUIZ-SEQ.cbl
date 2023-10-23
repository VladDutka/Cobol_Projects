      ******************************************************************
      * Author:Vlad Dutka
      * Date: 
      * Purpose: QUIZ
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CHOICE PIC X9.
       01  GETCHE PIC Z.
      *=================================================================
       01  RADDP PIC Z9.
       01  RAD PIC 99.
       01  VOLDP PIC ZZ9.99.
       01  KMH PIC 999V99.
       01  KMHDP PIC X(6).
       01  MPH PIC ZZ.999.
       01  DEND PIC 999.
       01  DENDDP PIC ZZ9.
       01  SOR PIC 999.
       01  SORDP PIC ZZ9.
       01  QUO PIC 99.
       01  QUODP PIC Z9.
       01  REM PIC Z9.
       SCREEN SECTION.
       01  CLEARSCREEN.
         02 BLANK SCREEN.
       PROCEDURE DIVISION.
       MAINMENU.
           PERFORM UNTIL CHOICE = 4
           DISPLAY CLEARSCREEN
           DISPLAY "M A I N  M E N U" AT 0454
           DISPLAY "[A] CALCULATE THE VOLUME OF SPHERE" AT 1048
           DISPLAY "[B] CONVERT KPH TO MPH" AT 1248
           DISPLAY "[C] COMPUTE QUOTIENT AND REMAINDER" AT 1448
           DISPLAY "[D] EXIT" AT 1648

           DISPLAY "ENTER YOUR CHOICE: " AT 2051
           ACCEPT CHOICE AT 2071

           EVALUATE CHOICE

            WHEN 'A' WHEN 'a'
           PERFORM VOL
           PERFORM GETCH

           WHEN 'B' WHEN 'b'
           PERFORM KPHMPH
           PERFORM GETCH

           WHEN 'C' WHEN 'c'
           PERFORM DIV
           PERFORM GETCH

           WHEN 'D' WHEN 'd'
           PERFORM EXT

           WHEN OTHER
           DISPLAY "INVALID" AT 2458
           PERFORM MAINMENU
           END-EVALUATE
           END-PERFORM.
       VOL.
           DISPLAY CLEARSCREEN.
           DISPLAY "CALCULATION OF VOLUME OF SPHERE" AT 0452
           DISPLAY "ENTER THE VALUE OF RADIUS: " AT 0648
           ACCEPT RADDP AT 0678.
           MOVE RADDP TO RAD.

           COMPUTE VOLDP = 4 / 3 * 3.141592 * RAD * RAD * RAD.

           DISPLAY "THE VOLUME OF SPHERE IS " AT 0848
           DISPLAY VOLDP AT 0875.
       KPHMPH.
           DISPLAY CLEARSCREEN.
           DISPLAY "CONVERSION OF KM/H TO MI/H" AT 0452
           DISPLAY "ENTER KM/H: " AT 0648
           ACCEPT KMHDP AT 0660
           MOVE KMHDP TO KMH.

           COMPUTE MPH = KMH / 1.609344.

           DISPLAY "MI/H: " AT 0848
           DISPLAY MPH AT 0860.
       DIV.
           DISPLAY CLEARSCREEN.
           DISPLAY "QUOTIENT AND REMAINDER" AT 0452.
           DISPLAY "ENTER DIVIDEND: " AT 0648.
           ACCEPT DENDDP AT 0668.
           MOVE DENDDP TO DEND.
           DISPLAY "ENTER DIVISOR: " AT 0848
           ACCEPT SORDP AT 0868.
           MOVE SORDP TO SOR.

           COMPUTE QUO = DEND / SOR.
           COMPUTE REM = DEND - (SOR * QUO).
           MOVE QUO TO QUODP.

           DISPLAY "QUOTIENT: " AT 1048
           DISPLAY QUODP AT 1060
           DISPLAY "REMAINDER: " AT 1148
           DISPLAY REM AT 1160.

       GETCH.
           DISPLAY "ENTER TO CONTINUE..." AT 2651
           ACCEPT GETCHE.
       EXT.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
