**FREE

dcl-s custId packed(9:0);
dcl-s custName char(50);
dcl-s custBalance packed(11:2);

// Simple SELECT INTO
custId = 1001;
exec sql
  SELECT CUSTOMER_NAME, BALANCE
  INTO :custName, :custBalance
  FROM CUSTOMER_TABLE
  WHERE CUSTOMER_ID = :custId;

if sqlcode = 0;
  dsply ('Customer: ' + %trim(custName));
  dsply ('Balance: ' + %char(custBalance));
endif;