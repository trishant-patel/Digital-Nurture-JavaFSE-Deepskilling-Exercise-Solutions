SET SERVEROUTPUT ON;

DECLARE
    CURSOR cust_cursor IS
        SELECT CustomerID
        FROM Customers
        WHERE Balance > 10000;
BEGIN

    FOR cust_rec IN cust_cursor LOOP

        UPDATE Customers
        SET IsVIP = 'TRUE'
        WHERE CustomerID = cust_rec.CustomerID;

        DBMS_OUTPUT.PUT_LINE(
            'VIP Status Granted to Customer ID: '
            || cust_rec.CustomerID
        );

    END LOOP;

    COMMIT;
END;
/

SELECT * FROM Customers;