
-------------------------------------- Indexes --------------------------------------

CREATE NONCLUSTERED INDEX Branch_Name_IDX
ON Branch (Branch_Name)

CREATE NONCLUSTERED INDEX Course_Name_IDX
ON Course (Course_Name)

CREATE NONCLUSTERED INDEX Dept_Name_IDX
ON Department (Dep_Name)

CREATE NONCLUSTERED INDEX Website_Name_IDX
ON Freelancing (Website_Name)

CREATE NONCLUSTERED INDEX Instructor_Name_IDX
ON Instructor (Instructor_Name)

CREATE NONCLUSTERED INDEX ST_Fname_IDX
ON Student (Student_Fname)

CREATE NONCLUSTERED INDEX ST_Lname_IDX
ON Student (Student_Lname)

CREATE NONCLUSTERED INDEX Topic_Name_IDX
ON Topic (Topic_Name)

CREATE NONCLUSTERED INDEX Track_Name_IDX
ON Track (Track_Name)