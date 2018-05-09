use "H:\Survey_on_Drinking_and_Partying.dta", clear
capture log close
log using "H:\HamPoll Drinking Survey 2.log", replace
set more off
probit AlcoholUseBinary class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3, robust
margins, dydx (class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3)
oprobit Q13 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3, robust
margins, dydx (Q13 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3)
oprobit Q21 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3 if Q13 >=2, robust
margins, dydx (Q13 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3)
oprobit Q8 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3 if Q13 >=2, robust
margins, dydx (Q13 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3)
probit Q3 class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3, robust
margins, dydx (class1 class2 class3 gender2 Arts Humanities Science Math DarkSide GraySide Minority MinFem Q6 Q7_1 Q7_2 Q7_3)
log close
