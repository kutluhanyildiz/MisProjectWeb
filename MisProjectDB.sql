USE [master]
GO
/****** Object:  Database [MisProjectDB]    Script Date: 3.03.2021 17:01:56 ******/
CREATE DATABASE [MisProjectDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MisProjectDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\MisProjectDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MisProjectDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\MisProjectDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MisProjectDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MisProjectDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MisProjectDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MisProjectDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MisProjectDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MisProjectDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MisProjectDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MisProjectDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MisProjectDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MisProjectDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MisProjectDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MisProjectDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MisProjectDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MisProjectDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MisProjectDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MisProjectDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MisProjectDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MisProjectDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MisProjectDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MisProjectDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MisProjectDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MisProjectDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MisProjectDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MisProjectDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MisProjectDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MisProjectDB] SET  MULTI_USER 
GO
ALTER DATABASE [MisProjectDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MisProjectDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MisProjectDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MisProjectDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MisProjectDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MisProjectDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MisProjectDB] SET QUERY_STORE = OFF
GO
USE [MisProjectDB]
GO
/****** Object:  Table [dbo].[ADDLESSONAPPLICATION_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDLESSONAPPLICATION_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_ADDLESSONAPPLICATION_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ANNOUNCEMENTS_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ANNOUNCEMENTS_TABLE](
	[ANNOUNCEMENTID] [int] IDENTITY(1,1) NOT NULL,
	[ANNOUNCETITLE] [varchar](50) NULL,
	[ANNOUNCECONTENT] [varchar](250) NULL,
	[ANNOUNCETEACHER] [int] NOT NULL,
 CONSTRAINT [PK_ANNOUNCEMENTS_TABLE] PRIMARY KEY CLUSTERED 
(
	[ANNOUNCEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ATTANDANCESTATUS_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATTANDANCESTATUS_TABLE](
	[STUDID] [int] NOT NULL,
	[NUMBEROFABSENCELESSONS] [int] NOT NULL,
	[CONTINUESTATUS] [bit] NOT NULL,
 CONSTRAINT [PK_ATTANDANCESTATUS_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAMPUS_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMPUS_TABLE](
	[CAMPUSID] [int] NOT NULL,
	[CAMPUSNAME] [varchar](50) NULL,
	[CAMPUSAREA] [varchar](50) NULL,
 CONSTRAINT [PK_CAMPUS_TABLE] PRIMARY KEY CLUSTERED 
(
	[CAMPUSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONFLICTEXAMREQUEST_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFLICTEXAMREQUEST_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_CONFLICTEXAMREQUEST_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEREGISTRATIONREQUEST_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEREGISTRATIONREQUEST_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ERASMUS_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERASMUS_TABLE](
	[ERASMUSID] [int] NOT NULL,
	[STUDID] [int] NOT NULL,
	[ERASMUSGRADEID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_ERASMUS_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAMOBJECTION_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAMOBJECTION_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_EXAMOBJECTION_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOREIGNLANGUAGESPROFIENCYEXAM_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOREIGNLANGUAGESPROFIENCYEXAM_TABLE](
	[STUDID] [int] NOT NULL,
	[EXAM] [tinyint] NOT NULL,
	[SITUATION] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FOREIGNLANGUAGESUMMERSCHOOLAPPLICATION_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOREIGNLANGUAGESUMMERSCHOOLAPPLICATION_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
	[EXAM] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GRADES_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GRADES_TABLE](
	[GRADEID] [int] IDENTITY(1,1) NOT NULL,
	[STUDID] [int] NOT NULL,
	[COURSEGRADEID] [int] NOT NULL,
	[EXAM1] [tinyint] NULL,
	[EXAM2] [tinyint] NULL,
	[EXAM3] [tinyint] NULL,
	[AVERAGE] [decimal](18, 2) NULL,
	[SITUATION] [bit] NULL,
 CONSTRAINT [PK_GRADES_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC,
	[COURSEGRADEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INTERNSHIP_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INTERNSHIP_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_INTERNSHIP_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LESSONS_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LESSONS_TABLE](
	[LESSONID] [int] IDENTITY(1,1) NOT NULL,
	[LESSONNAME] [varchar](50) NULL,
 CONSTRAINT [PK_LESSONS_TABLE] PRIMARY KEY CLUSTERED 
(
	[LESSONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAKEUPEXAM_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAKEUPEXAM_TABLE](
	[STUDID] [int] NOT NULL,
	[EXAM] [tinyint] NULL,
 CONSTRAINT [PK_MAKEUPEXAM_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MAKEUPEXAMAPPLICATION_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MAKEUPEXAMAPPLICATION_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_MAKEUPEXAMAPPLICATION_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MESSAGE_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MESSAGE_TABLE](
	[MESSAGEID] [int] IDENTITY(1,1) NOT NULL,
	[SENDER] [varchar](5) NULL,
	[RECEIVER] [varchar](5) NULL,
	[TITLE] [varchar](50) NULL,
	[MESSAGECONTENT] [varchar](500) NULL,
	[DATE] [smalldatetime] NULL,
 CONSTRAINT [PK_MESSAGE_TABLE] PRIMARY KEY CLUSTERED 
(
	[MESSAGEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINGLELESSONREQUEST_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINGLELESSONREQUEST_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_SINGLELESSONREQUEST_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_TABLE](
	[STUDENTID] [int] IDENTITY(1,1) NOT NULL,
	[STUDENTNUMBER] [varchar](5) NULL,
	[STUDENTNAME] [varchar](30) NULL,
	[STUDENTLASTNAME] [varchar](30) NULL,
	[STUDENTPHOTO] [varchar](100) NULL,
	[STUDENTCELL] [varchar](20) NULL,
	[STUDENTMAIL] [varchar](50) NULL,
	[STUDENTPASSWORD] [varchar](50) NULL,
	[STUDENTGENDER] [varchar](5) NULL,
 CONSTRAINT [PK_STUDENT_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUMMERSCHOOL_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUMMERSCHOOL_TABLE](
	[STUDID] [int] NOT NULL,
	[SITUATION] [bit] NOT NULL,
 CONSTRAINT [PK_SUMMERSCHOOL_TABLE] PRIMARY KEY CLUSTERED 
(
	[STUDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHER_TABLE]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHER_TABLE](
	[TEACHERID] [int] IDENTITY(1,1) NOT NULL,
	[TEACHERFULLNAME] [varchar](30) NULL,
	[TEACHERPHOTO] [varchar](100) NULL,
	[TEACHERBRANCH] [int] NULL,
	[TEACHERNUMBER] [varchar](4) NULL,
	[TEACHERPASSWORD] [varchar](10) NULL,
 CONSTRAINT [PK_TEACHER_TABLE] PRIMARY KEY CLUSTERED 
(
	[TEACHERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GRADES_TABLE] ADD  CONSTRAINT [DF_GRADES_TABLE_EXAM1]  DEFAULT ((0)) FOR [EXAM1]
GO
ALTER TABLE [dbo].[GRADES_TABLE] ADD  CONSTRAINT [DF_GRADES_TABLE_EXAM2]  DEFAULT ((0)) FOR [EXAM2]
GO
ALTER TABLE [dbo].[GRADES_TABLE] ADD  CONSTRAINT [DF_GRADES_TABLE_EXAM3]  DEFAULT ((0)) FOR [EXAM3]
GO
ALTER TABLE [dbo].[GRADES_TABLE] ADD  CONSTRAINT [DF_GRADES_TABLE_AVERAGE]  DEFAULT ((0)) FOR [AVERAGE]
GO
ALTER TABLE [dbo].[GRADES_TABLE] ADD  CONSTRAINT [DF_GRADES_TABLE_STATUS]  DEFAULT ((0)) FOR [SITUATION]
GO
ALTER TABLE [dbo].[MESSAGE_TABLE] ADD  CONSTRAINT [DF_MESSAGE_TABLE_DATE]  DEFAULT (getdate()) FOR [DATE]
GO
ALTER TABLE [dbo].[ANNOUNCEMENTS_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_ANNOUNCEMENTS_TABLE_TEACHER_TABLE] FOREIGN KEY([ANNOUNCETEACHER])
REFERENCES [dbo].[TEACHER_TABLE] ([TEACHERID])
GO
ALTER TABLE [dbo].[ANNOUNCEMENTS_TABLE] CHECK CONSTRAINT [FK_ANNOUNCEMENTS_TABLE_TEACHER_TABLE]
GO
ALTER TABLE [dbo].[ERASMUS_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_ERASMUS_TABLE_STUDENT_TABLE] FOREIGN KEY([ERASMUSID])
REFERENCES [dbo].[STUDENT_TABLE] ([STUDENTID])
GO
ALTER TABLE [dbo].[ERASMUS_TABLE] CHECK CONSTRAINT [FK_ERASMUS_TABLE_STUDENT_TABLE]
GO
ALTER TABLE [dbo].[GRADES_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_GRADES_TABLE_LESSONS_TABLE] FOREIGN KEY([COURSEGRADEID])
REFERENCES [dbo].[LESSONS_TABLE] ([LESSONID])
GO
ALTER TABLE [dbo].[GRADES_TABLE] CHECK CONSTRAINT [FK_GRADES_TABLE_LESSONS_TABLE]
GO
ALTER TABLE [dbo].[GRADES_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_GRADES_TABLE_STUDENT_TABLE] FOREIGN KEY([STUDID])
REFERENCES [dbo].[STUDENT_TABLE] ([STUDENTID])
GO
ALTER TABLE [dbo].[GRADES_TABLE] CHECK CONSTRAINT [FK_GRADES_TABLE_STUDENT_TABLE]
GO
ALTER TABLE [dbo].[TEACHER_TABLE]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_TABLE_LESSONS_TABLE] FOREIGN KEY([TEACHERBRANCH])
REFERENCES [dbo].[LESSONS_TABLE] ([LESSONID])
GO
ALTER TABLE [dbo].[TEACHER_TABLE] CHECK CONSTRAINT [FK_TEACHER_TABLE_LESSONS_TABLE]
GO
/****** Object:  StoredProcedure [dbo].[CallStdName]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CallStdName]
as
SELECT SENDER, (RECEIVER+' '+STUDENTNAME+' '+STUDENTLASTNAME) AS 'STUDENTNUMBER-STUDENT FULL NAME', TITLE, MESSAGECONTENT FROM MESSAGE_TABLE
inner join STUDENT_TABLE 
on
MESSAGE_TABLE.RECEIVER = STUDENT_TABLE.STUDENTNUMBER
WHERE (SENDER = '0001')
GO
/****** Object:  StoredProcedure [dbo].[Graph1]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Graph1]
as
Select LESSONS_TABLE.LESSONNAME, count(*) from GRADES_TABLE
inner join LESSONS_TABLE
on LESSONS_TABLE.LESSONID = GRADES_TABLE.COURSEGRADEID
group by LESSONS_TABLE.LESSONNAME
GO
/****** Object:  StoredProcedure [dbo].[graph2]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[graph2]
as 
select STUDENTGENDER, COUNT(*) FROM STUDENT_TABLE
group by STUDENTGENDER
GO
/****** Object:  StoredProcedure [dbo].[graph3]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[graph3]
as

SELECT LESSONNAME, count(*) FROM LESSONS_TABLE
inner join TEACHER_TABLE 
on
LESSONS_TABLE.LESSONID = TEACHER_TABLE.TEACHERBRANCH
group by LESSONNAME
GO
/****** Object:  StoredProcedure [dbo].[graph4]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[graph4]
as
select (STUDENT_TABLE.STUDENTNAME + ' ' + STUDENT_TABLE.STUDENTLASTNAME) as 'STUDENT', EXAM1 FROM STUDENT_TABLE
inner join GRADES_TABLE on
GRADES_TABLE.STUDID = STUDENT_TABLE.STUDENTID
WHERE COURSEGRADEID = 2
GO
/****** Object:  StoredProcedure [dbo].[StdGrades]    Script Date: 3.03.2021 17:01:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[StdGrades]
as
Select GRADEID, (STUDENTNAME + ' ' + STUDENTLASTNAME) AS 'STUDENTFULLNAME', STUDID, COURSEGRADEID,EXAM1,EXAM2,EXAM3,AVERAGE,SITUATION, LESSONNAME from GRADES_TABLE
inner join STUDENT_TABLE
on STUDENT_TABLE.STUDENTID = GRADES_TABLE.STUDID
inner join LESSONS_TABLE
on LESSONS_TABLE.LESSONID = GRADES_TABLE.COURSEGRADEID
GO
USE [master]
GO
ALTER DATABASE [MisProjectDB] SET  READ_WRITE 
GO
