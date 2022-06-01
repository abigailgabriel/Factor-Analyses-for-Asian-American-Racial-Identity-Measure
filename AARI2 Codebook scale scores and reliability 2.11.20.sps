* Encoding: UTF-8.
date: 5.6.19 

**********************************************
Created Scale Scores and Reliability Coefficients for the following scales:
1. Critical Consciousness (racism subscale +2 classism items) (Shin) [cc]
2. Internalization of Model Minority Myth Scale [MMM]
3. Subtle and Blatant Racism Measure [SABR]
4. Asian American Racial Identity [AARI]
5. Critical Consciousness (Diemer) [diem]
6. Black LIves Matter Measure [blm]
7. Asian American Studies Scale [apas]
*********************************************


*************************************Nativity*****************************************

RECODE
gen_stat (1=0) (2=1) (3=1) (4=1) (5=1)  INTO Nativity .
VALUE LABELS nativity 0 'Foreign born' 1 'US born' .  
VARIABLE LABELS nativity 'Nativity (1=US born)'.
EXECUTE .

*********************************************************************Critical Consciousness (Shin)***************************************************************************************

RECODE
cc2 cc6 cc7 (7=1) (6=2) (5=3) (4=4) (3=5) (2=6) (1=7) INTO cc2r cc6r cc7r.
EXECUTE.

COMPUTE cc_tot = mean.7(cc1, cc2r, cc3, cc4, cc5, cc6r, cc7r).
VARIABLE LABELS CC_tot 'Critical Consciousness Total Scale'.
EXECUTE.

RELIABILITY
  /VARIABLES= cc1, cc2r, cc3, cc4, cc5, cc6r, cc7r
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

COMPUTE cc_Racism = mean.4(cc1, cc2r, cc3, cc4, cc5).
VARIABLE LABELS CC_Racism 'Critical Consciousness Racism Subscale'.
EXECUTE.

RELIABILITY
  /VARIABLES= cc1, cc2r, cc3, cc4, cc5
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .



*****************************************************************************************Internalization MMM**************************************************************************************
************************
Internalization MMM total
***********************

COMPUTE mm_internalization= mean.15(mm1, mm2, mm3, mm4, mm5, mm6, mm7, mm8, mm9, mm10, mm11, mm12, mm13, mm14, mm15). 
VARIABLE LABELS mm_internalization 'Internalization of MMM' . 
EXECUTE.

RELIABILITY
  /VARIABLES=mm1, mm2, mm3, mm4, mm5, mm6, mm7, mm8, mm9, mm10, mm11, mm12, mm13, mm14, mm15 
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

**************************************.
*MMM-Unrestricted Mobility 5
**************************************

COMPUTE mm_mobility = mean.5(mm11, mm12, mm13, mm14, mm15). 
VARIABLE LABELS mm_mobility 'model minority--unrestricted mobility' . 
EXECUTE.

RELIABILITY
  /VARIABLES=mm11 mm12 mm13 mm14 mm15 
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .
  

**************************************.
*MMM-Achievement Oriented 10 
**************************************.

COMPUTE mm_achieve = mean.10(mm1, mm2, mm3, mm4, mm5, mm6, mm7, mm8, mm9, mm10). 
VARIABLE LABELS mm_achieve 'model minority--achievement orientation' . 
EXECUTE.

RELIABILITY
  /VARIABLES=mm1 mm2 mm3 mm4 mm5 mm6 mm7 mm8 mm9 mm10
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


***********************************************************************************************************************SABR Racism Scale. 

**************************************.
*SABR-Total *
**************************************.
COMPUTE sabr_total = mean.10(sabr1, sabr2, sabr3, sabr4, sabr5, sabr6, sabr7, sabr8, sabr9, sabr10).
VARIABLE LABEL sabr_total 'SABR-total scale' . 
execute.

RELIABILITY
  /VARIABLES=sabr1 sabr2 sabr3 sabr4 sabr5 sabr6 sabr7 sabr8 sabr9 sabr10
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


**************************************.
*SABR-Subtle*
**************************************.
COMPUTE sabr_subtle = mean.4(sabr1, sabr2, sabr7, sabr10).
VARIABLE LABEL sabr_subtle 'SABR-subtle scale' . 
execute.

RELIABILITY
  /VARIABLES=sabr1 sabr2 sabr7 sabr10
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


**************************************.
*SABR-Blatant *
**************************************.
COMPUTE sabr_blatant = mean.4(sabr5, sabr6, sabr8, sabr9).
VARIABLE LABEL sabr_blatant 'SABR-blatant scale' . 
execute.

RELIABILITY
  /VARIABLES=sabr5 sabr6 sabr8 sabr9
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


*****************************************************Critical Consciousness (Diemer)***********************************

***Critical Reflection***

COMPUTE diem_reflection= mean.8(diem1, diem2, diem3, diem4, diem5, diem6, diem7, diem8).
VARIABLE LABEL diem_reflection 'Diemer Critical Reflection' . 
execute.

RELIABILITY
  /VARIABLES= diem1, diem2, diem3, diem4, diem5, diem6, diem7, diem8
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

***Critical Action***

COMPUTE diem_action= mean.9(diem9, diem10, diem11, diem12, diem13, diem14, diem15, diem16, diem17).
VARIABLE LABEL diem_action 'Diemer Critical Action' . 
execute.

RELIABILITY
  /VARIABLES= diem9, diem10, diem11, diem12, diem13, diem14, diem15, diem16, diem17
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


*********************************************************************BLM***************************************************************************************

COMPUTE BLM_Tot = mean.12(blm1, blm2, blm3, blm4, blm5, blm6, blm7, blm8, blm9, blm10, blm11, blm12).
VARIABLE LABELS BLM_Tot 'BLM total scale'.
EXECUTE.

RELIABILITY
  /VARIABLES=blm1, blm2, blm3, blm4, blm5, blm6, blm7, blm8, blm9, blm10, blm11, blm12
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

*****************************************
Awareness of Systemic Oppression
*****************************************

COMPUTE BLM_systemic = mean.6(blm1, blm2, blm3, blm4, blm5, blm6).
VARIABLE LABELS BLM_systemic 'BLM Awareness of Systemic Oppression'.
EXECUTE.

RELIABILITY
  /VARIABLES=blm1, blm2, blm3, blm4, blm5, blm6
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

**********************
Egalitarian Values
**********************

COMPUTE BLM_egalitarian = mean.6(blm7, blm8, blm9, blm10, blm11, blm12).
VARIABLE LABELS BLM_egalitarian 'BLM Egalitarian Values'.
EXECUTE.

RELIABILITY
  /VARIABLES=blm7, blm8, blm9, blm10, blm11, blm12
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .



***********************************Ethnic Studies (APAS)***********************

COMPUTE apas_total = mean.10(apas1, apas2, apas3, apas4, apas5, apas6, apas7, apas8, apas9, apas10).
VARIABLE LABEL apas_total 'Ethnic Studies APAS total' . 
execute.

RELIABILITY
  /VARIABLES=apas1, apas2, apas3, apas4, apas5, apas6, apas7, apas8, apas9, apas10
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


***********************************AARIM***********************

COMPUTE AARI_total = mean(AARI72, AARI8, AARI51, AARI64, AARI27,
 AARI29, AARI30, AARI26, AARI34, AARI37, AARI49, AARI48, AARI39).
EXECUTE.

RELIABILITY
  /VARIABLES= AARI72, AARI8, AARI51, AARI64, AARI27,
 AARI29, AARI30, AARI26, AARI34, AARI37, AARI49, AARI48, AARI39
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .


COMPUTE AARI_AAU = mean(AARI72, AARI8, AARI51, AARI64).
EXECUTE.

RELIABILITY
  /VARIABLES= AARI72, AARI8, AARI51, AARI64
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .

COMPUTE AARI_IRS = mean(AARI27, AARI29, AARI30, AARI26).
EXECUTE.

RELIABILITY
  /VARIABLES= AARI27, AARI29, AARI30, AARI26
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .
 
COMPUTE AARI_TCC = mean(AARI34, AARI37, AARI49, AARI48, AARI39).
EXECUTE.

RELIABILITY
  /VARIABLES= AARI34, AARI37, AARI49, AARI48, AARI39
  /FORMAT=NOLABELS
  /SCALE(ALPHA)=ALL/MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE CORR
  /SUMMARY=TOTAL MEANS VARIANCE .








