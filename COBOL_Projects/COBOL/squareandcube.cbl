      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SQUAREANDCUBE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(3).
       01 SQUARE PIC 9(5).
       01 CUBE PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "SQUARE AND CUBE"
            DISPLAY "ENTER A NUMBER: "
            ACCEPT NUM.
            MULTIPLY NUM BY NUM GIVING SQUARE.
            DISPLAY "SQUARE VALUE: " SQUARE
            MULTIPLY SQUARE BY NUM GIVING CUBE.
            DISPLAY "CUBE VALUE: " CUBE
            STOP RUN.
       END PROGRAM SQUAREANDCUBE.
