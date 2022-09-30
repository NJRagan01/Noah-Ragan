CREATE TABLE Student
(
  StudentID INT NOT NULL,
  First_Name VARCHAR(30) NOT NULL,
  Last_Name VARCHAR(30) NOT NULL,
  Phone_Number VARCHAR(30) NOT NULL,
  PRIMARY KEY (StudentID)
);

CREATE TABLE Subject
(
  SubjectID INT NOT NULL,
  Requirements VARCHAR(30) NOT NULL,
  Max_Capacity INT NOT NULL,
  PRIMARY KEY (SubjectID)
);

CREATE TABLE ClassroomID
(
  ClassroomID INT NOT NULL,
  Capacity INT NOT NULL,
  Room_Type INT NOT NULL,
  Facilities INT NOT NULL,
  PRIMARY KEY (ClassroomID)
);

CREATE TABLE Teacher
(
  TeacherID INT NOT NULL,
  First_Name INT NOT NULL, 
  Last_Name INT NOT NULL,
  Title VARCHAR(30) NOT NULL,
  Subjects_Taught VARCHAR(30) NOT NULL,
  Level INT NOT NULL,
  PRIMARY KEY (TeacherID)
);

CREATE TABLE Class
(
  ClassID INT NOT NULL,
  SubjectID INT NOT NULL,
  ClassroomID INT NOT NULL,
  TeacherID INT NOT NULL,
  PRIMARY KEY (ClassID),
  FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID),
  FOREIGN KEY (ClassroomID) REFERENCES ClassroomID(ClassroomID),
  FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);

CREATE TABLE Student_Classes
(
  StudentID INT NOT NULL,
  ClassID INT NOT NULL,
  FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
  FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);
