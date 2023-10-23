      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. POS_NEG_NEUT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM PIC S9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "IDENTIFY IF IT IS POSITIVE, NEGATIVE OR NEUTRAL"
            DISPLAY "ENTER A NUMBER: "
            ACCEPT NUM

            IF NUM IS GREATER THAN 0 THEN
                DISPLAY "NUMBER IS POSITIVE."
            ELSE IF NUM IS LESS THAN 0 THEN
                DISPLAY "NUMBER IS NEGATIVE."
            ELSE IF NUM IS EQUAL 0 THEN
                DISPLAY "NUMBER IS NEUTRAL."
      *      ELSE
      *          DISPLAY "NUMBER IS NEUTRAL."
            STOP RUN.
       END PROGRAM POS_NEG_NEUT.
