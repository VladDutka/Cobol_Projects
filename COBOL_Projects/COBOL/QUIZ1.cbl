      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:QUIZ 1
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QUIZ1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CHOICE PIC X9.
       01  GETCHE PIC Z.
      *=================================================================
       01  SNUM PIC X(18).
       01  SNAME PIC A(20).
       01  MID PIC 99.
       01  MIDDP PIC Z9.
       01  PREL PIC 99.
       01  PRELDP PIC Z9.
       01  FIN PIC 99.
       01  FINDP PIC Z9.
       01  AVE PIC 99V99.
       01  AVEDP PIC Z9.99.

       SCREEN SECTION.
       01  CLEARSCREEN.
         02 BLANK SCREEN.
       PROCEDURE DIVISION.
       MAINMENU.
           PERFORM UNTIL CHOICE = 3
           DISPLAY CLEARSCREEN
           DISPLAY "M A I N  M E N U" AT 0454
           DISPLAY "[A] COMPUTE AVERAGE" AT 1048
           DISPLAY "[B] GRADES EQUIVALENT" AT 1248
           DISPLAY "[C] EXIT" AT 1448

           DISPLAY "ENTER YOUR CHOICE: " AT 2051
           ACCEPT CHOICE AT 2071

           EVALUATE CHOICE

           WHEN 'A' WHEN 'a'
           PERFORM CALCULATEGWA
           DISPLAY "AVERAGE: " AT 1648 AVEDP AT 1670
           MOVE AVEDP TO AVE
           PERFORM GETCH

           WHEN 'B' WHEN 'b'
           PERFORM EQUIVS
           PERFORM GETCH

           WHEN 'C' WHEN 'c'
           PERFORM EXT

           WHEN OTHER
           DISPLAY "INVALID" AT 2458
           PERFORM MAINMENU
           END-EVALUATE
           END-PERFORM.


       CALCULATEGWA.
           DISPLAY CLEARSCREEN.
           DISPLAY "CALCULATE  AVERAGE" AT 0452

           DISPLAY "STUDENT NUMBER:" AT 0648
           ACCEPT SNUM AT 0670
           DISPLAY "STUDENT NAME:" AT 0848
           ACCEPT SNAME AT 0870

           DISPLAY "INPUT PRELIM GRADE: " AT 1048
           ACCEPT PRELDP AT 1070
           MOVE PRELDP TO PREL.

           DISPLAY "INPUT MIDTERM GRADE: " AT 1248
           ACCEPT MIDDP AT 1270
           MOVE MIDDP TO MID.

           DISPLAY "INPUT FINALS GRADE: " AT 1448
           ACCEPT FINDP AT 1470
           MOVE FINDP TO FIN.

           COMPUTE AVEDP = PREL * 0.3 + MID * 0.3 + FIN * 0.4.

       EQUIVS.
           DISPLAY CLEARSCREEN
           DISPLAY "GENERAL WEIGHTED AVERAGE:" AT 1048
           DISPLAY AVEDP AT 1075
           MOVE AVEDP TO AVE

           IF AVE <= 100 AND AVE >= 75 THEN
               DISPLAY "REMARKS: YOU PASSED!" AT 1448

               IF AVE <= 100 AND AVE >= 97 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.00" AT 1248
               ELSE IF AVE <= 96 AND AVE >= 94 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.25" AT 1248
               ELSE IF AVE <= 93 AND AVE >= 91 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.50" AT 1248
               ELSE IF AVE <= 90 AND AVE >= 88 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.75" AT 1248
               ELSE IF AVE <= 87 AND AVE >= 85 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.00" AT 1248
               ELSE IF AVE <= 84 AND AVE >= 82 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.25" AT 1248
               ELSE IF AVE <= 81 AND AVE >= 79 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.50" AT 1248
               ELSE IF AVE <= 78 AND AVE >= 76 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.75" AT 1248
               ELSE IF AVE = 75 THEN
               DISPLAY "EQUIVALENT OF GWA IS 3.00" AT 1248


           END-IF
           ELSE
               DISPLAY "EQUIVALENT OF GWA IS 5.00" AT 1248
               DISPLAY "REMARKS: YOU FAILED!" AT 1448
           END-IF.

       GETCH.
           DISPLAY "ENTER TO CONTINUE..." AT 2651
           ACCEPT GETCHE.
       EXT.
           STOP RUN.


       END PROGRAM QUIZ1.
