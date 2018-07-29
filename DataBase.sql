DB User Name: db_HMS
password: hms


Create table Medicine
( 
Code number(10),
med_name varchar2(20),
price number(5) not null,
Description varchar2(100),
constraint med_pk primary key(code)
)

create sequence sque_Code
start with 1
increment by 1
nocycle;

create table ROOMS
(  room_id number(4),
room_No varchar2(10) not null,
room_available number(4), 
room_rate number(5), 
room_type varchar2(10) , 
room_Description varchar2(100) ,
constraint room_id_pk primary key(room_id)
)

create sequence sque_room_id
start with 1
increment by 1
nocycle;


Create table Employees
(  Emp_id number(7) ,
Emp_name varchar2(25) not null,
   Sex varchar2(7) not null,
   Salary number(6),
con_no varchar2(11),
 Experience varchar2(25),
 Emp_type varchar2(25),
 Emp_available number(1) ,
constraint emp_pk primary key(emp_id)

)
create sequence sque_Emp_id
start with 1
increment by 1
nocycle;




Create table Emp_doc_Spe
(  
SPE_id number(7) ,
Emp_id number(7) ,
SPE_TITLE varchar2(50) ,
SPE_DETAILS varchar2(200),
constraint emp_id_pk primary key(SPE_id)

)

create sequence sque_SPE_id
start with 1
increment by 1
nocycle;

Create table patient_doc
(

PID number(7) not null,
Emp_id number(7) not null,
startingDate DATE  not null,
endDate DATE  
)




Create table Patients
(   PID number(7),
    P_Name varchar2(15) not null,
    p_Age number (3) not null,
    P_Sex varchar2(6),
   P_con_no varchar2(15) not null,
 PAddress varchar2(50),
room_id number(4) not null,
constraint PID_pk primary key(PID),
constraint pid_room_fk foreign key(room_id) references  rooms(room_id)
)

create sequence sque_PID
start with 1
increment by 1
nocycle;
Create table treatment
(
treat_id number(7),
Date_Admitted DATE,
Date_Discharged DATE,
PID number(7),
constraint treat_id_pk primary key(treat_id)
)


create sequence sque_treat_id
start with 1
increment by 1
nocycle;


Create table patient_medicine
( PID number(7) not null,
  Code number(10) not null

)


login table
Create table Login
( 
log_id number(10),
user_id number(10) not null,
userName varchar2(100) not null,
passWord varchar2(100) ,
constraint login_pk primary key(log_id )
)


create sequence sque_log_id
start with 1
increment by 1
nocycle;


Create table Nurse_Rooms
( EID number(7) not null,
  Room_ID number(10) not null

)



VIEW

CREATE VIEW viewAvailableRooms AS select *from rooms  where ROOM_AVAILABLE=1 order by room_No ;



create or replace view viewAllAvailableDoctors as select *from EMPLOYEES where Emp_type='Doctor' and EMP_AVAILABLE=1    order by EMP_NAME








pl/sql

FUNCTION


1.
CREATE OR REPLACE FUNCTION totalAvailableCabinroom
RETURN number IS 
   total number(3) := 0;

   CURSOR room_cur is 
      SELECT *
      FROM ROOMS  where ROOM_AVAILABLE=1; 
   room_rec room_cur%rowtype; 
BEGIN 
   OPEN room_cur; 
   LOOP 
      FETCH room_cur into room_rec; 
      EXIT WHEN room_cur%notfound; 
IF (room_rec.room_type = 'Cabin') THEN
 
      total:=total+1; 
END IF;      

   END LOOP; 
   CLOSE room_cur;

   RETURN total; 

END; 
/ 

select  totalAvailableCabinroom() from dual


2.



CREATE OR REPLACE FUNCTION totalAvailableWord
RETURN number IS 
   total number(3) := 0;

   CURSOR room_cur is 
      SELECT *
      FROM ROOMS  where ROOM_AVAILABLE=1; 
   room_rec room_cur%rowtype; 
BEGIN 
   OPEN room_cur; 
   LOOP 
      FETCH room_cur into room_rec; 
      EXIT WHEN room_cur%notfound; 
IF (room_rec.room_type = 'Word') THEN
 
      total:=total+1; 
END IF;      

   END LOOP; 
   CLOSE room_cur;

   RETURN total; 

END; 
/ 

select  totalAvailableWord() from dual




3.



CREATE OR REPLACE FUNCTION totalMedicine
RETURN number IS 
   total number(4) := 0;

   CURSOR room_cur is 
      SELECT *
      FROM medicine; 
   room_rec room_cur%rowtype; 
BEGIN 
   OPEN room_cur; 
   LOOP 
      FETCH room_cur into room_rec; 
      EXIT WHEN room_cur%notfound; 

 
      total:=total+1; 
     

   END LOOP; 
   CLOSE room_cur;

   RETURN total; 

END; 
/ 

select  totalMedicine() from dual



cursor & record


DECLARE 
   CURSOR room_cur is 
      SELECT *
      FROM ROOMS; 
   room_rec room_cur%rowtype; 
BEGIN 
   OPEN room_cur; 
   LOOP 
      FETCH room_cur into room_rec; 
      EXIT WHEN room_cur%notfound; 
      DBMS_OUTPUT.put_line(room_rec.room_id|| ' ' || room_rec.room_No); 
   END LOOP; 
   CLOSE room_cur;
END; 
/
http://blog.mclaughlinsoftware.com/2008/05/12/php-code-to-read-a-plsql-reference-cursor/

https://stackoverflow.com/questions/2953566/can-i-return-values-to-php-from-an-anonymous-pl-sql-block


trigger
1.

CREATE TABLE Emp_trigger
( Emp_id number(7) ,
Emp_name varchar2(25) not null,
   Sex varchar2(7) not null,
   Salary number(6),
con_no varchar2(11),
 Experience varchar2(25),
 Emp_type varchar2(25),
 Emp_available number(1) 
)

CREATE OR REPLACE TRIGGER empInfo_before_update
AFTER UPDATE
   ON Employees
   FOR EACH ROW



BEGIN

   
  

   -- Insert record into audit table
   INSERT INTO Emp_trigger
   ( Emp_id ,
Emp_name ,
   Sex ,
   Salary,
con_no ,
 Experience ,
 Emp_type ,
 Emp_available  )

   VALUES
   ( 
 :new.Emp_id ,
 :old.Emp_name ,
    :old.Sex ,
    :old.Salary,
 :old.con_no ,
  :old.Experience ,
  :old.Emp_type ,
  :old.Emp_available 

);

END;

/



2.


CREATE TABLE room_trigger
( room_id number(4),
room_No varchar2(10) ,
room_available number(4), 
room_rate number(5), 
room_type varchar2(10) 
)

CREATE or replace TRIGGER roomInfo_After_update
AFTER UPDATE 
   ON Rooms
   FOR EACH ROW



BEGIN

   
   INSERT INTO room_trigger
   ( ROOM_ID,
	ROOM_NO,
	ROOM_AVAILABLE,
ROOM_RATE,
ROOM_TYPE  )

   VALUES
   ( 
 :old.ROOM_ID,
	:old.ROOM_NO,
	:old.ROOM_AVAILABLE	,
:old.ROOM_RATE	,
:old.ROOM_TYPE	 );

END;

/
3. 


CREATE TABLE medicine_trigger
( code number(4), 
price number(5) 
)

CREATE or replace TRIGGER medicineInfo_After_update
AFTER UPDATE 
   ON MEDICINE
   FOR EACH ROW



BEGIN

   
   INSERT INTO medicine_trigger
   ( code,
price )

   VALUES
   ( 
 :new.code,
	:old.MED_NAME	 );

END;

/



package::::::::::




CREATE OR REPLACE PACKAGE emp_package AS 

   PROCEDURE addEMP 
(
EEmp_name employees.Emp_name%type ,
ESex   employees.Sex%type ,
 ESalary  employees.Salary%type,
Econ_no employees.con_no%type ,
EExperience employees.Experience%type ,
Etype  employees.Emp_type%type ,
EEmp_available employees.Emp_available%type
);
   
   -- Removes a emp 
   PROCEDURE delEMP (EEmp_id  employees.Emp_id%TYPE); 
   
  
END emp_package; 
/



CREATE OR REPLACE PACKAGE BODY emp_package 
AS 
   PROCEDURE addEMP(
EEmp_name employees.Emp_name%type ,
ESex   employees.Sex%type ,
 ESalary  employees.Salary%type,
Econ_no employees.con_no%type ,
EExperience employees.Experience%type ,
Etype  employees.Emp_type%type ,
EEmp_available employees.Emp_available%type
) 
   IS 
   BEGIN 
      INSERT INTO EMPLOYEES( EMP_ID, EMP_NAME, SEX, SALARY, CON_NO, EXPERIENCE,Emp_type,Emp_available ) 
VALUES (sque_Emp_id.nextval, EEMP_NAME, ESEX, ESALARY, Econ_no, EExperience,Etype,EEmp_available)
; 
   END addEMP; 
   
   PROCEDURE delEMP(EEmp_id  employees.Emp_id%TYPE) IS 
   BEGIN 
      DELETE FROM EMPLOYEES 
      WHERE EMP_ID = EEmp_id; 
   END delEMP;  
   
  
   
END emp_package; 
/
