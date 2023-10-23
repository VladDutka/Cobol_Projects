      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SWAPPEDVAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 VAR1 PIC 9(2).
       01 VAR2 PIC 9(2).
       01 VAR3 PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "SWAPPING VALUES"
            DISPLAY "ENTER A NUMBER: "
            DISPLAY "VARIABLE 1: "
            ACCEPT VAR1.
            DISPLAY "VARIABLE 2: "
            ACCEPT VAR2.

            MOVE VAR1 TO VAR3.
            MOVE VAR2 TO VAR1.
            MOVE VAR3 TO VAR2.

            DISPLAY "SWAPPED VALUES"
            DISPLAY "VARIABLE 1: " VAR1
            DISPLAY "VARIABLE 2: " VAR2
            STOP RUN.
       END PROGRAM SWAPPEDVAL.
