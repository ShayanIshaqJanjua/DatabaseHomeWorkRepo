-- 1
SELECT cust_name FROM restBill WHERE bill_no IN
( SELECT DISTINCT bill_no FROM restBill r1 INNER JOIN restStaff r2 ON r1.waiter_no = r2.staff_no WHERE r2.headwaiter = '010' AND r1.bill_total > 450);
-- 2
SELECT first_name, surname FROM restStaff WHERE staff_no IN ( SELECT headwaiter FROM restStaff r1 INNER JOIN restBill r2 ON r1.staff_no = r2.waiter_no WHERE cust_name = 'Nerida Smith' AND bill_date = '160111' );
-- 3
SELECT cust_name FROM restBill WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);
-- 4
SELECT DISTINCT first_name FROM restStaff WHERE staff_no NOT IN (SELECT waiter_no FROM restBill);
-- 5
SELECT DISTINCT cust_name, room_name, first_name, surname FROM restStaff r1 INNER JOIN restBill r2 INNER JOIN restRoom_management r3 ON r3.headwaiter = staff_no WHERE staff_no = (SELECT headwaiter FROM restStaff r1 INNER JOIN restBill r2 ON waiter_no = staff_no WHERE bill_total = (SELECT MAX(bill_total) FROM restBill)) AND bill_no = (SELECT bill_no FROM restStaff r1 INNER JOIN restBill r2 ON waiter_no = staff_no WHERE bill_total = (SELECT MAX(bill_total) FROM restBill));
