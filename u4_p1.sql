
/*1. Write a simple procedure without any parameter that shows user
defined message on the screen. Call the procedure using separate
PL/SQL block and on the command line.*/

CREATE OR REPLACE PROCEDURE greetings AS

BEGIN

	dbms_output.put_line('Hello World!');

END;
/