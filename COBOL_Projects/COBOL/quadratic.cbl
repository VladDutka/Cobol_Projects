      ******************************************************************
      * Author:Vlad Dutka
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ROQ.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  A PIC 9(2).
       01  B PIC 9(2).
       01  C PIC 9(2).
       01  D PIC 9(2).
       01  ROOT1 PIC S9(2)V9(2).
       01  ROOT2 PIC S9(2)V9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ROOTS OF QUADRATIC"
            DISPLAY "VALUE OF A: "
            ACCEPT A.
            DISPLAY "VALUE OF B: "
            ACCEPT B.
            DISPLAY "VALUE OF C: "
            ACCEPT C.

            DISPLAY "QUADRATIC EQUATION: " A "x^2 " B "x" " " C

            COMPUTE D = (B*B) - (4*A*C).
            COMPUTE ROOT1 = (-B + FUNCTION SQRT(D))  / (2*A).
            COMPUTE ROOT2 = (-B - FUNCTION SQRT(D))  / (2*A).

            DISPLAY "ROOT 1: " ROOT1
            DISPLAY "ROOT 2: " ROOT2
            STOP RUN.
       END PROGRAM ROQ.
