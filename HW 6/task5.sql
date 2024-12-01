-- 1 
SELECT first_name, surname, COUNT(*) FROM restStaff r1 INNER JOIN restBill r2 ON r1.staff_no = r2.waiter_no GROUP BY staff_no HAVING COUNT(*) >= 2;
-- 2
SELECT DISTINCT r2.room_name, COUNT(table_no) FROM restRoom_management r1 INNER JOIN restRest_table r2 ON r1.room_name = r2.room_name WHERE r2.no_of_seats > 6 GROUP BY r2.room_name;
-- 3
SELECT r3.room_name, SUM(r1.bill_total) FROM restBill r1 INNER JOIN restRest_table r2 ON r1.table_no = r2.table_no INNER JOIN restRoom_management r3 ON r2.room_name = r3.room_name GROUP BY r3.room_name;
-- 4
SELECT r3.first_name, r3.surname, SUM(bill_total) FROM restStaff r1 INNER JOIN restBill r2 ON r1.staff_no = r2.waiter_no INNER JOIN restStaff r3 ON r1.headwaiter = r3.staff_no GROUP BY r3.staff_no ORDER BY SUM(bill_total) DESC;
-- 5
SELECT cust_name, AVG(bill_total) FROM restBill WHERE AVG(bill_total) > 400 GROUP BY cust_name;
-- 6
SELECT first_name, surname, COUNT(bill_date) FROM restStaff r1 INNER JOIN restBill r2 ON r1.staff_no = r2.waiter_no GROUP BY first_name, surname HAVING COUNT(bill_date) > 3;