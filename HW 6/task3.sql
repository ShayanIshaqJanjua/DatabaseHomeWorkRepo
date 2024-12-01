-- 1
SELECT DISTINCT waiter_no FROM restBill WHERE cust_name = 'Tanya Singh';
-- 2
SELECT room_date FROM restRoom_management WHERE room_date LIKE "1602%" AND headwaiter = 010 AND room_name = 'Green';
-- 3
SELECT r2.first_name, r2.surname FROM restStaff r1 INNER JOIN restStaff r2 ON r1.headwaiter = r2.headwaiter WHERE r1.first_name = 'Zoe' AND r1.surname = 'Ball' AND r2.first_name != 'Zoe';
-- 4
SELECT r1.cust_name, r1.bill_total, r2.first_name FROM restBill r1 INNER JOIN restStaff r2 ON r1.waiter_no = r2.staff_no ORDER BY r1.bill_total DESC;
-- 5
SELECT r3.first_name, r3.surname FROM restStaff r1 INNER JOIN restBill r2 ON r1.staff_no = r2.waiter_no INNER JOIN restStaff r3 ON r1.headwaiter = r3.headwaiter WHERE r2.bill_no = 00014 OR r2.bill_no = 00017 ; 
-- 6
SELECT first_name, surname FROM restStaff r1 INNER JOIN restRoom_management r2 WHERE r1.headwaiter = r2.headwaiter  AND room_name = 'Blue' AND room_date = '160312' OR r1.staff_no = r2.headwaiter  AND room_name = 'Blue' AND room_date = '160312';
