      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VOWEL_OR_CONSONANT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  LETTER PIC A(1).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "IDENTIFY IF IT IS A VOWEL OR CONSONANT."
            DISPLAY "ENTER A LETTER: "
            ACCEPT LETTER

            IF LETTER = 'A' OR LETTER = 'a' OR
               LETTER = 'E' OR LETTER = 'e' OR
               LETTER = 'I' OR LETTER = 'i' OR
               LETTER = 'O' OR LETTER = 'o' OR
               LETTER = 'U' OR LETTER = 'u' THEN
                DISPLAY LETTER " IS A VOWEL LETTER."
            ELSE
                DISPLAY LETTER " IS A CONSONANT LETTER."
            STOP RUN.
       END PROGRAM VOWEL_OR_CONSONANT.
