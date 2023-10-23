      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUMBER_TRIANGLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NIT PIC 99.
       01  NIT1 PIC Z9.
       01  NITS PIC 9.
       01  NITS1 PIC 9.
       01  CLMN PIC 99.
       01  RWS PIC 99.
       01  GT PIC Z.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.

            DISPLAY "INVERTED NUMBER TRIANGLE"
            DISPLAY "ENTER A NUMBER: "
            ACCEPT NIT1
            MOVE NIT1 TO NIT.
            COMPUTE CLMN = 01.
            COMPUTE RWS = 04.

            PERFORM VARYING NITS FROM NIT BY -1 UNTIL NITS < 1

            PERFORM VARYING NITS1 FROM NITS BY -1 UNTIL NITS1 < 1

               DISPLAY " INVERTED NUMBER TRIANGLE"
               DISPLAY " " NITS LINE RWS COLUMN CLMN

               ADD 2 TO CLMN

            END-PERFORM

                COMPUTE CLMN = 01

                ADD 1 TO RWS

                END-PERFORM.
                PERFORM GETCH

            STOP RUN.

       GETCH.
           ACCEPT GT.
       END PROGRAM NUMBER_TRIANGLE.
