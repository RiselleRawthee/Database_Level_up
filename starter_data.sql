USE [SCA_DB]
GO
SET IDENTITY_INSERT [dbo].[Gender_Lookup] ON 

INSERT [dbo].[Gender_Lookup] ([Gender_ID], [Gender_Description]) VALUES (1, N'Male')
INSERT [dbo].[Gender_Lookup] ([Gender_ID], [Gender_Description]) VALUES (2, N'Female')
INSERT [dbo].[Gender_Lookup] ([Gender_ID], [Gender_Description]) VALUES (3, N'Other')
INSERT [dbo].[Gender_Lookup] ([Gender_ID], [Gender_Description]) VALUES (4, N'Unknown')
SET IDENTITY_INSERT [dbo].[Gender_Lookup] OFF
GO
SET IDENTITY_INSERT [dbo].[Race_Lookup] ON 

INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (1, N'White')
INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (2, N'Black')
INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (3, N'Indian')
INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (4, N'Asian')
INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (5, N'Coloured')
INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (6, N'Other')
INSERT [dbo].[Race_Lookup] ([Race_ID], [Race_Description]) VALUES (7, N'Unknown')
SET IDENTITY_INSERT [dbo].[Race_Lookup] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([User_ID], [Gender_ID], [Race_ID], [Phone_Number], [Age]) VALUES (1, 2, 1, N'0715234398', 22)
INSERT [dbo].[User] ([User_ID], [Gender_ID], [Race_ID], [Phone_Number], [Age]) VALUES (2, 2, 1, N'0873459838', 50)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Assailant] ON 

INSERT [dbo].[Assailant] ([Assailant_ID], [Race_ID], [Gender_ID], [Description]) VALUES (1, 1, 1, N'White man wearing a black hoodie. Had curly dark hair')
INSERT [dbo].[Assailant] ([Assailant_ID], [Race_ID], [Gender_ID], [Description]) VALUES (2, 1, 2, N'White woman with blonde hair in a white van')
INSERT [dbo].[Assailant] ([Assailant_ID], [Race_ID], [Gender_ID], [Description]) VALUES (3, 2, 1, N'Red hat with long coat')
INSERT [dbo].[Assailant] ([Assailant_ID], [Race_ID], [Gender_ID], [Description]) VALUES (4, 3, 1, N'Jeans and tshirt, long hair')
SET IDENTITY_INSERT [dbo].[Assailant] OFF
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([Area_ID], [Postal_Code], [Suburb], [City], [Province]) VALUES (1, 2001, N'Braamfontein', N'Johannesburg', N'Gauteng')
INSERT [dbo].[Area] ([Area_ID], [Postal_Code], [Suburb], [City], [Province]) VALUES (2, 2193, N'Killarney', N'Johannesburg', N'Gauteng')
INSERT [dbo].[Area] ([Area_ID], [Postal_Code], [Suburb], [City], [Province]) VALUES (3, 7441, N'Century City', N'Cape Town', N'Western Cape')
INSERT [dbo].[Area] ([Area_ID], [Postal_Code], [Suburb], [City], [Province]) VALUES (4, 2193, N'Parktown', N'Johannesburg', N'Gauteng')
INSERT [dbo].[Area] ([Area_ID], [Postal_Code], [Suburb], [City], [Province]) VALUES (5, 2196, N'Rosebank', N'Johannesburg', N'Gauteng')
SET IDENTITY_INSERT [dbo].[Area] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([Location_ID], [Area_Code_ID], [Street_Number], [Street_Name], [Latitude], [Longitude]) VALUES (1, 1, 1, N'Jan Smuts Avenue', CAST(-25.571944 AS Decimal(10, 6)), CAST(31.181389 AS Decimal(10, 6)))
INSERT [dbo].[Location] ([Location_ID], [Area_Code_ID], [Street_Number], [Street_Name], [Latitude], [Longitude]) VALUES (2, 2, 1, N'Newtown Avenue', CAST(-26.159500 AS Decimal(10, 6)), CAST(28.051833 AS Decimal(10, 6)))
INSERT [dbo].[Location] ([Location_ID], [Area_Code_ID], [Street_Number], [Street_Name], [Latitude], [Longitude]) VALUES (3, 3, 1, N'N Bank Ln', CAST(-33.893400 AS Decimal(10, 6)), CAST(18.508200 AS Decimal(10, 6)))
INSERT [dbo].[Location] ([Location_ID], [Area_Code_ID], [Street_Number], [Street_Name], [Latitude], [Longitude]) VALUES (4, 4, 17, N'Jubilee Road', CAST(-26.174845 AS Decimal(10, 6)), CAST(28.045617 AS Decimal(10, 6)))
INSERT [dbo].[Location] ([Location_ID], [Area_Code_ID], [Street_Number], [Street_Name], [Latitude], [Longitude]) VALUES (5, 5, 15, N'Sturdee Avenue', CAST(-26.145300 AS Decimal(10, 6)), CAST(28.038300 AS Decimal(10, 6)))
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Incident] ON 

INSERT [dbo].[Incident] ([Incident_ID], [User_ID], [Location_ID], [Date], [Time], [Description]) VALUES (1, 1, 1, CAST(N'2022-02-21' AS Date), CAST(N'18:00:00' AS Time), N'Catcalled while walking out of a lecture, then was groped')
INSERT [dbo].[Incident] ([Incident_ID], [User_ID], [Location_ID], [Date], [Time], [Description]) VALUES (2, 2, 2, CAST(N'2022-02-14' AS Date), CAST(N'15:00:00' AS Time), N'Smash and grab in parking lot')
SET IDENTITY_INSERT [dbo].[Incident] OFF
GO

INSERT [dbo].[Assailant_Incident] ([Assailant_ID], [Incident_ID]) VALUES (1, 1)
INSERT [dbo].[Assailant_Incident] ([Assailant_ID], [Incident_ID]) VALUES (2, 1)
INSERT [dbo].[Assailant_Incident] ([Assailant_ID], [Incident_ID]) VALUES (3, 2)
INSERT [dbo].[Assailant_Incident] ([Assailant_ID], [Incident_ID]) VALUES (4, 2)
GO
SET IDENTITY_INSERT [dbo].[Hospital] ON 

INSERT [dbo].[Hospital] ([Hospital_ID], [Location_ID], [Name], [Phone Number]) VALUES (1, 4, N'Charlotte Maxeke Johannesburg Academic Hospital', N' 011 488 4911')
SET IDENTITY_INSERT [dbo].[Hospital] OFF
GO
SET IDENTITY_INSERT [dbo].[SAPS] ON 

INSERT [dbo].[SAPS] ([SAPS_ID], [Location_ID], [Name], [Phone Number]) VALUES (1, 5, N'Rosebank Police Station', N'011 778 4700')
SET IDENTITY_INSERT [dbo].[SAPS] OFF
GO
SET IDENTITY_INSERT [dbo].[Incident_Type] ON 

INSERT [dbo].[Incident_Type] ([Incident_Type_ID], [Incident_Description]) VALUES (1, N'Catcalling')
INSERT [dbo].[Incident_Type] ([Incident_Type_ID], [Incident_Description]) VALUES (2, N'Groping')
INSERT [dbo].[Incident_Type] ([Incident_Type_ID], [Incident_Description]) VALUES (3, N'Smash and grab')
SET IDENTITY_INSERT [dbo].[Incident_Type] OFF
GO

SET IDENTITY_INSERT [dbo].[Incident_Report] ON 
INSERT [dbo].[Incident_Report] ([Incident_Report_ID], [Incident_ID], [Incident_Type_ID]) VALUES (1, 1, 1)
INSERT [dbo].[Incident_Report] ([Incident_Report_ID], [Incident_ID], [Incident_Type_ID]) VALUES (2, 1, 2)
INSERT [dbo].[Incident_Report] ([Incident_Report_ID], [Incident_ID], [Incident_Type_ID]) VALUES (3, 2, 3)
SET IDENTITY_INSERT [dbo].[Incident_Report] OFF 
GO
