      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. SAMSUNG.
       OBJECT-COMPUTER. SAMSUNG.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
          SELECT INFO-FILE
          ASSIGN TO "C:\Users\ADMIN\INFO.DAT"
          ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD  INFO-FILE
           LABEL RECORD IS STANDARD
           DATA RECORD IS INFO-REC.
       01  INFO-REC.
           05  EMPID PIC X(5).
           05  EMPLN PIC A(10).
           05  EMPFN PIC A(10).
           05  EMPMN PIC A(10).
           05  POSTC PIC A(1).
           05  RPH PIC 999V99.
           05  RPHDP PIC $ZZ9.99.
           05  RPHDP1 PIC X(6).
           05  NHW PIC 999.
           05  NHWDP PIC ZZ9.
           05  NHLA PIC 99.
           05  NHLADP PIC Z9.

           05  GPAY PIC 9(5)V99.
           05  GPAYDP PIC $ZZ,999.99.
           05  TAX PIC 9999V99.
           05  TAXDP PIC $Z,Z99.99.
           05  BIR PIC 999V99.
           05  SSS PIC 999V99.
           05  DEDLATE PIC 999V99.
           05  DEDLATEDP PIC $ZZ9.99.
           05  DEDUCS PIC 9999V99.
           05  DEDUCSDP PIC $Z,Z99.99.
           05  NPAY PIC 9(5)V99.
           05  NPAYDP PIC $ZZ,999.99.

       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN OUTPUT INFO-FILE.
           DISPLAY "BANK INFORMATION" AT 0450
           DISPLAY "EMPLOYEE ID#: " AT 0640
           ACCEPT EMPID AT 0670
           DISPLAY "LAST NAME: " AT 0840
           ACCEPT EMPLN AT 0870
           DISPLAY "FIRST NAME: " AT 0940
           ACCEPT EMPFN AT 0970
           DISPLAY "MIDDLE NAME: " AT 1040
           ACCEPT EMPMN AT 1070
           DISPLAY "POSITION CODE: " AT 1240
           ACCEPT POSTC AT 1270
           DISPLAY "RATE PER HOUR: " AT 1340
           ACCEPT RPHDP1 AT 1370
           MOVE RPHDP1 TO RPH
           DISPLAY "NO. OF HOURS WORKED: " AT 1440
           ACCEPT NHWDP AT 1470
           MOVE NHWDP TO NHW
           DISPLAY "NO. OF HOURS LATE/ABSENT: " AT 1540
           ACCEPT NHLADP AT 1570
           MOVE NHLADP TO NHLA



           COMPUTE GPAY = RPH * NHW

      *=================================================================
           DISPLAY "EMPLOYEE ID#: " AT 1740
           DISPLAY EMPID AT 1770
           DISPLAY "EMPLOYEE NAME: " AT 1840
           DISPLAY EMPLN AT 1870
           DISPLAY EMPFN AT 1880
           DISPLAY EMPMN AT 1890
           DISPLAY "POSITION CODE: " AT 1940
           DISPLAY "RATE PER HOUR:" AT 2040
           MOVE RPH TO RPHDP
           DISPLAY RPHDP AT 2070
           DISPLAY "NO. OF HOURS WORKED:" AT 2140
           DISPLAY NHWDP AT 2170
           DISPLAY "NO. OF HOURS LATE/ABSENT:" AT 2240
           DISPLAY NHLADP AT 2270
           COMPUTE BIR = 0.0116 * GPAY
           COMPUTE SSS = 0.0363 * GPAY
           COMPUTE TAX = BIR + SSS
           DISPLAY "TAX:" AT 2340
           MOVE TAX TO TAXDP
           DISPLAY TAXDP AT 2370
           COMPUTE DEDLATE = NHLA * GPAY
           DISPLAY "LATES/ABSENCES:" AT 2440
           MOVE DEDLATE TO DEDLATEDP
           DISPLAY DEDLATEDP AT 2470
           MOVE DEDLATEDP TO DEDLATE
           COMPUTE DEDUCS = BIR + SSS + DEDLATE
           DISPLAY "TOTAL DEDUCTIONS:" AT 2540
           MOVE DEDUCS TO DEDUCSDP
           DISPLAY DEDUCSDP AT 2570
           DISPLAY "GROSS PAY" AT 2640
           MOVE GPAY TO GPAYDP
           DISPLAY GPAYDP AT 2670
           COMPUTE NPAY = GPAY - DEDUCS
           DISPLAY "NET PAY" AT 2740
           MOVE NPAY TO NPAYDP
           DISPLAY NPAYDP AT 2770
           IF POSTC = 'R' OR POSTC = 'r' THEN
                   DISPLAY "REGULAR" AT 1970
               ELSE IF POSTC = 'P' OR POSTC = 'p' THEN
                   DISPLAY "PART TIME" AT 1970
               ELSE IF POSTC = 'T' OR POSTC = 't' THEN
                   DISPLAY "TEMPORARY" AT 1970
               ELSE
                   DISPLAY "INVALID" AT 1970
           WRITE INFO-REC.
           CLOSE INFO-FILE.
            STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
