show databases;
use dbms_project;

create table Patient(
PatientID varchar(10) primary key,
name varchar(100),
contactNumber varchar(10),
age varchar(3),
gender varchar(10),
bloodGroup varchar(20),
address varchar(100),
anyMajorDisease varchar(500)
);
create table patientrecord(
PatientID varchar(10),
symptoms varchar(100),
diagnosis varchar(100),
medicines varchar(100),
wardRequired varchar(5),
typeOfWard varchar(10),
foreign key(PatientID) references Patient(PatientID) 
);
select * from patientrecord;
delete from patientrecord where patientID in(1);
select * from Patient;
