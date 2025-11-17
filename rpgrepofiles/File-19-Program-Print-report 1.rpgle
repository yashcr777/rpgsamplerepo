FMASTER  IF  E           K        DISK                            
FPRINT4  O   E             90     PRINTER                         
*                                                                 
*                                                                
C                     Z-ADD0         COUNT   20                   
C                     WRITEHEADER                                  
C                     READ REC1                     80            
C           *IN80     DOWEQ*OFF                                   
C                     WRITEDETAIL                 90               
C   90                WRITEHEADER                                 
C                     ADD  1         COUNT                        
C                     READ REC1                     80            
C                     ENDDO                                       
C                     MOVELCOUNT     TOTAL                        
C                     WRITEFOOTER                                 
C                     SETON                     LR  
 