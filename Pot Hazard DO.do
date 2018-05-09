use "H:\Pot Hazard.dta", clear
capture log close
log using "H:\Pot Hazard.log", replace
reg AlcoholUseBinary year1 year2 year3 sex2 UnderEase PartySchool PotHazard, robust
reg Consumption year1 year2 year3 sex2 UnderEase PartySchool PotHazard, robust
reg AlcoholUseBinary year1 year2 year3 sex2, robust
reg Consumption year1 year2 year3 sex2, robust
log close
