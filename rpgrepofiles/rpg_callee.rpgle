**FREE
ctl-opt dftactgrp(*no) actgrp(*caller);

dcl-pr AddNumbers int(10);
   num1 int(10);
   num2 int(10);
end-pr;

dcl-pr ShowMessage;
   msg varchar(50);
end-pr;

dcl-s result int(10);

result = AddNumbers(5 : 7);
dsply ('Sum is ' + %char(result));

ShowMessage('Hello from CALLP procedure!');

*inlr = *on;

dcl-proc AddNumbers;
   dcl-pi *n int(10);
      num1 int(10);
      num2 int(10);
   end-pi;

   return num1 + num2;
end-proc;

dcl-proc ShowMessage;
   dcl-pi *n;
      msg varchar(50);
   end-pi;

   dsply msg;
end-proc;

dcl-proc BoundProc;
   dcl-pi *n;
   end-pi;

   dsply ('Hello from CALLB procedure!');
end-proc;
