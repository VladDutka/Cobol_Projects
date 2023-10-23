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
       01  N PIC 9(6).
       01  TEMP PIC 9(6).
       01  REMDR PIC 9.
       01  RVRS PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ENTER A NUMBER: "
            ACCEPT N.
            MOVE N TO Temp.

            PERFORM A-PARA UNTIL N = 0.
            DISPLAY "REVERSE OF " TEMP " IS " RVRS.

            IF RVRS = TEMP THEN
                DISPLAY RVRS " IS PALINDROME."
            ELSE
                DISPLAY RVRS " IS NOT A PALINDROME."
            END-IF.
            STOP RUN.
       A-PARA.
           DIVIDE N BY 10 GIVING N REMAINDER REMDR.
           COMPUTE RVRS = RVRS * 10 + REMDR.
       END PROGRAM YOUR-PROGRAM-NAME.
