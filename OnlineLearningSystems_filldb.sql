INSERT INTO account (UserID, Username, Password, Email)
 VALUES (1,'ibailey','b67ead2c86d2ddf14f8cc35d4fe7c96bd322c965','elenora.dubuque@example.com'),
 (2,'cbartoletti','ced7056f43ee4100ae5e19a0aab3cc6344966e6d','rosenbaum.rhea@example.org'),
 (3,'mlarkin','1e6b22c4fb7593ec42a43250a954c0cff4c25533','dmoen@example.com'),
 (4,'heidenreich.mollie','bd0fd925a910c34997ddd838d8aca6b4b222be19','bgrimes@example.com'),
 (5,'atrantow','8fe2f55df8522e403e457e39afcd38620e1be9c8','osinski.green@example.com'),
 (6,'laverna60','8bb96f97a322fdc71a7116e04949db0a9b53f958','elisa67@example.net'),
 (7,'robb.harris','5edcbbddfb8dbde147a7d09bf572edf2495e3591','randi24@example.com'),
 (8,'theodora.will','4e538ff4c9491567a741f74904c42a523d554c23','walter.osvaldo@example.com'),
 (9,'alexys.graham','17c17c6f84fc23081296d591f69098788583954d','pmurray@example.net'),
 (10,'qschneider','069d74210ef56754ecd167c832fb77387a87a63f','felix.adams@example.com'),
 (11,'carmstrong','e5794cbbc02c9706d326b9d93d551b7bf507444a','altenwerth.monroe@example.net'),
 (12,'delilah.herman','8e24582d8faae078f9b730fad22c30a6a3c8fa8c','o\'kon.nona@example.net'),
 (13,'kortiz','86ae6a6f28c3ecbf21fb716e5bf8871c05721168','mireille27@example.org'),
 (14,'ayden77','089368c8734b8cdd051bd84ad0473e54264c7a43','haley.tillman@example.com'),
 (15,'kyra67','7a35ea60383ffc5f6ca2b93def920ad120a29013','armand19@example.net'),
 (16,'tad51','76d0a62cfdad8e36e14cbc400377bce8e7d901cb','carmella16@example.org'),
 (17,'troy53','0146637620ce7a43d32dcb1127fcb1e80f06766b','raheem92@example.org'),
 (18,'nolan.frances','080bd73727f5c93c8c2e012b5a8aefb0958814a4','runolfsson.salvador@example.org'),
 (19,'ppacocha','af0f0adc32f639639d91b8513bbfbe99015de510','mueller.bella@example.net'),
 (20,'lexie.turner','2f6226f6ee984410b7d12193c7a0439872dafd0c','schuppe.nichole@example.org');




INSERT INTO student (StudentID, UserID, FirstName, LastName, BirthDate, Highest_Degree, Gender)
VALUES (1,1,'Godfrey','Davis','1972-07-15','Bachelor','M'),
 (2,2,'Toney','Dicki','2006-09-11','Bachelor','M'),
 (3,3,'Lura','Hirthe','1997-08-26','Master','M'),
 (4,4,'Ezra','Romaguera','1989-08-28','Bachelor','F'),
 (5,5,'Prudence','Denesik','2011-09-29','Bachelor','F'),
 (6,6,'Barton','Donnelly','2020-08-16','Master','M'),
 (7,7,'Naomie','Dickinson','1995-09-17','Master','F'),
 (8,8,'Kaelyn','Lind','1977-05-23','Bachelor','M'),
 (9,9,'Larissa','Adams','1976-09-20','Master','F'),
 (10,10,'Betsy','Koelpin','1993-03-18','Bachelor','F');


INSERT INTO instructor (InstructorID, UserID, FirstName, LastName, BirthDate, Highest_Degree, Gender)
VALUES (1,11,'Janie','Collins','2012-08-02','Doctor','M'),
 (2,12,'Anjali','Haley','2011-05-31','professor','M'),
 (3,13,'Darwin','Gulgowski','2005-07-22','Doctor','F'),
 (4,14,'Alicia','Durgan','1987-06-13','professor','M'),
 (5,15,'Waylon','Mraz','1980-08-31','Doctor','F');


INSERT INTO support (Support_ID, UserID, FirstName, LastName, BirthDate, Gender, Department)
VALUES (1,16,'Mina','Bernhard','2008-03-01','F','English'),
 (2,17,'Aubrey','Schulist','1985-10-20','M','Mathematics'),
 (3,18,'Naomie','Fahey','1998-05-25','M' , 'Computer'),
 (4,19,'Nyah','Jaskolski','1980-05-08','F', 'History'),
 (5,20,'Marcella','Gutmann','2018-03-11','M', 'Computer');



INSERT INTO courses (Course_ID, Instructor_Name, Title, Rate, Semester_Hour, Description, Published_date)
VALUES (1, 'Collins', 'Computer Science', 5, 3, 'This course covers the fundamentals of computer science.', '2020-01-01'),
       (2, 'Mraz', 'Mathematics', 4, 4, 'This course covers the fundamentals of mathematics.', '2020-02-02'),
       (3, 'Durgan', 'English', 3, 2, 'This course covers the fundamentals of English.', '2020-03-03'),
       (4, 'Collins', 'algorithms and Data Strcture', 4, 3, 'This course covers the fundamentals of history.', '2020-04-04');


INSERT INTO quiz (Quiz_ID, Course_ID, Title, Grade, NO_Question, Quiz_duration)
VALUES (1, 3, 'Computer Science Quiz', 90, 10, 30),
       (2, 4, 'Mathematics Quiz', 80, 15, 45),
       (3, 2, 'English Quiz', 70, 20, 60),
       (4, 1, 'History Quiz', 60, 25, 75);


INSERT INTO assignment (Assignment_ID, Course_ID, Title, Grade, DeadLine)
VALUES (1, 3, 'Computer Science Assignment', 90, '2020-05-01'),
       (2, 2, 'Mathematics Assignment', 80, '2020-06-02'),
       (3, 4, 'English Assignment', 70, '2020-07-03'),
       (4, 1, 'History Assignment', 60, '2020-08-04');


INSERT INTO feedback (FeedBack_ID, Quiz_ID, Support_ID, Description)
VALUES (1, 1, 5,'This quiz was very difficult.'),
       (2, 2, 2,'This quiz was not too difficult.'),
       (3, 3, 1,'This quiz was quite easy.'),
       (4, 4, 3,'This quiz was very easy.');

INSERT INTO address (Address_ID, UserID, Country, State, City, Zip, Phone_NO)
VALUES (1,1,'Argentina','Iowa','Tateville','3196',854087),
(2,2,'Guam','Wyoming','Carmellamouth','2452',0),
(3,3,'Oman','WestVirginia','East Prudence','2950',678),
(4,4,'Macao','Maine','Bartonside','3666',0),
(5,5,'Martinique','Illinois','Lake Gerhardfort','3445',0),
(6,6,'Philippines','WestVirginia','Lilyside','2912',812737334),
(7,7,'France','Tennessee','Brendenberg','3096',593312),
(8,8,'Mauritius','Georgia','Port Toy','3386',0),
(9,9,'Nauru','Michigan','New Makenzieville','3232',1),
(10,10,'Saint Pierre and Miquelon','Ohio','Raulhaven','2576',0),
(11,11,'Palau','Maryland','Donnafurt','2714',661),
(12,12,'Lao People\'s Democratic Republ','NewMexico','Dachchester','2600',1),
(13,13,'Isle of Man','Indiana','Harveyton','2760',258),
(14,14,'Palau','Maine','West Jennifermouth','3598',585),
(15,15,'Macedonia','NewYork','Strackebury','3613',6),
(16,16,'Dominican Republic','Oregon','Whitneychester','3227',1),
(17,17,'Saint Helena','District of Columbia','South Earl','3305',21),
(18,18,'Kenya','Tennessee','Lake Clarachester','3125',1),
(19,19,'Azerbaijan','Arizona','Mrazville','2970',1),
(20,20,'Reunion','NewYork','North Willardstad','3570',0);


INSERT INTO certificate (Certificate_ID, Course_ID, FirstName, LastName, AchivedDate, Grade, Description)
VALUES (1, 1, 'Toney','Dicki', '2020-09-01', 90, 'Excellent'),
       (2, 2, 'Naomie','Dickinson', '2020-10-02', 80, 'Good'),
       (3, 3, 'Betsy','Koelpin', '2020-11-03', 70, 'Average'),
       (4, 4, 'Ezra','Romaguera', '2020-12-04', 60, 'Below Average');
       

 