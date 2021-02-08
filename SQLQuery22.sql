/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Id]
      ,[GradeId]
      ,[CourseId]
      ,[GradeSpecialty]
      ,[TeacherId]
  FROM [University].[dbo].[Lessons]

  --[CourseId] 1 IT 2 PTI
  --[GradeId] 1-6
  --[GradeSpecialty] 1 KST 2 SIT
  --[TeacherId] 1 N - 2 2 V - 5 3 M - 5 4 A - 4 5 S - 2

  -- 1, 4 а група, ПТИ, КСТ, А 4
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (1, 4, 2, 1, 4)
  -- 2, 1 а група,  ИТ, СИТ, В 2
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (2, 1, 1, 2, 2)
  -- 3, 6 а група,  ИТ, СИТ, М 3
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (3, 6, 1, 2, 3)
  -- 4, 3 б група,  ИТ, СИТ, М 3
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (4, 3, 1, 2, 3)
  -- 5, 4 б група,  ИТ, СИТ, В 2
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (5, 4, 1, 2, 2)
  -- 6, 5 а група,  ИТ, СИТ, М 3
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (6, 5, 1, 2, 3)
  -- 7, 1 б група, ПТИ, КСТ, В 2
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (7, 1, 2, 1, 2)
  -- 8, 3 а група,  ИТ, СИТ, Н 1
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (8, 3, 1, 2, 1)
  -- 9, 5 б група,  ИТ, СИТ, С 5
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (9, 5, 1, 2, 5)
  --10, 1 б група,  ИТ, СИТ, С 5
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (10, 1, 1, 2, 5)
  --11, 2 а група, ПТИ, КСТ, В 2
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (11, 2, 2, 1, 2)
  --12, 3 а група, ПТИ, КСТ, А 4
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (12, 3, 2, 1, 4)
  --13, 4 а група,  ИТ, СИТ, Н 1
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (13, 4, 1, 2, 1)
  --14, 2 а група,  ИТ, СИТ, М 3
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (14, 2, 1, 2, 3)
  --15, 2 б група,  ИТ, СИТ, М 3
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (15, 2, 1, 2, 3)
  --16, 3 б група, ПТИ, КСТ, А 4
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (16, 3, 2, 1, 4)
  --17, 1 а група, ПТИ, КСТ, В 2
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (17, 1, 2, 1, 2)
  --18, 2 б група, ПТИ, КСТ, А 4
  INSERT INTO [University].[dbo].[Lessons] ([Id], [GradeId], [CourseId], [GradeSpecialty], [TeacherId]) VALUES (18, 2, 2, 1, 4)
