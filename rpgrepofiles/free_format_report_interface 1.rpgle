dcl-f MASTER  disk;
dcl-f PRINT4  printer(90);

dcl-s Count int(20);
dcl-s Total int(20);

// initialize counter
Count = 0;

// write header
write HEADER;

// read first record
read REC1;
dow not *in80;   // loop while indicator 80 is *OFF

   // write detail line
   write DETAIL;

   // conditional header if indicator 90 is on
   if *in90;
      write HEADER;
   endif;

   // increment counter
   Count += 1;

   // read next record
   read REC1;
enddo;

// move count to total
Total = Count;

// write footer
write FOOTER;

// set last record indicator
*inlr = *on;
