@echo off

set root=C:\Users\User\Desktop\ADVBS-Scripts
set serverInstant=LAPTOP-F09J5GF9\SQLEXPRESS

echo Create Table
sqlcmd -S %serverInstant% -i "%root%\CreateTable.sql"

echo Insert Data
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertConstants.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertCity.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertRoute.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertMeal.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertPassenger.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertAirline.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertAircraft.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertItinerary.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertItineraryInvoice.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertFlight.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertTicket.sql"
sqlcmd -S %serverInstant% -i "%root%\InsertData\InsertTicketMeal.sql"

echo Create Trigger
sqlcmd -S %serverInstant% -i "%root%\Triggers\TriggerConstantsValueCheck-LoWeiQuan.sql"
sqlcmd -S %serverInstant% -i "%root%\Triggers\TriggerCheckPassengerPerBooking-NeikJiJiet.sql"

echo Create Stored Procedure
sqlcmd -S %serverInstant% -i "%root%\StoredProcedures\ArchiveFlight-LoWeiQuan.sql"
sqlcmd -S %serverInstant% -i "%root%\StoredProcedures\CancelTicket-NeikJiJiet.sql"

echo Execution Batch Exiting
pause
exit
