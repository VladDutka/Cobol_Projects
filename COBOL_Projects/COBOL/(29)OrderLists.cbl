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
       01  TOTAMOUNT PIC 9(4)V9(2).
       01  ATENDERED PIC 9(4)V9(2).
       01  CHANGE PIC 9(4)V9(2).
       01  IAMOUNT PIC 9(4)V9(2).
       01  INUM PIC 9(2).
       01  CTR PIC 9(2) VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       A-PARA.
           DISPLAY "ORDER SYSTEM"
           DISPLAY "ENTER NUMBER OF ITEMS:"
           ACCEPT INUM.

       B-PARA.
           PERFORM C-PARA UNTIL CTR > INUM.

           DISPLAY "TOTAL AMOUNT " TOTAMOUNT
           DISPLAY "AMOUNT ATENDERED: "
           ACCEPT ATENDERED
           SUBTRACT ATENDERED FROM TOTAMOUNT GIVING CHANGE.
           DISPLAY "CHANGE: " CHANGE
           STOP RUN.

       C-PARA.

              DISPLAY "ITEM NO." CTR
              ADD 1 TO CTR.
              DISPLAY "ITEM AMOUNT:"
              ACCEPT IAMOUNT.
              ADD IAMOUNT TO TOTAMOUNT.
              GO TO B-PARA.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
