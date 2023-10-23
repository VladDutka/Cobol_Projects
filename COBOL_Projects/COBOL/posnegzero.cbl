      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. POSITIVENEGATIVENEUTRAL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC S9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "POSITIVE, NEGATIVE OR ZERO"
            DISPLAY "ENTER A NUMBER: "
            ACCEPT NUM.

            IF NUM GREATER THAN 0 THEN
            DISPLAY NUM " IS A POSITIVE NUMBER"
            ELSE IF NUM LESS THAN 0 THEN
            DISPLAY NUM " IS A NEGATIVE NUMBER"
            ELSE IF NUM EQUAL TO 0 THEN
            DISPLAY NUM "IS A NEUTRAL NUMBER"
            STOP RUN.
       END PROGRAM POSITIVENEGATIVENEUTRAL.
