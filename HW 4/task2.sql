INSERT INTO petEvent VALUES('Fluffy','2020-10-15', 'vet', 'antibiotics');
INSERT INTO petPet VALUES('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);
INSERT INTO petEvent VALUES('Hammy', '2020-10-15', 'vet', 'antibiotics');
UPDATE petEvent SET remark ="5 kittens, 3 female, 2 male" WHERE petname = 'Fluffy';
UPDATE petEvent SET petname = 'Claws' WHERE eventdate = '1997-08-03';
INSERT INTO petEvent VALUES("Puffball", "2020-09-01", "death", NULL);
DELETE FROM petEvent WHERE petname = "Buffy";
DELETE FROM petPet WHERE petname = "Buffy";
