CREATE TABLE student(
	Id INTEGER PRIMARY KEY,
	FirstName varchar (20),
	LastName varchar(30),
	DateOfBirth date,
	EnrolledDate date,
	Gender nchar(1),
	NationalIDNumber varchar(20) NULL,
	StudentCardNumber varchar(20)NULL
);


DROP TABLE IF EXISTS student;
SELECT * FROM student;

INSERT INTO student(Id,FirstName,LastName,DateOfBirth,EnrolledDate,Gender,NationalIDNumber,StudentCardNumber)
VALUES(1,'Angela','Nevcheva','1995-01-31','2022-10-15','F','3101','0131')

CREATE TABLE course(
	Id INTEGER PRIMARY KEY,
	Name varchar(50),
	Credit int,
	AcademicYear date,
	Semestar int
)

DROP TABLE IF EXISTS course;

INSERT INTO course(Id,Name,Credit,AcademicYear,Semestar)
VALUES(1,'Full Stuck Developer Program',240,'2022-10-15',4)

CREATE TABLE "Teacher"(
	Id INTEGER PRIMARY KEY,
	FirstName varchar(50),
	LastName varchar(50),
 	DateOfBirth date,
 	AcademicRank varchar (15),
 	HireDate date
	
)

INSERT INTO public."Teacher"(
	id, firstname, lastname, dateofbirth, academicrank, hiredate)
	VALUES (5, 'Ivo','Kostovski','1992-01-20', 'Magister', '2019-10-10'),
		   (3,'Todor','Pelivanov','1991-02-05', 'Magister', '2020-12-12')
		  
SELECT * FROM "Teacher";

CREATE TABLE grade(
	Id INTEGER PRIMARY KEY,
	StudentId int,
	CourseID int,
	TeacherID int,
	Grade smallint,
	Comment varchar(30),
	CreatedDate date
	
)

INSERT INTO public.grade(
	id, studentid, courseid, teacherid, grade, comment, createddate)
	VALUES (1, 2, 3, 1, 2.50, 'Good', '2023-05-20');

SELECT * FROM grade;



CREATE TABLE gradeDetails(
	ID INTEGER PRIMARY KEY,
	GradeID int,
	AchievementTypeID int,
	AchievementPoints int,
	AchievementMaxPoints int,
	AchievementDate date
	
)
INSERT INTO public.gradedetails(
	id, gradeid, achievementtypeid, achievementpoints, achievementmaxpoints, achievementdate)
	VALUES (1,2,1, 50, 100, '2023-05-20');
	
SELECT * FROM gradeDetails;
	
CREATE TABLE AchievementType(
 ID INTEGER PRIMARY KEY,
 Name varchar (50),
 Description varchar(100),
 ParticipationRate int
)
