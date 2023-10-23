      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CHOICE PIC X9.
       01  GETCHE PIC Z.

       01  MID PIC 9(2).
       01  MIDDP PIC Z9.
       01  PREL PIC 9(2).
       01  PRELDP PIC Z9.
       01  FIN PIC 9(2).
       01  FINDP PIC Z9.
       01  AVE PIC 9(2)V9(2).
       01  AVEDP PIC Z9.99.
       SCREEN SECTION.
       01 CLEARSCREEN.
           02 BLANK SCREEN.
       PROCEDURE DIVISION.
       MAINMENU.
           PERFORM UNTIL CHOICE = 3
            DISPLAY CLEARSCREEN
            DISPLAY "M A I N   M E N U" AT 0454
            DISPLAY "A.  COMPUTE  AVERAGE" AT 1237
            DISPLAY "B.  DISPLAY EQUIVALENT" AT 1267
            DISPLAY "C.  ITERATION  MENU" AT 1737
            DISPLAY "D.  EXIT  PROGRAM" AT 1767

            DISPLAY "ENTER YOUR CHOICE:" AT 2251
            ACCEPT CHOICE AT 2271

            EVALUATE CHOICE

            WHEN 'A' WHEN 'a'
            PERFORM SOLVE
            DISPLAY "AVERAGE: " AT 1748 AVEDP AT 1770
            MOVE AVEDP TO AVE
            PERFORM GETCH

            WHEN 'B' WHEN 'b'
            PERFORM EQUI
            PERFORM GETCH

            WHEN 'C' WHEN 'c'
            PERFORM EXT


            WHEN OTHER
               DISPLAY "INVALID" AT 2458
               PERFORM GETCH
               PERFORM MAINMENU
            END-EVALUATE
            END-PERFORM.
            STOP RUN.
       SOLVE.
           DISPLAY CLEARSCREEN.
           DISPLAY "AVERAGE" AT 0458
           DISPLAY "INPUT PRELIM GRADE:" AT 1348
           MOVE PREL TO PRELDP
           ACCEPT PRELDP AT 1370.
           MOVE PRELDP TO PREL.

           DISPLAY "INPUT MIDTERM GRADE:" AT 1448
           MOVE MID TO MIDDP
           ACCEPT MIDDP AT 1470.
           MOVE MIDDP TO MID.

           DISPLAY "INPUT FINALS GRADE:" AT 1548
           MOVE FIN TO FINDP
           ACCEPT FINDP AT 1570.
           MOVE FINDP TO FIN.

           COMPUTE AVEDP = MID * 0.3 + PREL * 0.3 + FIN * 0.4.

       EQUI.
           DISPLAY CLEARSCREEN.
           DISPLAY "GENERAL WEIGHTED AVERAGE: " AT 1748 AVEDP AT 1774
           MOVE AVEDP TO AVE

           IF AVE <= 100 AND AVE >=75 THEN
               DISPLAY "YOU PASSED." AT 2048

           IF AVE <= 100 AND AVE >=97 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.00." AT 1948
           ELSE IF AVE <= 96 AND AVE >=94 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.25." AT 1948
           ELSE IF AVE <= 93 AND AVE >=91 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.50." AT 1948
           ELSE IF AVE <= 90 AND AVE >=88 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.75." AT 1948
           ELSE IF AVE <= 87 AND AVE >=85 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.00." AT 1948
           ELSE IF AVE <= 84 AND AVE >=82 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.25." AT 1948
           ELSE IF AVE <= 81 AND AVE >=79 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.50." AT 1948
           ELSE IF AVE <= 78 AND AVE >=76 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.75." AT 1948
           ELSE IF AVE = 75 THEN
               DISPLAY "EQUIVALENT OF GWA IS 3.00." AT 1948
           ELSE IF AVE <=74 THEN
               DISPLAY "YOU FAILED." AT 1948.

       EXT.
           DISPLAY " ".
       GETCH.
           DISPLAY "--------------------------" AT 2548
            DISPLAY "|" AT 2648
            "|" AT 2673
            DISPLAY "--------------------------" AT 2748
           DISPLAY "ENTER TO CONTINUE..." AT 2651
           ACCEPT GETCHE.
       END PROGRAM YOUR-PROGRAM-NAME.
