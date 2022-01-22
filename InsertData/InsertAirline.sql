USE TSI
GO
BEGIN TRAN
GO
SET IDENTITY_INSERT Airline ON
GO
SET NOCOUNT ON
GO
DELETE FROM Airline 
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee, MaxPassenger) VALUES (1, 'AirAsia Airlines', 200,50, 'True')
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee, MaxPassenger) VALUES (2, 'Malaysia Airlines', 80,0, 'True')
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee, MaxPassenger) VALUES (3, 'Singapore Airlines', 250,20, 'True')
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee, MaxPassenger) VALUES (4, 'Japan Airlines', 100,0, 'True')
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee, MaxPassenger) VALUES (5, 'Middle East Airlines', 100,0, 'True')
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee, MaxPassenger) VALUES (6, 'Emirates Airline', 150,0, 'True')
GO
SET NOCOUNT OFF
GO
SET IDENTITY_INSERT Airline OFF
GO
COMMIT TRAN
PRINT 'Airline is inserted'
GO