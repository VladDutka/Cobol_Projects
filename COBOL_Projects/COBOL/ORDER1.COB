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
       01  orderNum PIC 9(4).
       01  totAmount PIC 9(4)V9(2).
       01  amountTendered PIC 9(4)V9(2).
       01  change PIC 9(4)V9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ORDER NUMBER:"
            ACCEPT orderNum.
            DISPLAY "TOTAL AMOUNT OF ORDER:"
            ACCEPT totAmount.
            DISPLAY "AMOUNT TENDERED:"
            ACCEPT amountTendered.

            SUBTRACT amountTendered FROM totAmount GIVING change.

            DISPLAY "CHANGE:" change

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
