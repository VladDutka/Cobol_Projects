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
       01  N PIC 9(2).
       01  CTR PIC 9(2).
       01  FCTRL PIC 9(6) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       A-PARA.
           DISPLAY "FACTORIAL OF A NUMBER.".
           DISPLAY "ENTER A NUMBER.".
           ACCEPT N.
           PERFORM B-PARA UNTIL CTR = N.
           DISPLAY "THE FACTORIAL IS".
           DISPLAY FCTRL.
           STOP RUN.
       B-PARA.
           ADD 1 TO CTR.
           COMPUTE FCTRL = FCTRL * CTR.
       END PROGRAM YOUR-PROGRAM-NAME.
