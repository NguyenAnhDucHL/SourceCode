USE [master]
GO
/****** Object:  Database [StudyOnline]    Script Date: 10/22/2019 2:00:31 AM ******/
CREATE DATABASE [StudyOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudyOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\StudyOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudyOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\StudyOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [StudyOnline] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudyOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudyOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudyOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudyOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudyOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudyOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudyOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudyOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudyOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudyOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudyOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudyOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudyOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudyOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudyOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudyOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudyOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudyOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudyOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudyOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudyOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudyOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudyOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudyOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [StudyOnline] SET  MULTI_USER 
GO
ALTER DATABASE [StudyOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudyOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudyOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudyOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudyOnline] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudyOnline', N'ON'
GO
ALTER DATABASE [StudyOnline] SET QUERY_STORE = OFF
GO
USE [StudyOnline]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 10/22/2019 2:00:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[menu_id] [int] IDENTITY(1,1) NOT NULL,
	[menu_name] [varchar](50) NOT NULL,
	[menu_link] [varchar](50) NOT NULL,
	[menu_order] [int] NOT NULL,
	[menu_status] [bit] NULL,
	[descriptions] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 10/22/2019 2:00:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[post_thumbnail] [varchar](50) NOT NULL,
	[post_name] [varchar](2000) NOT NULL,
	[post_type] [varchar](50) NOT NULL,
	[post_category] [varchar](50) NOT NULL,
	[post_brief] [varchar](500) NOT NULL,
	[post_status] [varchar](50) NOT NULL,
	[post_content] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roll]    Script Date: 10/22/2019 2:00:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roll](
	[roll_id] [int] IDENTITY(1,1) NOT NULL,
	[roll_name] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roll_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10/22/2019 2:00:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[user_email] [varchar](50) NOT NULL,
	[user_mobile] [int] NOT NULL,
	[user_gender] [varchar](3) NOT NULL,
	[user_status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_roll]    Script Date: 10/22/2019 2:00:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roll](
	[id_roll] [int] NOT NULL,
	[id_user] [int] NOT NULL,
	[id_userroll] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_userroll] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (1, N'Post List', N'/PostList', 1, 1, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (2, N'Slides', N'/Slides', 2, 0, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (3, N'Subject List', N'/SubjectList', 1, 1, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (4, N'Questions', N'/Questions', 1, 1, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (5, N'Exam List', N'/ExamList', 3, 0, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (6, N'Test List', N'/TestList', 1, 0, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (7, N'Pratice Result', N'/PraticeResult', 2, 1, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (8, N'Setting List', N'/SettingList', 1, 1, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (9, N'Menu List', N'/MenuList', 2, 0, NULL)
INSERT [dbo].[menu] ([menu_id], [menu_name], [menu_link], [menu_order], [menu_status], [descriptions]) VALUES (10, N'Permissions', N'/Permissions', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([post_id], [post_thumbnail], [post_name], [post_type], [post_category], [post_brief], [post_status], [post_content]) VALUES (1, N'image.png', N'So easy for Project Manager', N'Project', N'Project Manager', N'An effective and well-designed project requires a sufficient amount of detailed information, avoiding too much information. Usually, the more details you have, the better the plan looks, but the slower the implementation of the project because you may risk going too far into analyzing project management, attracting all Your focus is on the details and missing out on important points in the project - you will only see trees but not forests. Moreover, your boss will not need excessive details', N'Draft', NULL)
INSERT [dbo].[post] ([post_id], [post_thumbnail], [post_name], [post_type], [post_category], [post_brief], [post_status], [post_content]) VALUES (3, N'image.png', N'6 Question determine the scope peoject', N'Project', N'Project Manager', N'The scope of the project is what you are really going to have to offer. Project scope defines what project teams will be working on and can help you set priorities if you encounter conflicts on the project.', N'Draft', NULL)
INSERT [dbo].[post] ([post_id], [post_thumbnail], [post_name], [post_type], [post_category], [post_brief], [post_status], [post_content]) VALUES (5, N'image.png', N'Learn certificate PMP', N'Project', N'Project Manager', N'PMP - Project Management Professional was issued in 1984 by the United States Project Management Institute (PMI). This is an international certificate that recognizes a person with the knowledge and skills to lead and manage a project team to implement a project, deliver results that meet the projects binding requirements. The PMP standard requires PM people to have expert level in most Knowledge Area, able to manage large projects. To imagine the size of the ...', N'Draft', NULL)
SET IDENTITY_INSERT [dbo].[post] OFF
SET IDENTITY_INSERT [dbo].[roll] ON 

INSERT [dbo].[roll] ([roll_id], [roll_name]) VALUES (1, N'admin')
INSERT [dbo].[roll] ([roll_id], [roll_name]) VALUES (2, N'teacher')
INSERT [dbo].[roll] ([roll_id], [roll_name]) VALUES (3, N'student')
SET IDENTITY_INSERT [dbo].[roll] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [user_name], [user_email], [user_mobile], [user_gender], [user_status]) VALUES (1, N'Nguyễn Quang Nhật', N'Phieulong97@gmail.com', 969417748, N'Man', 1)
INSERT [dbo].[user] ([user_id], [user_name], [user_email], [user_mobile], [user_gender], [user_status]) VALUES (2, N'Nguyễn Tùng Dương', N'Duong@gmail.com', 837060716, N'Man', 0)
SET IDENTITY_INSERT [dbo].[user] OFF
SET IDENTITY_INSERT [dbo].[user_roll] ON 

INSERT [dbo].[user_roll] ([id_roll], [id_user], [id_userroll]) VALUES (1, 1, 1)
INSERT [dbo].[user_roll] ([id_roll], [id_user], [id_userroll]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[user_roll] OFF
ALTER TABLE [dbo].[menu] ADD  DEFAULT ((0)) FOR [menu_status]
GO
ALTER TABLE [dbo].[user_roll]  WITH CHECK ADD FOREIGN KEY([id_roll])
REFERENCES [dbo].[roll] ([roll_id])
GO
ALTER TABLE [dbo].[user_roll]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[user] ([user_id])
GO
USE [master]
GO
ALTER DATABASE [StudyOnline] SET  READ_WRITE 
GO
