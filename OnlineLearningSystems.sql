
CREATE TABLE  account(
	UserID int,
	Username varchar(40),
	Password varchar(40),
	Email varchar(50),
    PRIMARY KEY (UserID)
);

CREATE INDEX student_index ON account(UserID);
CREATE TABLE student(
	StudentID int,
    UserID int,
    FirstName varchar(30),
    LastName varchar(30),
    BirthDate date,
	Highest_Degree varchar(30),
    Gender varchar(10),
	PRIMARY KEY (StudentID),
	CONSTRAINT student_fk FOREIGN KEY (UserID) REFERENCES account(UserID) ON DELETE CASCADE
);

CREATE INDEX instructor_index ON account(UserID);
CREATE TABLE instructor(
    InstructorID int,
    UserID int,
    FirstName varchar(30),
    LastName varchar(30),
    BirthDate date,
	Highest_Degree varchar(30),
    Gender varchar(10),
    PRIMARY KEY (InstructorID) ,
	CONSTRAINT instructor_fk FOREIGN KEY (UserID) REFERENCES account(UserID) ON DELETE CASCADE

);


CREATE INDEX instructor_index ON instructor (LastName);
CREATE TABLE courses(
	Course_ID int,
    Instructor_Name varchar(30),
    Title varchar(30),
    Rate int,
    Semester_Hour int,
    Description varchar(300),
    Published_date date,
    PRIMARY KEY (Course_ID),
    CONSTRAINT courses_ibfk_1 FOREIGN KEY (Instructor_Name) REFERENCES  instructor(LastName) ON DELETE CASCADE
);

CREATE INDEX quiz_index ON courses(Course_ID);
CREATE TABLE quiz(
	Quiz_ID int,
    Course_ID int,
    Title varchar(50),
    Grade int,
    NO_Question int,
    Quiz_duration int,
    PRIMARY KEY (Quiz_ID),
	CONSTRAINT quiz_fk FOREIGN KEY (Course_ID) REFERENCES courses(Course_ID)
);

CREATE TABLE assignment(
	Assignment_ID int,
    Course_ID  int, 
    Title varchar(50),
    Grade int,
    DeadLine datetime,
    PRIMARY KEY (Assignment_ID),
    CONSTRAINT assignment_fk FOREIGN KEY (Course_ID) REFERENCES courses(Course_ID) ON DELETE CASCADE
);

CREATE INDEX feedback_index ON student(StudentID);
CREATE INDEX feedback_index ON quiz(Quiz_ID);
CREATE TABLE feedback(
	FeedBack_ID int,
    Quiz_ID int,
    Support_ID int,
    Description varchar(350),
    PRIMARY KEY (FeedBack_ID),
	CONSTRAINT feedback_fk1 FOREIGN KEY (Support_ID) REFERENCES support(Support_ID) ON DELETE CASCADE,
	CONSTRAINT feedback_fk2 FOREIGN KEY (Quiz_ID) REFERENCES quiz(Quiz_ID) ON DELETE CASCADE
);


CREATE INDEX address_index ON account(UserID);
CREATE TABLE address(
	Address_ID int,
    UserID int ,
    Country varchar(30),
    State varchar(30),
    City varchar(30),
    Zip varchar(20),
    Phone_NO int,
    PRIMARY KEY (Address_ID),
	CONSTRAINT address_fk FOREIGN KEY (UserID) REFERENCES account(UserID) ON DELETE CASCADE
);

CREATE INDEX certificate_index ON  student(FirstName);
CREATE INDEX certificate2_index ON  student(LastName);
CREATE TABLE certificate(
	Certificate_ID int,
    Course_ID int ,
    FirstName varchar(30),
    LastName varchar(30),
    AchivedDate datetime,
    Grade int,
    Description varchar(250),
    PRIMARY KEY (Certificate_ID),
    CONSTRAINT certificate_fk1 FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID) ON DELETE CASCADE,
	CONSTRAINT certificate_fk2 FOREIGN KEY (FirstName) REFERENCES  student(FirstName) ON DELETE CASCADE,
	CONSTRAINT certificate_fk3 FOREIGN KEY (LastName) REFERENCES  student(LastName) ON DELETE CASCADE
);


CREATE TABLE Support(
	Support_ID int ,
    UserID int ,
    FirstName varchar(30) , 
    LastName varchar(30),
    BirthDate datetime , 
    Gender varchar(10),
    Department varchar(20),
    PRIMARY KEY (Support_ID)
);
