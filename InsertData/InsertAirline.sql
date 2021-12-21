USE TSI
GO
SET IDENTITY_INSERT Airline ON
GO
SET NOCOUNT ON
GO
DELETE FROM Airline 
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee) VALUES (1, 'AirAsia Airlines', 200,50)
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee) VALUES (2, 'Malaysia Airlines', 80,0)
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee) VALUES (3, 'Singapore Airlines', 250,20)
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee) VALUES (4, 'Japan Airlines', 100,0)
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee) VALUES (5, 'Middle East Airlines', 100,0)
GO
INSERT Airline (Id, Name, UnaccompaniedMinorServiceFee, WheelchairServiceFee) VALUES (6, 'Emirates Airline', 150,0)
GO
SET NOCOUNT OFF
GO
SET IDENTITY_INSERT Airline OFF
GO