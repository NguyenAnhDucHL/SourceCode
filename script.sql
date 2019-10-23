USE [master]
GO
/****** Object:  Database [STUDYONLINE]    Script Date: 10/22/2019 11:49:41 PM ******/
CREATE DATABASE [STUDYONLINE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'STUDYONLINE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\STUDYONLINE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'STUDYONLINE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\STUDYONLINE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [STUDYONLINE] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [STUDYONLINE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [STUDYONLINE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [STUDYONLINE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [STUDYONLINE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [STUDYONLINE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [STUDYONLINE] SET ARITHABORT OFF 
GO
ALTER DATABASE [STUDYONLINE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [STUDYONLINE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [STUDYONLINE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [STUDYONLINE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [STUDYONLINE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [STUDYONLINE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [STUDYONLINE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [STUDYONLINE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [STUDYONLINE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [STUDYONLINE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [STUDYONLINE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [STUDYONLINE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [STUDYONLINE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [STUDYONLINE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [STUDYONLINE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [STUDYONLINE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [STUDYONLINE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [STUDYONLINE] SET RECOVERY FULL 
GO
ALTER DATABASE [STUDYONLINE] SET  MULTI_USER 
GO
ALTER DATABASE [STUDYONLINE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [STUDYONLINE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [STUDYONLINE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [STUDYONLINE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [STUDYONLINE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'STUDYONLINE', N'ON'
GO
ALTER DATABASE [STUDYONLINE] SET QUERY_STORE = OFF
GO
USE [STUDYONLINE]
GO
/****** Object:  Table [dbo].[AnswerOption]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerOption](
	[answer_option_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[answer_text] [nvarchar](2000) NOT NULL,
	[answer_corect] [bit] NOT NULL,
 CONSTRAINT [PK_AnswerOption] PRIMARY KEY CLUSTERED 
(
	[answer_option_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[course_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
	[course_is_default] [bit] NOT NULL,
	[course_start_date] [varchar](50) NOT NULL,
	[course_end_date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coursework]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coursework](
	[coursework_id] [int] IDENTITY(1,1) NOT NULL,
	[assignment_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[test_id] [int] NOT NULL,
	[due_date] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Coursework] PRIMARY KEY CLUSTERED 
(
	[coursework_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[domain_id] [int] NOT NULL,
	[subject_id] [int] NULL,
 CONSTRAINT [PK_Domain] PRIMARY KEY CLUSTERED 
(
	[domain_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_level] [varchar](50) NOT NULL,
	[exam_name] [varchar](50) NOT NULL,
	[exam_is_practice] [bit] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamConfig]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamConfig](
	[exam_config_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[domain_id] [int] NOT NULL,
	[domain_size] [varchar](50) NOT NULL,
	[lesson_id] [int] NOT NULL,
	[lesson_size] [varchar](50) NOT NULL,
	[keywords] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ExamConfig] PRIMARY KEY CLUSTERED 
(
	[exam_config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamTest]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamTest](
	[test_id] [int] IDENTITY(1,1) NOT NULL,
	[exam_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[test_name] [varchar](50) NOT NULL,
	[test_code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ExamTest] PRIMARY KEY CLUSTERED 
(
	[test_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[grade_id] [int] IDENTITY(1,1) NOT NULL,
	[registration_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[coursework_id] [int] NOT NULL,
	[grade] [int] NOT NULL,
	[grade_comment] [varchar](50) NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[grade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[lesson_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[parent_id] [int] NOT NULL,
	[lesson_type] [varchar](50) NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[post_id] [int] NOT NULL,
	[post_type] [varchar](50) NULL,
	[post_category] [varchar](50) NULL,
	[post_thumbnail] [varchar](500) NOT NULL,
	[post_brief_info] [varchar](2000) NOT NULL,
	[post_detail_info] [varchar](max) NOT NULL,
	[post_document_link] [varchar](200) NOT NULL,
	[post_embeb] [varchar](200) NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTag]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTag](
	[post_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[question_id] [int] NOT NULL,
	[subject_id] [int] NOT NULL,
	[domain_id] [int] NOT NULL,
	[lesson_id] [int] NOT NULL,
	[level] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[registration_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[course_id] [int] NOT NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[registration_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMenu]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenu](
	[role_menu_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[menu_id] [int] NOT NULL,
 CONSTRAINT [PK_RoleMenu] PRIMARY KEY CLUSTERED 
(
	[role_menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermission]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermission](
	[role_permission_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
 CONSTRAINT [PK_RolePermission] PRIMARY KEY CLUSTERED 
(
	[role_permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[setting_id] [int] IDENTITY(1,1) NOT NULL,
	[setting_group_value] [varchar](50) NOT NULL,
	[setting_name] [varchar](50) NOT NULL,
	[setting_description] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[setting_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_picture_url] [varchar](500) NOT NULL,
	[slider_title] [varchar](50) NOT NULL,
	[slider_caption] [varchar](200) NOT NULL,
	[slider_back_link] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subject_id] [int] NOT NULL,
	[subject_category] [varchar](50) NULL,
	[subject_tag_line] [varchar](50) NOT NULL,
	[subject_brief_info] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectReference]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectReference](
	[subject_id] [int] NOT NULL,
	[post_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[tag_id] [int] NOT NULL,
	[tag_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestAnswer]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestAnswer](
	[test_answer_id] [int] IDENTITY(1,1) NOT NULL,
	[test_user_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[user_answer] [varchar](10) NOT NULL,
	[test_id] [int] NOT NULL,
 CONSTRAINT [PK_TestAnswer] PRIMARY KEY CLUSTERED 
(
	[test_answer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestBatch]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestBatch](
	[batch_id] [int] IDENTITY(1,1) NOT NULL,
	[batch_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TestBatch] PRIMARY KEY CLUSTERED 
(
	[batch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestQuestion]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestQuestion](
	[test_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[test_question_keys] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestResult]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestResult](
	[test_user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[test_id] [int] NOT NULL,
	[exam_id] [int] NOT NULL,
	[test_type] [varchar](50) NOT NULL,
	[batch_id] [int] NOT NULL,
 CONSTRAINT [PK_TestResult] PRIMARY KEY CLUSTERED 
(
	[test_user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_group] [varchar](50) NOT NULL,
	[user_fullname] [nvarchar](50) NOT NULL,
	[user_email] [varchar](50) NOT NULL,
	[use_mobile] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 10/22/2019 11:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[user_role_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[user_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [STUDYONLINE] SET  READ_WRITE 
GO
