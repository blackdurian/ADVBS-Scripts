CREATE TRIGGER CheckPassengerNumber
ON Ticket
AFTER INSERT
AS
	BEGIN 
	DECLARE @ticketID int;
	DECLARE @ReservationID int;
	DECLARE @FlightID int;
	DECLARE @MaximumPassenger VARCHAR(10);
	DECLARE @Row int;

	SET @ReservationID =(SELECT DISTINCT ReservationId from inserted);
	SET @Row = (SELECT COUNT(Id) FROM inserted);
	SET @FlightID =(SELECT DISTINCT FlightID from inserted where ReservationId=@ReservationId);
	SET @MaximumPassenger=(SELECT DISTINCT AL.MaxPassenger FROM Airline AL
							INNER JOIN Aircraft AC ON AC.AirlineId = AL.Id
							INNER JOIN Flight F ON F.AircraftId = AC.Id
							INNER JOIN Ticket T ON @FlightID = F.Id);

	IF @Row > 4
		IF @MaximumPassenger = 'True'
			BEGIN
				PRINT 'You have exceed the maximum booking number';
				ROLLBACK
			END
		ELSE
			SELECT * FROM inserted WHERE ReservationId=@ReservationID;
	SELECT * FROM inserted WHERE ReservationId=@ReservationID;
	END