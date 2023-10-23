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
       01  NRS PIC 99.
       01  EXT PIC 9(2) VALUE 1.
       01  SPC PIC 9(10) VALUE 1.
       01  EXTR PIC 9(3) VALUE 1.
       01  REM PIC 9(3).
       01  QUO PIC 9(5).
       01  CLM PIC 99.
       01  RWS PIC 99.
       01  GT PIC Z.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIAMOND ASTERISK"
            DISPLAY "ENTER NUMBER OF ROWS: ".
            ACCEPT NRS.

            COMPUTE RWS = 04.
            COMPUTE CLM = 15.
            COMPUTE SPC = CLM - NRS.

            PERFORM VARYING EXT FROM 1 BY 1 UNTIL EXT > NRS
            PERFORM VARYING EXTR FROM 1 BY 1 UNTIL EXTR > SPC
                COMPUTE CLM = SPC
                DISPLAY " " LINE RWS COLUMN CLM

            END-PERFORM

             COMPUTE SPC = SPC - 1

            PERFORM VARYING EXTR FROM 1 BY 1 UNTIL EXTR > 2 * EXT - 1
            DIVIDE  EXTR BY 2 GIVING QUO REMAINDER REM

            DISPLAY "  DIAMOND ASTERISK"
      *DISPLAY OF ASTERISK HIGHER AREA
            IF (REM = 1)
                ADD 2 TO CLM
                DISPLAY "*" LINE RWS COLUMN CLM

            END-PERFORM

            ADD 1 TO RWS
            COMPUTE CLM = SPC

            END-PERFORM.

      *PABABA
            COMPUTE SPC = CLM + NRS

            PERFORM VARYING EXT FROM 1 BY 1 UNTIL EXT > NRS
            PERFORM VARYING EXTR FROM 1 BY 1 UNTIL EXTR > SPC

             COMPUTE CLM = SPC
             DISPLAY " " LINE RWS COLUMN CLM
            END-PERFORM

             ADD 1 TO SPC

             COMPUTE CLM = SPC - NRS + 1
             PERFORM VARYING EXTR FROM 1 BY 1 UNTIL EXTR > 2 *
             (NRS - EXT) - 1

             DIVIDE EXTR BY 2 GIVING QUO REMAINDER REM
      *DISPLAY OF ASTERISK LOWER AREA
             IF (REM = 1)
               ADD 2 TO CLM
              DISPLAY "*" LINE RWS COLUMN CLM

             END-PERFORM

             ADD 1 TO RWS

             END-PERFORM.
             PERFORM GETCH
            STOP RUN.
       GETCH.
           ACCEPT GT.
       END PROGRAM YOUR-PROGRAM-NAME.
