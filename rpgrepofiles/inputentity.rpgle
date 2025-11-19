**FREE
ctl-opt dftactgrp(*no) actgrp(*caller);

dcl-f CUSTDSPF workstn;   // Link to display file

dow *inlr = *off;

   // Initialize fields
   CUSTID   = *zero;
   CUSTNAME = *blanks;
   ADDRESS  = *blanks;
   PHONE    = *blanks;
   STATUS   = 'Enter customer details';

   // Show the entry screen and wait for input
   exfmt CUSTREC;

   // Process the input fields
   if CUSTID = 0 or %len(%trim(CUSTNAME)) = 0;
      STATUS = 'Invalid entry';
   else;
      STATUS = 'Data captured successfully!';
   endif;

   exfmt CUSTREC; // Redisplay with updated STATUS
   leave;

enddo;

*inlr = *on;

