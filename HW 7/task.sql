--1
CREATE VIEW samsBills
AS SELECT s.first_name, s.surname, b.bill_date, b.cust_name, b.bill_total
FROM restStaff s, restBill b
ON s.staff_no = b.waiter_no
WHERE s.first_name = 'Sam' AND s.surname = 'Pitt';
--2
SELECT * FROM samsBills WHERE bill_total > 100;
--3
CREATE VIEW roomTotals (room_name, total_sum)
AS SELECT t.room_name, SUM(b.bill_total)
FROM restBill b, restRest_table t
ON b.table_no = t.table_no
GROUP BY t.room_name;
--4
CREATE VIEW teamTotals (headwaiter_name, total_sum)
AS SELECT CONCAT(h.first_name,' ', h.surname), SUM(b.bill_total)
FROM restBill b, restStaff s
ON b.waiter_no = s.staff_no
INNER JOIN restStaff h
ON s.headwaiter = h.staff_no
GROUP BY CONCAT(h.first_name, ' ', h.surname);


