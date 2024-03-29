﻿* Encoding: UTF-8.
*AARI AAU*.
RELIABILITY
  /VARIABLES= AARI72, AARI8, AARI51, AARI64
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

*AARI IRS*.
RELIABILITY
  /VARIABLES= AARI27, AARI29, AARI30, AARI26
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .
 
*AARI TCC*.
RELIABILITY
  /VARIABLES= AARI34, AARI37, AARI49, AARI48, AARI39
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

*AARI Total*.
 RELIABILITY
  /VARIABLES= AARI72, AARI8, AARI51, AARI64, AARI27,
 AARI29, AARI30, AARI26, AARI34, AARI37, AARI49, AARI48, AARI39
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

DESCRIPTIVES VARIABLES=AARI_AAU AARI_IRS AARI_TCC AARI_total
  /STATISTICS=MEAN STDDEV MIN MAX.
