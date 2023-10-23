      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ODDOREVEN.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC 9(2).
       01  MODU PIC 9(2).
       01  A   PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ODD OR EVEN NUMBER"
            DISPLAY "ENTER A NUMBER:"
            ACCEPT NUM.

            DIVIDE NUM BY 2 GIVING A REMAINDER MODU.

            IF MODU IS EQUAL TO 0
                DISPLAY "EVEN NUMBER"
            ELSE
                DISPLAY "ODD NUMBER"
            STOP RUN.
       END PROGRAM ODDOREVEN.
