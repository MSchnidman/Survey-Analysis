use "H:\Blackout Survey.dta", clear
capture log close
log using "H:\Blackout Survey.log", replace
reg AB year1 year2 year3 sex2 Party Blackout, robust
reg Drinking year1 year2 year3 sex2 Blackout Party, robust
reg AB year1 year2 year3 sex2, robust
reg Drinking year1 year2 year3 sex2, robust
log close
