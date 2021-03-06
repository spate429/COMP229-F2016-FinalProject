USE [SportPortal]
GO
SET IDENTITY_INSERT [Games] ON 


INSERT [Games] ([Id], [Name], [TypeID], [IsActive], [CreatedDate]) VALUES (2, N'8 Ball Pool', 1, 1, CAST(0x0000A6A6000F9465 AS DateTime))
INSERT [Games] ([Id], [Name], [TypeID], [IsActive], [CreatedDate]) VALUES (3, N'Tenis', 1, 1, CAST(0x0000A6A600101B33 AS DateTime))
INSERT [Games] ([Id], [Name], [TypeID], [IsActive], [CreatedDate]) VALUES (4, N'Baseball', 1, 1, CAST(0x0000A6A60010319C AS DateTime))
SET IDENTITY_INSERT [Games] OFF
SET IDENTITY_INSERT [GameTypes] ON 

INSERT [GameTypes] ([Id], [Type]) VALUES (1, N'Outdoor')
INSERT [GameTypes] ([Id], [Type]) VALUES (2, N'Indoor')
SET IDENTITY_INSERT [GameTypes] OFF
SET IDENTITY_INSERT [Matches] ON 

INSERT [Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (1, 1, 1, 3, CAST(0x0000A69B00000000 AS DateTime), 1)
INSERT [Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (2, 1, 2, 5, CAST(0x0000A69B00000000 AS DateTime), 1)
INSERT [Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (3, 1, 4, 1, CAST(0x0000A69E00000000 AS DateTime), 1)
INSERT [Matches] ([Id], [GameID], [Team1], [Team2], [MatchDate], [MatchStatus]) VALUES (4, 2, 6, 8, CAST(0x0000A6A701838AF0 AS DateTime), 1)
SET IDENTITY_INSERT [Matches] OFF
SET IDENTITY_INSERT [Scores] ON 

INSERT [Scores] ([id], [MatchID], [Team1Score], [Team2Score]) VALUES (1, 1, 2, 3)
INSERT [Scores] ([id], [MatchID], [Team1Score], [Team2Score]) VALUES (2, 2, 1, 0)
INSERT [Scores] ([id], [MatchID], [Team1Score], [Team2Score]) VALUES (3, 3, 0, 0)
INSERT [Scores] ([id], [MatchID], [Team1Score], [Team2Score]) VALUES (4, 4, 2, 3)
SET IDENTITY_INSERT [Scores] OFF
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (1, N'Arsenal', 1)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (2, N'Mnachester united', 1)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (3, N'Real Madrid', 1)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (4, N'Chelsea', 1)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (5, N'A.C.Milan', 1)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (6, N'India', 2)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (7, N'Canada', 2)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (8, N'US', 2)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (9, N'Australia', 2)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (10, N'Spain', 2)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (11, N'Ace Breakers', 3)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (12, N'Dare Doubles', 3)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (13, N'High Fives', 3)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (14, N'String Nation', 3)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (15, N'Play it Forward', 3)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (16, N'Arizona Diamondbacks', 4)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (17, N'Atlanta Braves', 4)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (18, N'Boston Red Sox', 4)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (19, N'Houston Astros', 4)
INSERT [Teams] ([Id], [Name], [GameID]) VALUES (20, N'New York Mets', 4)
SET IDENTITY_INSERT [Users] ON 

INSERT [Users] ([Id], [UserName], [Password], [Status]) VALUES (1, N'admin', N'admin', N'1')
SET IDENTITY_INSERT [Users] OFF
