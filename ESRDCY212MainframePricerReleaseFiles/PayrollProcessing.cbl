       IDENTIFICATION DIVISION.
       PROGRAM-ID. PayrollProcessing.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Employee-ID              PIC 9(5).
       01 Employee-Data            PIC X(80).
       01 Gross-Salary             PIC 9(7)V99.
       01 Net-Salary               PIC 9(7)V99.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter Employee ID: "
           ACCEPT Employee-ID

           CALL 'EmployeeData' USING Employee-ID Employee-Data
           DISPLAY "Employee Data: " Employee-Data

           MOVE FUNCTION NUMVAL-F (Employee-Data (50:8)) TO Gross-Salary

           CALL 'SalaryCalculation' USING Gross-Salary Net-Salary
           DISPLAY "Net Salary: " Net-Salary
           GOBACK.
       END PROGRAM PayrollProcessing.
