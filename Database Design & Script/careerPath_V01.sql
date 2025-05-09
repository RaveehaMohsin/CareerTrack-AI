USE [master]
GO
/****** Object:  Database [CareerPath_V01]    Script Date: 06/11/2024 3:07:05 pm ******/
CREATE DATABASE [CareerPath_V01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CareerPath_V01', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\CareerPath_V01.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CareerPath_V01_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\CareerPath_V01_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CareerPath_V01] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CareerPath_V01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CareerPath_V01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CareerPath_V01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CareerPath_V01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CareerPath_V01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CareerPath_V01] SET ARITHABORT OFF 
GO
ALTER DATABASE [CareerPath_V01] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CareerPath_V01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CareerPath_V01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CareerPath_V01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CareerPath_V01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CareerPath_V01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CareerPath_V01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CareerPath_V01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CareerPath_V01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CareerPath_V01] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CareerPath_V01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CareerPath_V01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CareerPath_V01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CareerPath_V01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CareerPath_V01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CareerPath_V01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CareerPath_V01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CareerPath_V01] SET RECOVERY FULL 
GO
ALTER DATABASE [CareerPath_V01] SET  MULTI_USER 
GO
ALTER DATABASE [CareerPath_V01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CareerPath_V01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CareerPath_V01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CareerPath_V01] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CareerPath_V01] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CareerPath_V01] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CareerPath_V01', N'ON'
GO
ALTER DATABASE [CareerPath_V01] SET QUERY_STORE = ON
GO
ALTER DATABASE [CareerPath_V01] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CareerPath_V01]
GO
/****** Object:  Table [dbo].[Background]    Script Date: 06/11/2024 3:07:05 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Background](
	[backgroundId] [int] NOT NULL,
	[studentId] [int] NOT NULL,
	[classLevel] [varchar](50) NULL,
	[instituteName] [varchar](100) NULL,
	[degreeTitle] [varchar](100) NULL,
	[degreeScope] [varchar](50) NULL,
	[objPercentage] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[backgroundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[certificateId] [int] NOT NULL,
	[interestId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[certificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counsellor]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counsellor](
	[counsellorId] [int] NOT NULL,
	[expertise] [varchar](100) NULL,
	[yearOfExperience] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[counsellorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseId] [int] NOT NULL,
	[interestId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[courseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Degree](
	[degreeId] [int] NOT NULL,
	[interestId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[degreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedbackId] [int] NOT NULL,
	[fromUserId] [int] NOT NULL,
	[toUserId] [int] NOT NULL,
	[rating] [int] NULL,
	[comments] [text] NULL,
	[submissionDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interest]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interest](
	[interestId] [int] NOT NULL,
	[studentId] [int] NOT NULL,
	[category] [varchar](50) NULL,
	[created_at] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[interestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceId] [int] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[status] [varchar](20) NULL,
	[timeIssues] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[jobId] [int] NOT NULL,
	[interestId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meeting]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting](
	[meetingId] [int] NOT NULL,
	[invoiceId] [int] NOT NULL,
	[studentId] [int] NOT NULL,
	[counsellorId] [int] NOT NULL,
	[MeetingTime] [time](7) NULL,
	[MeetingDate] [date] NULL,
	[meetLink] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[meetingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[userId] [int] NOT NULL,
	[Gender] [varchar](10) NULL,
	[CNIC] [varchar](15) NULL,
	[DOB] [date] NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Img] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [int] NOT NULL,
	[resume] [text] NULL,
	[profileStatus] [varchar](20) NULL,
	[linkedInProfile] [varchar](100) NULL,
	[XtraCurriculumActivites] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/11/2024 3:07:06 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userId] [int] NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Background]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD FOREIGN KEY([interestId])
REFERENCES [dbo].[Interest] ([interestId])
GO
ALTER TABLE [dbo].[Counsellor]  WITH CHECK ADD FOREIGN KEY([counsellorId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD FOREIGN KEY([interestId])
REFERENCES [dbo].[Interest] ([interestId])
GO
ALTER TABLE [dbo].[Degree]  WITH CHECK ADD FOREIGN KEY([interestId])
REFERENCES [dbo].[Interest] ([interestId])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([fromUserId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([toUserId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Interest]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD FOREIGN KEY([interestId])
REFERENCES [dbo].[Interest] ([interestId])
GO
ALTER TABLE [dbo].[Meeting]  WITH CHECK ADD FOREIGN KEY([counsellorId])
REFERENCES [dbo].[Counsellor] ([counsellorId])
GO
ALTER TABLE [dbo].[Meeting]  WITH CHECK ADD FOREIGN KEY([invoiceId])
REFERENCES [dbo].[Invoice] ([invoiceId])
GO
ALTER TABLE [dbo].[Meeting]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[Users] ([userId])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([userId])
GO
USE [master]
GO
ALTER DATABASE [CareerPath_V01] SET  READ_WRITE 
GO
