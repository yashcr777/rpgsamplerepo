     H DFTACTGRP(*NO) ACTGRP(*CALLER)

     D http_url_post   PR                  ExtProc('http_url_post')
     D   url                     256A   Const
     D   data                   1024A   Const
     D   dataLen                  10I 0 Const
     D   response               4096A
     D   responseLen              10I 0 Const
     D   errorMsg                256A

     D url             S          256A   INZ('https://api.example.com/invoice')
     D payload         S         1024A   INZ('{"invoiceId":"INV123"}')
     D response        S         4096A
     D errorMsg        S          256A

     C                   EVAL      dataLen = %LEN(payload)
     C                   EVAL      responseLen = %SIZE(response)

     C                   CALLP     http_url_post(url: payload: dataLen: response: responseLen: errorMsg)

     C                   DSPLY     response
     C                   SETON                                        LR
