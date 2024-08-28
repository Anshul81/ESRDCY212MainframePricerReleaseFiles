       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmployeeData.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Employee-Record.
           05 Employee-ID          PIC 9(5).
           05 Employee-Name        PIC X(30).
           05 Employee-Role        PIC X(20).
           05 Employee-Salary      PIC 9(7)V99.

       LINKAGE SECTION.
       01 Employee-ID-IN          PIC 9(5).
       01 Employee-Data-OUT       PIC X(80).

       PROCEDURE DIVISION USING Employee-ID-IN Employee-Data-OUT.
       BEGIN.
           PERFORM Retrieve-Employee-Data
           GOBACK.

       Retrieve-Employee-Data.
           IF Employee-ID-IN = 10001
               MOVE '10001 John Doe        Developer   75000.50' TO Employee-Data-OUT
           ELSE IF Employee-ID-IN = 10002
               MOVE '10002 Jane Smith      Manager     85000.00' TO Employee-Data-OUT
           ELSE
               MOVE '00000 Unknown         Unknown     00000.00' TO Employee-Data-OUT.
       END PROGRAM EmployeeData.
