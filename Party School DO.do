use "H:\Is Hamilton a Party School.dta", clear
capture log close
log using "H:\Party School.log", replace
reg AB year1 year2 year3 sex2 PartySchool, robust
reg Consumption year1 year2 year3 sex2 PartySchool, robust
reg AB year1 year2 year3 sex2, robust
reg Consumption year1 year2 year3 sex2, robust
reg PartySchool AB year1 year2 year3 sex2, robust
log close
