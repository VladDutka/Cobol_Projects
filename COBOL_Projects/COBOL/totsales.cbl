      ******************************************************************
      * Author:Vlad Dutka
      * Date: 
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GPAYNPAY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 GPAY PIC 9(5).
       01 EMPNO PIC 9(5).
       01 EMPNAME PIC A(20).
       01 NPAY PIC 9999V99.
       01 NHOURS PIC 9(3).
       01 RHOURS PIC 9(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "GROSS PAY AND NET PAY"
            DISPLAY "EMPLOYEE NO.: "
            ACCEPT EMPNO.
            DISPLAY "EMPLOYEE NAME: "
            ACCEPT EMPNAME.
            DISPLAY "NO. OF HOURS: "
            ACCEPT NHOURS.
            DISPLAY "RATE PER HOUR: "
            ACCEPT RHOURS.

            MULTIPLY NHOURS BY RHOURS GIVING GPAY.
            DISPLAY "GROSS PAY: " GPAY

            COMPUTE NPAY = GPAY - (GPAY * 0.1).
            DISPLAY "NET PAY: " NPAY
            STOP RUN.
       END PROGRAM GPAYNPAY.
