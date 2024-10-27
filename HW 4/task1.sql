CREATE TABLE petPet (
  petname varchar(20) PRIMARY KEY,
  owner varchar(45),
  species varchar(45),
  gender ENUM('M', 'F'),
  birth DATE,
  death DATE 
);

CREATE TABLE petEvent (
  petname varchar(20),
  eventdate DATE,
  eventtype varchar(15),
  remark varchar(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname),
  PRIMARY KEY (petname, eventdate, eventtype)
);