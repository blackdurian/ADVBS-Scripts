@echo off

set root=C:\Users\admin\My Drive\APU\Year3Sem2\CT004-3-3-ADBS\Assignment\Scripts
set serverInstant=LAPTOP-LWQ

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


echo Create Stored Procedure
sqlcmd -S %serverInstant% -i "%root%\StoredProcedures\ArchiveFlight-LoWeiQuan.sql"



echo Execution Batch Exiting
pause
exit