      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIMENUMBERS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC 9(2).
       01  RMNDR PIC 9(2).
       01  ANS PIC 9(2).
       01  I PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DISPLAY THE PRIME NUMBER"
            DISPLAY "ENTER A NUMBER: "
            ACCEPT NUM.

            IF NUM = 0 OR NUM = 1 THEN
                DISPLAY NUM " IS NOT A PRIME NUMBER."
            ELSE IF NUM = 2 OR NUM = 3 THEN
                DISPLAY NUM " IS A PRIME NUMBER."

            ELSE
                DIVIDE NUM BY 2 GIVING ANS REMAINDER RMNDR
                DIVIDE NUM BY 3 GIVING ANS REMAINDER I

            IF RMNDR = 0 OR I = 0 THEN
                DISPLAY NUM " IS NOT A PRIME NUMBER."
            ELSE
                DISPLAY NUM " IS A PRIME NUMBER."


            STOP RUN.
       END PROGRAM PRIMENUMBERS.
