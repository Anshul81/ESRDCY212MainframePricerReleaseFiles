       IDENTIFICATION DIVISION.
       PROGRAM-ID. MainProgram.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Employee-ID              PIC 9(5).
       01 Employee-Data            PIC X(80).
       01 Net-Salary               PIC 9(7)V99.

       PROCEDURE DIVISION.
       BEGIN.
           PERFORM VARYING Employee-ID FROM 10001 BY 1 UNTIL Employee-ID > 10002
               CALL 'PayrollProcessing'
               CALL 'ReportGeneration' USING Employee-ID Employee-Data Net-Salary
           END-PERFORM.
           STOP RUN.
       END PROGRAM MainProgram.
