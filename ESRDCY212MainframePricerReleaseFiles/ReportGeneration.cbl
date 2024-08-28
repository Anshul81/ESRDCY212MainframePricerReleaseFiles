       IDENTIFICATION DIVISION.
       PROGRAM-ID. ReportGeneration.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Report-Data              PIC X(100).
       01 Employee-ID-IN           PIC 9(5).
       01 Employee-Data-IN         PIC X(80).
       01 Net-Salary-IN            PIC 9(7)V99.

       PROCEDURE DIVISION USING Employee-ID-IN Employee-Data-IN Net-Salary-IN.
       BEGIN.
           STRING
               'Employee ID: ' DELIMITED BY SPACE
               Employee-ID-IN DELIMITED BY SIZE
               ', Data: ' DELIMITED BY SPACE
               Employee-Data-IN DELIMITED BY SIZE
               ', Net Salary: ' DELIMITED BY SPACE
               Net-Salary-IN DELIMITED BY SIZE
               INTO Report-Data

           DISPLAY "Salary Report: " Report-Data
           GOBACK.
       END PROGRAM ReportGeneration.
