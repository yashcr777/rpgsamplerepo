**free
ctl-opt main(Main);

dcl-s age int(3) inz(17);

if age >= 18;
   dsply ('Eligible to vote');
elseif age >= 16;
   dsply ('Eligible with guardian consent');
else;
   dsply ('Not eligible');
endif;

return;
