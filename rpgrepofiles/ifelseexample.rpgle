**free
ctl-opt main(Main);

dcl-s price     packed(9:2) inz(125.00);
dcl-s discount  packed(5:2);

if price >= 100.00;
   discount = price * 0.10;
elseif price >= 50.00;
   discount = price * 0.05;
else;
   discount = *zeros;
endif;

dsply ('Discount: ' + %char(discount));

return;
