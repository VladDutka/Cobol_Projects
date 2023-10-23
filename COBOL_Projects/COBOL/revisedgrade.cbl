      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FINALGWA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 PREL PIC 9(2).
       01 MIDT PIC 9(2).
       01 FINS PIC 9(2).
       01 AVER PIC 9(2)V9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DISPLAY AVERAGE AND ITS EQUIVALENT"
            DISPLAY " "
            DISPLAY "PRELIM GRADE: "
            ACCEPT PREL
            DISPLAY "MIDTERM GRADE: "
            ACCEPT MIDT
            DISPLAY "FINAL GRADE: "
            ACCEPT FINS

           COMPUTE AVER = (PREL + MIDT + FINS) / 3.

           DISPLAY AVER " IS THE GENERAL WEIGHTED AVERAGE."

           IF AVER <= 100 AND AVER >=97 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.00."
           ELSE IF AVER <= 96 AND AVER >=94 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.25."
           ELSE IF AVER <= 93 AND AVER >=91 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.50."
           ELSE IF AVER <= 90 AND AVER >=88 THEN
               DISPLAY "EQUIVALENT OF GWA IS 1.75."
           ELSE IF AVER <= 87 AND AVER >=85 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.00."
           ELSE IF AVER <= 84 AND AVER >=82 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.25."
           ELSE IF AVER <= 81 AND AVER >=79 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.50."
           ELSE IF AVER <= 78 AND AVER >=76 THEN
               DISPLAY "EQUIVALENT OF GWA IS 2.75."
           ELSE IF AVER = 75 THEN
               DISPLAY "EQUIVALENT OF GWA IS 3.00."
           ELSE
               DISPLAY "YOU FAILED."
            STOP RUN.
       END PROGRAM FINALGWA.
