USE [master]
GO
/****** Object:  Database [CareerPathNavigator]    Script Date: 11/24/2024 10:07:52 PM ******/
CREATE DATABASE [CareerPathNavigator]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CareerPathNavigator', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CareerPathNavigator.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CareerPathNavigator_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CareerPathNavigator_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CareerPathNavigator] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CareerPathNavigator].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CareerPathNavigator] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET ARITHABORT OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CareerPathNavigator] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CareerPathNavigator] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CareerPathNavigator] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CareerPathNavigator] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET RECOVERY FULL 
GO
ALTER DATABASE [CareerPathNavigator] SET  MULTI_USER 
GO
ALTER DATABASE [CareerPathNavigator] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CareerPathNavigator] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CareerPathNavigator] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CareerPathNavigator] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CareerPathNavigator] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CareerPathNavigator] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CareerPathNavigator', N'ON'
GO
ALTER DATABASE [CareerPathNavigator] SET QUERY_STORE = ON
GO
ALTER DATABASE [CareerPathNavigator] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CareerPathNavigator]
GO
/****** Object:  Table [dbo].[Background]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Background](
	[backgroundId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[instituteName] [varchar](100) NOT NULL,
	[degreeTitle] [varchar](100) NOT NULL,
	[degreeLevel] [varchar](100) NOT NULL,
	[TotalMarks] [float] NOT NULL,
	[ObtainedMarks] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[backgroundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[courseTitle] [varchar](max) NOT NULL,
	[providerSource] [varchar](max) NOT NULL,
	[durationCourse] [varchar](max) NULL,
	[courseLevel] [varchar](max) NOT NULL,
	[prerequisites] [varchar](max) NULL,
	[skillsCovered] [varchar](max) NOT NULL,
	[courseFees] [varchar](max) NULL,
	[certification] [varchar](max) NOT NULL,
	[status] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[courseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[degreeId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[degreeTitle] [varchar](max) NOT NULL,
	[instituition] [varchar](max) NOT NULL,
	[locationInstitute] [varchar](max) NOT NULL,
	[duration] [varchar](max) NOT NULL,
	[modeofStudy] [varchar](max) NULL,
	[curriculumOverview] [varchar](max) NULL,
	[careerOpportunities] [varchar](max) NULL,
	[salaryProspects] [varchar](max) NULL,
	[status] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[degreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[interestId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[category] [varchar](50) NOT NULL,
	[created_at] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[interestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[jobId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[jobTitle] [varchar](max) NOT NULL,
	[company] [varchar](max) NOT NULL,
	[locationJob] [varchar](max) NOT NULL,
	[salaryrange] [varchar](max) NULL,
	[employmentType] [varchar](max) NOT NULL,
	[jobDescription] [varchar](max) NULL,
	[educationLevelRequired] [varchar](max) NULL,
	[requiredSkills] [varchar](max) NULL,
	[status] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[userId] [int] NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[PhoneNo] [varchar](30) NOT NULL,
	[CNIC] [varchar](50) NULL,
	[DOB] [date] NOT NULL,
	[Address] [varchar](255) NULL,
	[City] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Img] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [int] NOT NULL,
	[resumeObjective] [text] NULL,
	[technicalSkills] [varchar](max) NULL,
	[linkedInProfile] [varchar](100) NULL,
	[githubProfile] [varchar](100) NULL,
	[reference] [varchar](max) NULL,
	[achievmentscertifications] [text] NULL,
	[projects] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/24/2024 10:07:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Background] ON 

INSERT [dbo].[Background] ([backgroundId], [studentId], [instituteName], [degreeTitle], [degreeLevel], [TotalMarks], [ObtainedMarks]) VALUES (1, 1, N'The Punjab School', N'Science', N'Matriculation', 1100, 1061)
INSERT [dbo].[Background] ([backgroundId], [studentId], [instituteName], [degreeTitle], [degreeLevel], [TotalMarks], [ObtainedMarks]) VALUES (2, 1, N'Punjab Group of Colleges', N'Pre-Engineering', N'Intermediate', 1100, 1022)
INSERT [dbo].[Background] ([backgroundId], [studentId], [instituteName], [degreeTitle], [degreeLevel], [TotalMarks], [ObtainedMarks]) VALUES (3, 1, N'University of Engineering & Technology', N'Computer Science', N'Bachelor''s degree', 4, 3.7)
SET IDENTITY_INSERT [dbo].[Background] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([courseId], [studentId], [courseTitle], [providerSource], [durationCourse], [courseLevel], [prerequisites], [skillsCovered], [courseFees], [certification], [status]) VALUES (1, 1, N'Data Science Specialization', N'Johns Hopkins University on Coursera', N'9 months', N'Intermediate to Advanced', N'Basic programming skills', N'R,Python,Machine learning,Data visualization', N'Paid', N'Yes', N'In Progress')
INSERT [dbo].[Course] ([courseId], [studentId], [courseTitle], [providerSource], [durationCourse], [courseLevel], [prerequisites], [skillsCovered], [courseFees], [certification], [status]) VALUES (2, 1, N'Introduction to Programming with Python', N'Coursera/edX', N'6-8 weeks', N'Beginner', N'None', N'Python programming,Data structures,Control flow', N'Varies, some are free with audit option', N'Yes (often paid)', N'Completed')
INSERT [dbo].[Course] ([courseId], [studentId], [courseTitle], [providerSource], [durationCourse], [courseLevel], [prerequisites], [skillsCovered], [courseFees], [certification], [status]) VALUES (3, 1, N'Introduction to Machine Learning', N'Coursera/edX', N'8 weeks', N'Beginner', N'Basic programming knowledge', N'Python,Supervised learning,Unsupervised learning', N'Varies, some options are free with audit access', N'Available upon completion (often paid)', N'Wishlist')
INSERT [dbo].[Course] ([courseId], [studentId], [courseTitle], [providerSource], [durationCourse], [courseLevel], [prerequisites], [skillsCovered], [courseFees], [certification], [status]) VALUES (4, 1, N'Data Science with Python', N'DataCamp', N'Variable based on tracks', N'Beginner to Advanced', N'Basic programming experience is helpful but not strictly required', N'Pandas,NumPy,Scikit-learn,Data visualization libraries', N'Paid subscription based', N'Available upon completion of specific tracks', N'Not Interested')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Degree] ON 

INSERT [dbo].[Degree] ([degreeId], [studentId], [degreeTitle], [instituition], [locationInstitute], [duration], [modeofStudy], [curriculumOverview], [careerOpportunities], [salaryProspects], [status]) VALUES (1, 1, N'Bachelor of Science in Computer Science (BSc CS)', N'National University of Sciences and Technology (NUST)', N'Islamabad, Pakistan', N'4 years', N'Full-time', N'Covers programming, data structures, algorithms, databases, and software engineering.', N'Software Engineer, Data Scientist, Web Developer', N'High', N'Wishlist')
INSERT [dbo].[Degree] ([degreeId], [studentId], [degreeTitle], [instituition], [locationInstitute], [duration], [modeofStudy], [curriculumOverview], [careerOpportunities], [salaryProspects], [status]) VALUES (2, 1, N'Computer Science', N'University of Engineering & Technology', N'Lahore , Pakistan', N'4 years', N'On-site', N'C covers key areas like programming, algorithms, software engineering, AI, databases, and networking.', N'Iinclude software developer, data scientist, AI engineer, web developer, and IT consultant.', N'Range from PKR 50,000 to PKR 150,000 per month, depending on experience, skills, and the industry.', N'Enrolled')
SET IDENTITY_INSERT [dbo].[Degree] OFF
GO
SET IDENTITY_INSERT [dbo].[Interest] ON 

INSERT [dbo].[Interest] ([interestId], [studentId], [category], [created_at]) VALUES (1, 1, N'Technology', CAST(N'2024-11-24' AS Date))
INSERT [dbo].[Interest] ([interestId], [studentId], [category], [created_at]) VALUES (2, 1, N'Coding', CAST(N'2024-11-24' AS Date))
INSERT [dbo].[Interest] ([interestId], [studentId], [category], [created_at]) VALUES (3, 1, N'Web Developer', CAST(N'2024-11-24' AS Date))
INSERT [dbo].[Interest] ([interestId], [studentId], [category], [created_at]) VALUES (4, 1, N'Artificial Intelligence', CAST(N'2024-11-24' AS Date))
SET IDENTITY_INSERT [dbo].[Interest] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([jobId], [studentId], [jobTitle], [company], [locationJob], [salaryrange], [employmentType], [jobDescription], [educationLevelRequired], [requiredSkills], [status]) VALUES (1, 1, N'Software Engineer', N'Arbisoft', N'Karachi, Pakistan', N'PKR 800,000 - 1,500,000 per annum', N'Full-time', N'Develop and maintain software applications using various technologies.', N'Bachelor''s Degree in Computer Science or related field', N'Java,Python,C++,SQL,Agile methodologies', N'Wishlist')
INSERT [dbo].[Jobs] ([jobId], [studentId], [jobTitle], [company], [locationJob], [salaryrange], [employmentType], [jobDescription], [educationLevelRequired], [requiredSkills], [status]) VALUES (2, 1, N'Web Developer', N'Freelance', N'Remote', N'PKR 500,000 - 1,000,000 per annum (variable)', N'Freelance', N'Develop and maintain websites and web applications.', N'Bachelor''s Degree in Computer Science or related field', N'HTML,CSS,JavaScript,React,Node.js', N'Current Job')
INSERT [dbo].[Jobs] ([jobId], [studentId], [jobTitle], [company], [locationJob], [salaryrange], [employmentType], [jobDescription], [educationLevelRequired], [requiredSkills], [status]) VALUES (3, 1, N'Data Scientist', N'TechValley Pakistan', N'Lahore, Pakistan', N'PKR 1,000,000 - 2,000,000 per annum', N'Full-time', N'Analyze large datasets to extract insights and build predictive models.', N'Bachelor''s degree in Statistics, Mathematics, or Computer Science', N'Statistical analysis,Data mining,Data visualization,R,SQL', N'Offered')
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (1, N'Female', N'0316-4509582', N'3520277070476', CAST(N'2003-09-11' AS Date), N'343-M Block , Model Town , ext , Lahore', N'Lahore', N'Pakistan', N'/personImages/1732462599835raveehaphoto.jpeg')
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (2, N'Female', N'+92 320 9001331', N'35202-6480145-8', CAST(N'2004-02-14' AS Date), N'Plot-785, Phase 2, Block L, Johar Town, Lahore', N'Lahore', N'Pakistan', N'/personImages/1732464834787tayyabaphoto.jpeg')
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (3, N'Male', N'03123456789', N'3520277070476', CAST(N'1995-04-12' AS Date), N'123, ABC Street, Lahore', N'Lahore', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (4, N'Female', N'03123456780', N'3520277070477', CAST(N'1996-05-20' AS Date), N'456, XYZ Road, Karachi', N'Karachi', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (5, N'Male', N'03123456781', N'3520277070478', CAST(N'1997-06-18' AS Date), N'789, Main Boulevard, Islamabad', N'Islamabad', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (6, N'Female', N'03123456782', N'3520277070479', CAST(N'1998-07-22' AS Date), N'101, Gulshan Street, Rawalpindi', N'Rawalpindi', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (7, N'Male', N'03123456783', N'3520277070480', CAST(N'1999-08-30' AS Date), N'202, College Road, Lahore', N'Lahore', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (8, N'Female', N'03123456784', N'3520277070481', CAST(N'2000-09-15' AS Date), N'303, Green Street, Multan', N'Multan', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (9, N'Male', N'03123456785', N'3520277070482', CAST(N'2001-10-01' AS Date), N'404, Silver Lane, Peshawar', N'Peshawar', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (10, N'Female', N'03123456786', N'3520277070483', CAST(N'2002-11-10' AS Date), N'505, Red Avenue, Quetta', N'Quetta', N'Pakistan', NULL)
INSERT [dbo].[Person] ([userId], [Gender], [PhoneNo], [CNIC], [DOB], [Address], [City], [Country], [Img]) VALUES (11, N'Male', N'03123456787', N'3520277070484', CAST(N'2003-12-05' AS Date), N'606, Blue Street, Faisalabad', N'Faisalabad', N'Pakistan', NULL)
GO
INSERT [dbo].[Student] ([studentId], [resumeObjective], [technicalSkills], [linkedInProfile], [githubProfile], [reference], [achievmentscertifications], [projects]) VALUES (1, N'As a computer science undergraduate at UET, I am eager to leverage my skills and experience to help your company achieve its goals. I am particularly interested in an internship opportunity to improve my backend development skills and enhance my career in a dynamic and challenging environment.', N'C# , C++ , Python, Javascript , SQL, Git, HTML, CSS , .NET framework, Desktop Development (Winform), Flask, React.js', N'https://www.linkedin.com/in/raveehamohsin', N'https://github.com/RaveehaMohsin', N'Will be provided on demand.', N'Teacher Assistant Object Oriented Programming , Teacher Assistant Programming Fundamentals , SQL Intermediate , SQL Advanced , Web Development with REST-based Web Services in Python | Ustadam', N'Title: FYP Management System , Description: Developed a comprehensive Final Year Project (FYP) Management System using SQL and WinForms, showcasing
expertise in database management and desktop application development; Title: DOS Shell , Description: In a DOS shell environment, I developed a command-line application leveraging a tree data structure in C++. This application enables users to create folders, generate files, and search for specific files within the directory structure.; Title: Mini Excel , Description: I developed a project for my Data Structures and Algorithms course using a doubly linked list in C++, utilizing four pointers for efficient management. The project involved implementing functionalities like adding, removing, and manipulating data elements')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (1, N'Raveeha', N'Mohsin', N'mohsinraveeha@gmail.com', N'raveeha123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (2, N'Tayyaba', N'Afzal', N'tayyabaafzal@gmail.com', N'tayyaba123', N'Admin')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (3, N'Ali', N'Khan', N'ali.khan@gmail.com', N'ali123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (4, N'Sara', N'Ahmed', N'sara.ahmed@gmail.com', N'sara123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (5, N'Zain', N'Raza', N'zain.raza@gmail.com', N'zain123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (6, N'Hina', N'Shah', N'hina.shah@gmail.com', N'hina123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (7, N'Ahmed', N'Ali', N'ahmed.ali@gmail.com', N'ahmed123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (8, N'Ayesha', N'Javed', N'ayesha.javed@gmail.com', N'ayesha123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (9, N'Faizan', N'Iqbal', N'faizan.iqbal@gmail.com', N'faizan123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (10, N'Mariam', N'Sultan', N'mariam.sultan@gmail.com', N'mariam123', N'Student')
INSERT [dbo].[Users] ([userId], [firstName], [lastName], [email], [password], [role]) VALUES (11, N'Omer', N'Hussain', N'omer.hussain@gmail.com', N'omer123', N'Student')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E61646B362F8E]    Script Date: 11/24/2024 10:07:53 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Background]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Degree]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Interest]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
USE [master]
GO
ALTER DATABASE [CareerPathNavigator] SET  READ_WRITE 
GO
