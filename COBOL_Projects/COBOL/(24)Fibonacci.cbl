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
       01  ENDING PIC 9(2).
       01  A PIC 9(4).
       01  B PIC 9(4).
       01  C PIC 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "FIBONACCI SEQUENCE"
           DISPLAY "ENTER LIMIT NUMBER OF SEQUENCE:"
           ACCEPT ENDING
           MOVE 1 TO A
           MOVE 1 TO B
           MOVE 1 TO C
           DISPLAY A
           DISPLAY B
           PERFORM UNTIL ENDING < 1

               COMPUTE C= A + B
               END-COMPUTE

               MOVE B TO A
               MOVE C TO B
               DISPLAY C

               COMPUTE ENDING = ENDING - 1
               END-COMPUTE

           END-PERFORM
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
