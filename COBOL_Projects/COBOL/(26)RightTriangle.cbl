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
       01  FIN PIC X(5) VALUE SPACES.
       01  ROWS PIC 9(2) VALUE 0.
       01  COLU PIC 9(2) VALUE 5.
       01  CTR PIC 9(2) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "RIGHT TRIANGLE ASTERISK"
            PERFORM VARYING ROWS FROM 1 BY 1 UNTIL ROWS > COLU
            MOVE ALL '*' TO FIN (CTR:ROWS)
            DISPLAY FIN
            END-PERFORM.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
