       IDENTIFICATION DIVISION.
       PROGRAM-ID. SampleProgram.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. IBM-370.
       OBJECT-COMPUTER. IBM-370.

       DATA DIVISION.
       FILE SECTION.
       FD  EMPLOYEE-FILE.
       01  EMPLOYEE-RECORD.
           05 EMP-ID         PIC 9(5).
           05 EMP-NAME       PIC A(20).
           05 EMP-SALARY     PIC 9(7)V99.

       WORKING-STORAGE SECTION.
       01  WS-TOTAL-SALARY   PIC 9(7)V99 VALUE 0.
       01  WS-EMPLOYEE-COUNT PIC 9(3)    VALUE 0.

       PROCEDURE DIVISION.
       0000-MAIN-PARA.
           OPEN INPUT EMPLOYEE-FILE
           PERFORM UNTIL EOF-FLAG = 'Y'
               READ EMPLOYEE-FILE
                   AT END
                       MOVE 'Y' TO EOF-FLAG
                   NOT AT END
                       ADD EMP-SALARY TO WS-TOTAL-SALARY
                       ADD 1 TO WS-EMPLOYEE-COUNT
               END-READ
           END-PERFORM
           CLOSE EMPLOYEE-FILE
           DISPLAY 'TOTAL SALARY: ' WS-TOTAL-SALARY
           DISPLAY 'EMPLOYEE COUNT: ' WS-EMPLOYEE-COUNT
           STOP RUN.

       0000-END-MAIN.
