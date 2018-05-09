use "H:\Spring 2013 Alcohol Panel Data.dta", clear
capture log close
log using "H:\Alcohol Panel.log", replace
probit ab year1 year2 year3 sex2 Party s1 s2, robust
margins, dydx (year1 year2 year3 sex2 Party s1 s2)
oprobit Drinking year1 year2 year3 sex2 Party s1 s2, robust
margins, dydx (year1 year2 year3 sex2 Party s1 s2)
probit Party year1 year2 year3 sex2 ab s1 s2, robust
margins, dydx (year1 year2 year3 sex2 ab s1 s2)
probit Party year1 year2 year3 sex2 Drinking s1 s2, robust
margins, dydx (year1 year2 year3 sex2 Drinking s1 s2)
