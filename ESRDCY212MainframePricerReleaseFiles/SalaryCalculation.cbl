       IDENTIFICATION DIVISION.
       PROGRAM-ID. SalaryCalculation.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Employee-Salary          PIC 9(7)V99.
       01 Deductions               PIC 9(5)V99 VALUE 1500.50.
       01 Bonus                    PIC 9(5)V99 VALUE 2000.00.
       01 Net-Salary               PIC 9(7)V99.

       LINKAGE SECTION.
       01 Gross-Salary-IN          PIC 9(7)V99.
       01 Net-Salary-OUT           PIC 9(7)V99.

       PROCEDURE DIVISION USING Gross-Salary-IN Net-Salary-OUT.
       BEGIN.
           MOVE Gross-Salary-IN TO Employee-Salary
           COMPUTE Net-Salary = Employee-Salary - Deductions + Bonus
           MOVE Net-Salary TO Net-Salary-OUT
           GOBACK.
       END PROGRAM SalaryCalculation.
