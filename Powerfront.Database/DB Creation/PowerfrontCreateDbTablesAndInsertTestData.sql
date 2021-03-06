USE [Powerfront]
GO
ALTER TABLE [dbo].[ImpactBeneficiaries] DROP CONSTRAINT [FK_ImpactId]
GO
ALTER TABLE [dbo].[ImpactBeneficiaries] DROP CONSTRAINT [FK_BeneficiaryGroup]
GO
ALTER TABLE [dbo].[CustomerRecords] DROP CONSTRAINT [FK_TypeId]
GO
ALTER TABLE [dbo].[CustomerRecords] DROP CONSTRAINT [FK_PropertyId]
GO
/****** Object:  Index [UK_ImpactId]    Script Date: 23/09/2016 06:26:14 ******/
ALTER TABLE [dbo].[Impact] DROP CONSTRAINT [UK_ImpactId]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 23/09/2016 06:26:14 ******/
DROP TABLE [dbo].[Type]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 23/09/2016 06:26:14 ******/
DROP TABLE [dbo].[Property]
GO
/****** Object:  Table [dbo].[ImpactBeneficiaries]    Script Date: 23/09/2016 06:26:14 ******/
DROP TABLE [dbo].[ImpactBeneficiaries]
GO
/****** Object:  Table [dbo].[Impact]    Script Date: 23/09/2016 06:26:14 ******/
DROP TABLE [dbo].[Impact]
GO
/****** Object:  Table [dbo].[CustomerRecords]    Script Date: 23/09/2016 06:26:14 ******/
DROP TABLE [dbo].[CustomerRecords]
GO
/****** Object:  Table [dbo].[BeneficiaryGroup]    Script Date: 23/09/2016 06:26:14 ******/
DROP TABLE [dbo].[BeneficiaryGroup]
GO
/****** Object:  Table [dbo].[BeneficiaryGroup]    Script Date: 23/09/2016 06:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BeneficiaryGroup](
	[BeneficiaryGroupId] [uniqueidentifier] NOT NULL,
	[BeneficiaryGroupDescription] [varchar](255) NOT NULL,
 CONSTRAINT [PK_BeneficiaryGroupId] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CustomerRecords]    Script Date: 23/09/2016 06:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerRecords](
	[TypeId] [varchar](255) NOT NULL,
	[PropertyId] [varchar](255) NOT NULL,
	[Value] [varchar](255) NOT NULL,
	[CustomerId] [varchar](255) NOT NULL,
	[RecordId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_RecordId] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Impact]    Script Date: 23/09/2016 06:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Impact](
	[ImpactId] [uniqueidentifier] NOT NULL,
	[Other] [varchar](255) NULL,
	[Notes] [varchar](255) NULL,
	[StartDate] [date] NOT NULL,
	[FinishDate] [date] NOT NULL,
	[ImpactName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED 
(
	[ImpactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImpactBeneficiaries]    Script Date: 23/09/2016 06:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImpactBeneficiaries](
	[id] [uniqueidentifier] NOT NULL,
	[ImpactId] [uniqueidentifier] NULL,
	[BeneficiaryGroupId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ImpactBeneficiariesId] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Property]    Script Date: 23/09/2016 06:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Property](
	[PropertyId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_AttributeId] PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Type]    Script Date: 23/09/2016 06:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type](
	[TypeId] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_EntityId] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'510d4419-fdac-4cf7-a529-fa1bc2816c8f', N'People Living in Areas of Deprivation')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'510d4419-fdac-4cf7-a529-fa1bc2817c82', N'Aged 18-64')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'510d4419-fdac-4cf7-a529-fa1bc2817c8b', N'Male')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'510d4419-fdac-4cf7-a529-fa1bc2817c8d', N'Female')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'510d4419-fdac-4cf7-a529-fa1bc2817c8f', N'Under 18s')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'520d4419-fdac-4cf7-a529-fa1bc2817c8f', N'Aged 65+')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'530d4419-fdac-4cf7-a529-fa1bc2817c8f', N'People With Disabilities')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'550d4419-fdac-4cf7-a529-fa1bc2817c8f', N'People from Ethnic Minority Communities')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'610d4419-fdac-4cf7-a529-fa1bc2817c8f', N'Lesbian, Gay and Bisexual People')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'710d4419-fdac-4cf7-a529-fa1bc2817c8f', N'Transgender People')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'810d4419-fdac-4cf7-a529-fa1bc2817c8f', N'People from Specific Religious Groups')
INSERT [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId], [BeneficiaryGroupDescription]) VALUES (N'910d4419-fdac-4cf7-a529-fa1bc2817c8f', N'People Living in Rural Communities')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'2', N'42', N'58e1fd21-68d7-4ab2-9438-e3477e065633', N'61b0ff47-ab96-4056-b252-493e4f75fc56')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'070154c9-818b-4264-9966-cb7c294a5be1', N'Blue', N'58e1fd21-68d7-4ab2-9438-e3477e065633', N'701d09d7-d359-4422-95b9-70750d94f9b1')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'1', N'Austin', N'58e1fd21-68d7-4ab2-9438-e3477e065633', N'4860593b-1fe5-4885-9c27-8925c69e9a04')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'1', N'Hadar', N'1', N'bad541e7-8fec-4e65-8969-ddeb4ba53432')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'2', N'47', N'1', N'bad541e7-8fec-4e65-8969-ddeb4ba53433')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'1', N'Greg', N'2', N'bad541e7-8fec-4e65-8969-ddeb4ba53435')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'2', N'38', N'2', N'bad541e7-8fec-4e65-8969-ddeb4ba53436')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'1', N'Michael', N'3', N'bad541e7-8fec-4e65-8969-ddeb4ba53437')
INSERT [dbo].[CustomerRecords] ([TypeId], [PropertyId], [Value], [CustomerId], [RecordId]) VALUES (N'1', N'2', N'45', N'3', N'bad541e7-8fec-4e65-8969-ddeb4ba53438')
INSERT [dbo].[Impact] ([ImpactId], [Other], [Notes], [StartDate], [FinishDate], [ImpactName]) VALUES (N'c0cc2873-d8dd-4a2e-ae3c-3cf3b15713d5', NULL, N'This impact initiative will help improve facilities for disabled people at centres across Scotland.', CAST(N'2018-01-01' AS Date), CAST(N'2020-01-01' AS Date), N'Impact 3')
INSERT [dbo].[Impact] ([ImpactId], [Other], [Notes], [StartDate], [FinishDate], [ImpactName]) VALUES (N'bdcba8f9-5cec-427c-97e7-447de5068656', N'', N'This will help those in poorer areas have better access to sporting opportunities.', CAST(N'2017-01-01' AS Date), CAST(N'2020-01-01' AS Date), N'Impact 2')
INSERT [dbo].[Impact] ([ImpactId], [Other], [Notes], [StartDate], [FinishDate], [ImpactName]) VALUES (N'30426927-91de-41fc-b36c-6ed0ae80a01f', N'Helping Kids', N'This will help kids improve at sport.', CAST(N'2017-01-01' AS Date), CAST(N'2019-01-01' AS Date), N'Impact 1')
INSERT [dbo].[ImpactBeneficiaries] ([id], [ImpactId], [BeneficiaryGroupId]) VALUES (N'00000000-0000-0000-0000-000000000000', N'bdcba8f9-5cec-427c-97e7-447de5068656', N'510d4419-fdac-4cf7-a529-fa1bc2816c8f')
INSERT [dbo].[ImpactBeneficiaries] ([id], [ImpactId], [BeneficiaryGroupId]) VALUES (N'f48e00ae-1ed3-40ae-a2e9-240b5c608714', N'30426927-91de-41fc-b36c-6ed0ae80a01f', N'510d4419-fdac-4cf7-a529-fa1bc2817c8f')
INSERT [dbo].[ImpactBeneficiaries] ([id], [ImpactId], [BeneficiaryGroupId]) VALUES (N'cf6c5242-b5eb-4cfc-9f4d-54b58e26d1c7', N'c0cc2873-d8dd-4a2e-ae3c-3cf3b15713d5', N'530d4419-fdac-4cf7-a529-fa1bc2817c8f')
INSERT [dbo].[Property] ([PropertyId], [Name]) VALUES (N'070154c9-818b-4264-9966-cb7c294a5be1', N'Eyes')
INSERT [dbo].[Property] ([PropertyId], [Name]) VALUES (N'1', N'Name')
INSERT [dbo].[Property] ([PropertyId], [Name]) VALUES (N'2', N'Age')
INSERT [dbo].[Type] ([TypeId], [Name]) VALUES (N'1', N'Customer')
/****** Object:  Index [UK_ImpactId]    Script Date: 23/09/2016 06:26:14 ******/
ALTER TABLE [dbo].[Impact] ADD  CONSTRAINT [UK_ImpactId] UNIQUE NONCLUSTERED 
(
	[ImpactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerRecords]  WITH CHECK ADD  CONSTRAINT [FK_PropertyId] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Property] ([PropertyId])
GO
ALTER TABLE [dbo].[CustomerRecords] CHECK CONSTRAINT [FK_PropertyId]
GO
ALTER TABLE [dbo].[CustomerRecords]  WITH CHECK ADD  CONSTRAINT [FK_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Type] ([TypeId])
GO
ALTER TABLE [dbo].[CustomerRecords] CHECK CONSTRAINT [FK_TypeId]
GO
ALTER TABLE [dbo].[ImpactBeneficiaries]  WITH CHECK ADD  CONSTRAINT [FK_BeneficiaryGroup] FOREIGN KEY([BeneficiaryGroupId])
REFERENCES [dbo].[BeneficiaryGroup] ([BeneficiaryGroupId])
GO
ALTER TABLE [dbo].[ImpactBeneficiaries] CHECK CONSTRAINT [FK_BeneficiaryGroup]
GO
ALTER TABLE [dbo].[ImpactBeneficiaries]  WITH CHECK ADD  CONSTRAINT [FK_ImpactId] FOREIGN KEY([ImpactId])
REFERENCES [dbo].[Impact] ([ImpactId])
GO
ALTER TABLE [dbo].[ImpactBeneficiaries] CHECK CONSTRAINT [FK_ImpactId]
GO
