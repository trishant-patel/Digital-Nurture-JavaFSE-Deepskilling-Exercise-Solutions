SET SERVEROUTPUT ON;

DECLARE
    CURSOR cust_cursor IS
        SELECT CustomerID
        FROM Customers
        WHERE Age > 60;
BEGIN
    FOR cust_rec IN cust_cursor LOOP

        UPDATE Loans
        SET InterestRate = InterestRate - 1
        WHERE CustomerID = cust_rec.CustomerID;

        DBMS_OUTPUT.PUT_LINE(
            'Discount Applied for Customer ID: '
            || cust_rec.CustomerID
        );

    END LOOP;

    COMMIT;
END;
/

SELECT * FROM Loans;