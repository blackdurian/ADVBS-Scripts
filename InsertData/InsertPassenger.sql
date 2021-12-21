USE TSI
GO
SET IDENTITY_INSERT Passenger ON
GO
SET NOCOUNT ON
GO
DELETE FROM Passenger
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (1, 'Yap','Yao Jin', 'M', '1998-4-12', 'jin123@gmail.com')
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (2, 'Lo','Wei Quan', 'M', '1998-4-13', 'quan123@gmail.com')
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (3, 'Neik','Ji Jiet', 'M', '1998-4-14', 'jiet123@gmail.com')
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (4, 'Amanda','Low', 'F', '1998-4-15', 'low123@gmail.com')
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (5, 'Amy','Lim', 'F', '1998-4-16', 'lim123@gmail.com')
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (6, 'Wang','Leehom', 'M', '1968-11-12', 'leehom@gmail.com')
GO
INSERT Passenger (Id, FName, LName, Gender, BOD, Email) VALUES (7, 'Trump','Donald ', 'M', '1948-11-12', 'trump@gmail.com')
GO
SET NOCOUNT OFF
GO
SET IDENTITY_INSERT Flight OFF