CREATE TABLE public."class" (
	classid int4 NOT NULL,
	subjectid int4 NOT NULL,
	classroomid int4 NOT NULL,
	teacherid int4 NOT NULL,
	CONSTRAINT class_pkey PRIMARY KEY (classid),
	CONSTRAINT class_classroomid_fkey FOREIGN KEY (classroomid) REFERENCES public.classroomid(classroomid),
	CONSTRAINT class_subjectid_fkey FOREIGN KEY (subjectid) REFERENCES public.subject(subjectid),
	CONSTRAINT class_teacherid_fkey FOREIGN KEY (teacherid) REFERENCES public.teacher(teacherid)
);

CREATE TABLE public.classroomid (
	classroomid int4 NOT NULL,
	capacity int4 NOT NULL,
	room_type int4 NOT NULL,
	CONSTRAINT classroomid_pkey PRIMARY KEY (classroomid)
);

CREATE TABLE public.student (
	studentid int4 NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	phone_number varchar(30) NOT NULL,
	CONSTRAINT student_pkey PRIMARY KEY (studentid)
);

CREATE TABLE public.student_classes (
	studentid int4 NOT NULL,
	classid int4 NOT NULL,
	CONSTRAINT student_classes_classid_fkey FOREIGN KEY (classid) REFERENCES public."class"(classid),
	CONSTRAINT student_classes_studentid_fkey FOREIGN KEY (studentid) REFERENCES public.student(studentid)
);

CREATE TABLE public.subject (
	subjectid int4 NOT NULL,
	requirements varchar(30) NOT NULL,
	max_capacity int4 NOT NULL,
	CONSTRAINT subject_pkey PRIMARY KEY (subjectid)
);

CREATE TABLE public.teacher (
	teacherid int4 NOT NULL,
	title varchar(30) NOT NULL,
	first_name varchar(30) NULL,
	last_name varchar(30) NULL,
	CONSTRAINT teacher_pkey PRIMARY KEY (teacherid)
);