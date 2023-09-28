********************************************************************************
*UK House Prices
********************************************************************************
cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Playlists\Statistics in the media\V8 House prices\"

use "house_prices.dta", clear

*Convert time (string) to date
gen year_string = substr(time, 1, 4)
destring year_string, generate(year)
drop year_string
label var year "Year"

gen q_string = substr(time, 7, 7)
destring q_string, generate(quarter)
drop q_string
label var quarter "Quarter"

*Annual data
*GDP: add quarterly data
rename gdp gdp_q
bysort year: egen gdp = total(gdp_q)

rename gdp_pc gdp_pcq
bysort year: egen gdp_pc = total(gdp_pcq)

*Prices: only take first quarter
keep if quarter==1

*Tidy up
drop quarter time gdp_q
order year
drop if year==2023

*Twoway chart
twoway (line gdp year, yaxis(1)) (line price year, yaxis(2))
twoway (line gdp_pc year, yaxis(1)) (line price year, yaxis(2))

*Log prices
gen ln_price=ln(price)
gen ln_gdp=ln(gdp)
gen ln_gdp_pc=ln(gdp_pc)
twoway (line ln_gdp_pc year, yaxis(1)) (line ln_price year, yaxis(2))