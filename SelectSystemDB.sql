USE [SelectSystemDB]
GO
/****** Object:  Table [dbo].[GradeInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GradeInfo](
	[gradeId] [int] IDENTITY(1,1) NOT NULL,
	[gradeYear] [int] NOT NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GradeInfo] PRIMARY KEY CLUSTERED 
(
	[gradeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChatInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChatInfo](
	[id] [int] NOT NULL,
	[messageId] [int] IDENTITY(1,1) NOT NULL,
	[fromUserId] [varchar](100) NOT NULL,
	[toUserId] [varchar](100) NOT NULL,
	[message] [text] NOT NULL,
	[messageAddTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ChatInfo] PRIMARY KEY CLUSTERED 
(
	[messageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProInfo](
	[proId] [int] IDENTITY(1,1) NOT NULL,
	[proName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ProInfo] PRIMARY KEY CLUSTERED 
(
	[proId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewsInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsInfo](
	[newsId] [int] IDENTITY(1,1) NOT NULL,
	[newsTitle] [varchar](200) NOT NULL,
	[newsContent] [text] NOT NULL,
	[newAddTime] [datetime] NOT NULL,
	[newsAuthorId] [varchar](100) NOT NULL,
 CONSTRAINT [PK_NewsInfo] PRIMARY KEY CLUSTERED 
(
	[newsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TitleInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TitleInfo](
	[titleId] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NOT NULL,
	[fileUrl] [varchar](300) NULL,
	[titlecontent] [text] NULL,
	[titleAddTime] [datetime] NOT NULL,
	[gradeId] [int] NOT NULL,
	[proId] [int] NOT NULL,
	[teadId] [varchar](100) NOT NULL,
	[count] [int] NOT NULL,
	[countnow] [int] NULL,
 CONSTRAINT [PK_TitleInfo] PRIMARY KEY CLUSTERED 
(
	[titleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TeacherInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TeacherInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[teaNum] [varchar](100) NOT NULL,
	[teaName] [varchar](100) NOT NULL,
	[teaTel] [varchar](100) NOT NULL,
	[teaSex] [varchar](50) NULL,
	[teaSign] [text] NULL,
	[teaPwd] [varchar](200) NOT NULL,
 CONSTRAINT [PK_TeacherInfo_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StuInfo]    Script Date: 06/16/2017 09:06:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StuInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stuNum] [varchar](100) NOT NULL,
	[stuName] [varchar](100) NOT NULL,
	[stuSex] [varchar](10) NULL,
	[stuTel] [varchar](100) NOT NULL,
	[stuSign] [text] NULL,
	[titleId] [varchar](100) NULL,
	[proId] [int] NULL,
	[gradeId] [int] NULL,
	[stuPwd] [varchar](100) NOT NULL,
	[score] [int] NULL,
 CONSTRAINT [PK_StuInfo_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[TopicSelectionResults]    Script Date: 06/16/2017 09:06:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TopicSelectionResults]
as
begin
	select StuInfo.stuNum,StuInfo.stuName,TitleInfo.title,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName from StuInfo,GradeInfo,ProInfo,TitleInfo,TeacherInfo
	where TitleInfo.proId = ProInfo.proId and TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.teadId = TeacherInfo.teaNum and StuInfo.titleId = TitleInfo.titleId
end
GO
/****** Object:  View [dbo].[stugetteaIdView]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stugetteaIdView]
AS
SELECT     dbo.StuInfo.stuNum, dbo.TitleInfo.teadId
FROM         dbo.StuInfo INNER JOIN
                      dbo.TitleInfo ON dbo.StuInfo.titleId = dbo.TitleInfo.titleId INNER JOIN
                      dbo.TeacherInfo ON dbo.TitleInfo.teadId = dbo.TeacherInfo.teaNum
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "StuInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 243
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TeacherInfo"
            Begin Extent = 
               Top = 0
               Left = 629
               Bottom = 232
               Right = 771
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TitleInfo"
            Begin Extent = 
               Top = 5
               Left = 343
               Bottom = 235
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stugetteaIdView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stugetteaIdView'
GO
/****** Object:  StoredProcedure [dbo].[SelectTitleInfo]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SelectTitleInfo]
as
begin
	select TitleInfo.title,TitleInfo.titlecontent,TitleInfo.titleAddTime,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName,TitleInfo.count from TitleInfo,TeacherInfo,GradeInfo,ProInfo
	where TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.proId = ProInfo.proId and TitleInfo.teadId = TeacherInfo.teaNum
end
GO
/****** Object:  StoredProcedure [dbo].[SelectStuInfo]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectStuInfo]
as
begin
select stuNum,stuName,stuSex,stuTel,proName,gradeYear,stuPwd,score from StuInfo,ProInfo,GradeInfo
where StuInfo.gradeId = GradeInfo.gradeId and StuInfo.proId = ProInfo.proId
end
GO
/****** Object:  StoredProcedure [dbo].[SelectAStuInfo]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SelectAStuInfo](@StuNum varchar(100))
as
begin
	select stuNum,stuName,stuSex,stuTel,proName,gradeYear,stuPwd,score from StuInfo,ProInfo,GradeInfo
	where StuInfo.stuNum = @StuNum and StuInfo.gradeId = GradeInfo.gradeId and StuInfo.proId = ProInfo.proId
end
GO
/****** Object:  StoredProcedure [dbo].[ProTopicSelectionResults]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ProTopicSelectionResults](@ProName varchar(100))
as
begin
	select StuInfo.stuNum,StuInfo.stuName,TitleInfo.title,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName from StuInfo,GradeInfo,ProInfo,TitleInfo,TeacherInfo
	where TitleInfo.proId = ProInfo.proId and TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.teadId = TeacherInfo.teaNum and StuInfo.titleId = TitleInfo.titleId and ProInfo.proName = @ProName
end
GO
/****** Object:  StoredProcedure [dbo].[ProSelectTitleInfo]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ProSelectTitleInfo](@ProName varchar(100))
as
begin
	select TitleInfo.title,TitleInfo.titlecontent,TitleInfo.titleAddTime,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName,TitleInfo.count from TitleInfo,TeacherInfo,GradeInfo,ProInfo
	where TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.proId = ProInfo.proId and TitleInfo.teadId = TeacherInfo.teaNum and ProInfo.proName = @ProName
end
GO
/****** Object:  StoredProcedure [dbo].[ProNameScreening]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ProNameScreening](@ProName varchar(100))
as
begin
select stuNum,stuName,stuSex,stuTel,proName,gradeYear,stuPwd,score from StuInfo,ProInfo,GradeInfo
where StuInfo.gradeId = GradeInfo.gradeId and StuInfo.proId = ProInfo.proId and ProInfo.proName = @ProName
end
GO
/****** Object:  View [dbo].[TeaAddTitleView]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TeaAddTitleView]
AS
SELECT     dbo.TitleInfo.title, dbo.TitleInfo.titlecontent, dbo.GradeInfo.type, dbo.ProInfo.proName, dbo.TitleInfo.teadId
FROM         dbo.TeacherInfo INNER JOIN
                      dbo.TitleInfo ON dbo.TeacherInfo.teaNum = dbo.TitleInfo.teadId INNER JOIN
                      dbo.ProInfo ON dbo.TitleInfo.proId = dbo.ProInfo.proId INNER JOIN
                      dbo.GradeInfo ON dbo.TitleInfo.gradeId = dbo.GradeInfo.gradeId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TeacherInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 202
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TitleInfo"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 227
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProInfo"
            Begin Extent = 
               Top = 6
               Left = 404
               Bottom = 200
               Right = 546
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GradeInfo"
            Begin Extent = 
               Top = 6
               Left = 584
               Bottom = 201
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TeaAddTitleView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TeaAddTitleView'
GO
/****** Object:  View [dbo].[teaAddedTitleView]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[teaAddedTitleView]
AS
SELECT     dbo.TitleInfo.title, dbo.TitleInfo.titlecontent, dbo.ProInfo.proName, dbo.GradeInfo.gradeYear, dbo.TitleInfo.teadId, dbo.TitleInfo.count, dbo.TitleInfo.countnow, dbo.TitleInfo.titleId
FROM         dbo.GradeInfo INNER JOIN
                      dbo.TitleInfo ON dbo.GradeInfo.gradeId = dbo.TitleInfo.gradeId INNER JOIN
                      dbo.ProInfo ON dbo.TitleInfo.proId = dbo.ProInfo.proId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ProInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 237
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TitleInfo"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 240
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GradeInfo"
            Begin Extent = 
               Top = 6
               Left = 404
               Bottom = 230
               Right = 546
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'teaAddedTitleView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'teaAddedTitleView'
GO
/****** Object:  View [dbo].[stuSelectTitleView]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stuSelectTitleView]
AS
SELECT     dbo.StuInfo.stuNum, dbo.StuInfo.stuName, dbo.TitleInfo.title, dbo.StuInfo.score, dbo.TitleInfo.teadId, dbo.TeacherInfo.teaNum, dbo.GradeInfo.gradeYear
FROM         dbo.StuInfo INNER JOIN
                      dbo.TitleInfo ON dbo.StuInfo.titleId = dbo.TitleInfo.titleId INNER JOIN
                      dbo.TeacherInfo ON dbo.TitleInfo.teadId = dbo.TeacherInfo.teaNum INNER JOIN
                      dbo.GradeInfo ON dbo.StuInfo.gradeId = dbo.GradeInfo.gradeId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[42] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "StuInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TitleInfo"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 233
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TeacherInfo"
            Begin Extent = 
               Top = 6
               Left = 404
               Bottom = 223
               Right = 546
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "GradeInfo"
            Begin Extent = 
               Top = 34
               Left = 575
               Bottom = 246
               Right = 717
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stuSelectTitleView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stuSelectTitleView'
GO
/****** Object:  View [dbo].[stuSelectScoreView]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stuSelectScoreView]
AS
SELECT     dbo.StuInfo.stuNum, dbo.StuInfo.stuName, dbo.TeacherInfo.teaName, dbo.TeacherInfo.teaTel, dbo.TitleInfo.title, dbo.TitleInfo.titlecontent, dbo.StuInfo.score
FROM         dbo.StuInfo INNER JOIN
                      dbo.TitleInfo ON dbo.StuInfo.titleId = dbo.TitleInfo.titleId INNER JOIN
                      dbo.TeacherInfo ON dbo.TitleInfo.teadId = dbo.TeacherInfo.teaNum
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "StuInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 244
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TeacherInfo"
            Begin Extent = 
               Top = 20
               Left = 534
               Bottom = 229
               Right = 676
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TitleInfo"
            Begin Extent = 
               Top = 13
               Left = 314
               Bottom = 238
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stuSelectScoreView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'stuSelectScoreView'
GO
/****** Object:  View [dbo].[StuInfoView]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[StuInfoView]
AS
SELECT     dbo.StuInfo.stuNum, dbo.StuInfo.stuName, dbo.StuInfo.stuSex, dbo.StuInfo.stuTel, dbo.StuInfo.stuSign, dbo.ProInfo.proName
FROM         dbo.ProInfo INNER JOIN
                      dbo.StuInfo ON dbo.ProInfo.proId = dbo.StuInfo.proId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ProInfo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 96
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StuInfo"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 236
               Right = 360
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StuInfoView'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'StuInfoView'
GO
/****** Object:  StoredProcedure [dbo].[GradeYearScreening]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GradeYearScreening](@GradeYear int)
as
begin
	select stuNum,stuName,stuSex,stuTel,proName,gradeYear,stuPwd,score from StuInfo,ProInfo,GradeInfo
	where StuInfo.gradeId = GradeInfo.gradeId and StuInfo.proId = ProInfo.proId and GradeInfo.gradeYear = @GradeYear
end
GO
/****** Object:  StoredProcedure [dbo].[GradeTopicSelectionResults]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GradeTopicSelectionResults](@GradeYear int)
as
begin
	select StuInfo.stuNum,StuInfo.stuName,TitleInfo.title,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName from StuInfo,GradeInfo,ProInfo,TitleInfo,TeacherInfo
	where TitleInfo.proId = ProInfo.proId and TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.teadId = TeacherInfo.teaNum and StuInfo.titleId = TitleInfo.titleId and GradeInfo.gradeYear = @GradeYear
end
GO
/****** Object:  StoredProcedure [dbo].[GradeSelectTitleInfo]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GradeSelectTitleInfo](@GradeYear int)
as
begin
	select TitleInfo.title,TitleInfo.titlecontent,TitleInfo.titleAddTime,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName,TitleInfo.count from TitleInfo,TeacherInfo,GradeInfo,ProInfo
	where TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.proId = ProInfo.proId and TitleInfo.teadId = TeacherInfo.teaNum and GradeInfo.gradeYear = @GradeYear
end
GO
/****** Object:  StoredProcedure [dbo].[ATopicSelectionResults]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ATopicSelectionResults](@stuNum varchar(100))
as
begin
	select StuInfo.stuNum,StuInfo.stuName,TitleInfo.title,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName from StuInfo,GradeInfo,ProInfo,TitleInfo,TeacherInfo
	where TitleInfo.proId = ProInfo.proId and TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.teadId = TeacherInfo.teaNum and StuInfo.titleId = TitleInfo.titleId and StuInfo.stuNum = @stuNum
end
GO
/****** Object:  StoredProcedure [dbo].[AllTopicSelectionResults]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AllTopicSelectionResults](@GradeYear int,@ProName varchar(100))
as
begin
	select StuInfo.stuNum,StuInfo.stuName,TitleInfo.title,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName from StuInfo,GradeInfo,ProInfo,TitleInfo,TeacherInfo
	where TitleInfo.proId = ProInfo.proId and TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.teadId = TeacherInfo.teaNum and StuInfo.titleId = TitleInfo.titleId and GradeInfo.gradeYear = @GradeYear and ProInfo.proName = @ProName
end
GO
/****** Object:  StoredProcedure [dbo].[AllSelectTitleInfo]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AllSelectTitleInfo](@GradeYear int,@ProName varchar(100))
as
begin
	select TitleInfo.title,TitleInfo.titlecontent,TitleInfo.titleAddTime,GradeInfo.gradeYear,ProInfo.proName,TeacherInfo.teaName,TitleInfo.count from TitleInfo,TeacherInfo,GradeInfo,ProInfo
	where TitleInfo.gradeId = GradeInfo.gradeId and TitleInfo.proId = ProInfo.proId and TitleInfo.teadId = TeacherInfo.teaNum and GradeInfo.gradeYear = @GradeYear and ProInfo.proName = @ProName
end
GO
/****** Object:  StoredProcedure [dbo].[AllScreening]    Script Date: 06/16/2017 09:06:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AllScreening](@GradeYear int,@ProName varchar(100))
as
begin
select stuNum,stuName,stuSex,stuTel,proName,gradeYear,stuPwd,score from StuInfo,ProInfo,GradeInfo
where StuInfo.gradeId = GradeInfo.gradeId and StuInfo.proId = ProInfo.proId and GradeInfo.gradeYear = @GradeYear and ProInfo.proName = @ProName
end
GO
/****** Object:  Default [DF_TitleInfo_count]    Script Date: 06/16/2017 09:06:11 ******/
ALTER TABLE [dbo].[TitleInfo] ADD  CONSTRAINT [DF_TitleInfo_count]  DEFAULT ((5)) FOR [count]
GO
/****** Object:  Default [DF_TeacherInfo_teaPwd]    Script Date: 06/16/2017 09:06:11 ******/
ALTER TABLE [dbo].[TeacherInfo] ADD  CONSTRAINT [DF_TeacherInfo_teaPwd]  DEFAULT ((0)) FOR [teaPwd]
GO
/****** Object:  Default [DF_StuInfo_stuPwd]    Script Date: 06/16/2017 09:06:11 ******/
ALTER TABLE [dbo].[StuInfo] ADD  CONSTRAINT [DF_StuInfo_stuPwd]  DEFAULT ((0)) FOR [stuPwd]
GO
/****** Object:  Check [CK_StuInfo]    Script Date: 06/16/2017 09:06:11 ******/
ALTER TABLE [dbo].[StuInfo]  WITH CHECK ADD  CONSTRAINT [CK_StuInfo] CHECK  (([score]>(-1) AND [score]<(101)))
GO
ALTER TABLE [dbo].[StuInfo] CHECK CONSTRAINT [CK_StuInfo]
GO
