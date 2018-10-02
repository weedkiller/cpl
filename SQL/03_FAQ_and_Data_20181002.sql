USE [CPL]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 02/10/2018 2:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](200) NULL,
	[Answer] [nvarchar](500) NULL,
	[LangId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FAQ] ON 
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (1, N'Question #1 EN', N'Answer #1 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (3, N'Question #1 JP', N'Answer #1 JP', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (4, N'Question #2 EN', N'Answer #2 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (5, N'Question #2 EN', N'Answer #2 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (6, N'Question #3 EN', N'Answer #3 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (7, N'Question #3 EN', N'Answer #3 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (8, N'Question #4 EN', N'Answer #4 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (9, N'Question #4 EN', N'Answer #4 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (10, N'Question #5 EN', N'Answer #5 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (11, N'Question #5 EN', N'Answer #5 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (12, N'Question #6 EN', N'Answer #6 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (13, N'Question #6 EN', N'Answer #6 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (14, N'Question #7 EN', N'Answer #7 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (15, N'Question #7 EN', N'Answer #7 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (16, N'Question #8 EN', N'Answer #8 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (17, N'Question #8 EN', N'Answer #8 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (18, N'Question #9 EN', N'Answer #9 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (19, N'Question #9 EN', N'Answer #9 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (20, N'Question #10 EN', N'Answer #10 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (21, N'Question #10 EN', N'Answer #10 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (22, N'Question #11 EN', N'Answer #11 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (23, N'Question #11 EN', N'Answer #11 EN', 2, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (24, N'Question #12 EN', N'Answer #12 EN', 1, 2)
GO
INSERT [dbo].[FAQ] ([Id], [Question], [Answer], [LangId], [GroupId]) VALUES (25, N'Question #12 EN', N'Answer #12 EN', 2, 2)
GO
SET IDENTITY_INSERT [dbo].[FAQ] OFF
GO
