
SET SERVEROUTPUT ON;

CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Salary NUMBER
);

CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee record inserted successfully.'
    );
END;
/

INSERT INTO Employee(EmployeeID, EmployeeName, Salary)
VALUES (101, 'Ravi', 25000);

COMMIT;

SELECT * FROM Employee;
