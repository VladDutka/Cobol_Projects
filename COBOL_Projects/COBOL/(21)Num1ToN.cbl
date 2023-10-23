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
       01  N PIC 9(2) VALUE 1.
       01  N1 PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       A-PARA.
           DISPLAY "NUMBERS FROM 1 TO N."
           DISPLAY "ENTER NUMBER: "
           ACCEPT N1.

       B-PARA.
           PERFORM C-PARA WITH TEST AFTER UNTIL N > N1.
           STOP RUN.

       C-PARA.
           DISPLAY "NUMBER : "N.
           ADD 1 TO N.
       END PROGRAM YOUR-PROGRAM-NAME.
