USE TSI

--	Trigger 2# on adding Valid Today < DepartureTime < ArrivalTime 
GO

INSERT INTO Flight (AircraftId, Code, FlightState, FirstClassPrice, BusinessClassPrice,PremiumClassPrice, EconomyClassPrice, RouteId, DepartureTime, ArrivalTime
           ,NumOfMeal,CancelFeeChargeRate,ChangeFeeChargeRate,InfantChargeRate,HasUnaccompaniedMinorService,HasWheelchairService)
     VALUES (1,'MH2710','COMPLETED',1500,1200,1000,900,1,'2022-01-18 10:34:09 +08:0','2022-01-18 14:34:09 +08:0'
           ,1,0.5,0.3,0.12,1,1)