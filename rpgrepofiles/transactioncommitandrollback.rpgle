     /free
       exec sql
         update customers
            set balance = balance - :amount
          where custid = :custid;
       
       if sqlcod = 0;
         exec sql commit;
       endif;
     /end-free