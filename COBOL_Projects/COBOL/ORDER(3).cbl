      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ORDERTENDER.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  ONUM PIC 9(5).
       01  OTEND PIC 9(4)V9(2).
       01  ATOT PIC 9(4)V9(2).
       01  CHA PIC 9(4)V9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "CACULATE THE CHANGE"
            DISPLAY "ORDER NUMBER: "
            ACCEPT ONUM
            DISPLAY "TOTAL AMOUNT: "
            ACCEPT ATOT
            DISPLAY "ORDER TENDERED: "
            ACCEPT OTEND

            SUBTRACT ATOT FROM OTEND GIVING CHA.

            DISPLAY "CHANGE: " CHA
            STOP RUN.
       END PROGRAM ORDERTENDER.
