       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculateBonus.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEE-FILE ASSIGN TO 'employee.dat'
               ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD  EMPLOYEE-FILE.
       01  EMPLOYEE-RECORD.
           05 EMP-ID          PIC 9(5).
           05 EMP-NAME        PIC A(20).
           05 EMP-SALARY      PIC 9(7)V99.
           05 EMP-BONUS       PIC 9(5)V99.

       WORKING-STORAGE SECTION.
       01  EOF-FLAG           PIC X VALUE 'N'.
           88 END-OF-FILE     VALUE 'Y'.
       01  WS-BONUS-RATE      PIC 9(3)V99 VALUE 0.10.
       01  WS-TOTAL-BONUS     PIC 9(7)V99 VALUE 0.

       PROCEDURE DIVISION.
       1000-MAIN-PROCEDURE.
           OPEN I-O EMPLOYEE-FILE
           PERFORM UNTIL END-OF-FILE
               READ EMPLOYEE-FILE
                   AT END
                       SET END-OF-FILE TO TRUE
                   NOT AT END
                       COMPUTE EMP-BONUS = EMP-SALARY * WS-BONUS-RATE
                       ADD EMP-BONUS TO WS-TOTAL-BONUS
                       REWRITE EMPLOYEE-RECORD
               END-READ
           END-PERFORM
           CLOSE EMPLOYEE-FILE
           DISPLAY 'TOTAL BONUS PAID: ' WS-TOTAL-BONUS
           STOP RUN.

       END PROGRAM CalculateBonus.
