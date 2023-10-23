      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TENDERISLESSTHAN.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  orderNum PIC 9(4).
       01  totAmount PIC 9(4)V9(2).
       01  amountTendered PIC 9(4)V9(2).
       01  change PIC 9(4)V9(2).
       01  INSUF PIC 9(4)V9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ORDER NUMBER: "
            ACCEPT orderNum
            DISPLAY "TOTAL AMOUNT: "
            ACCEPT totAmount
            DISPLAY "AMOUNT TENDERED: "
            ACCEPT amountTendered

            SUBTRACT amountTendered FROM totAmount GIVING change.

            IF amountTendered < totAmount THEN
            DISPLAY "AMOUNT TENDERED MUST BE GREATER THAN TOTAL AMOUNT."
      *      ELSE IF amountTendered < totAmount THEN
            SUBTRACT totAmount FROM amountTendered GIVING INSUF
            DISPLAY "INSUFFICIENT PAYMENT OF WORTH " INSUF

            ELSE
            DISPLAY "CHANGE: " change

            STOP RUN.
       END PROGRAM TENDERISLESSTHAN.
