SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE ProcessMonthlyInterest
IS
BEGIN

    UPDATE Accounts
    SET Balance = Balance + (Balance * 0.01)
    WHERE AccountType = 'SAVINGS';

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        'Monthly Interest Processed Successfully'
    );

END;
/

EXEC ProcessMonthlyInterest;

SELECT * FROM Accounts;