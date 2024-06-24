********************************************************************************
*UK election
********************************************************************************

cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Playlists\Statistics in the media\V14 UK election"
	
use "UK_election.dta", clear

*Time dimension
gen year = _n + 1976

tsset year

line median year


*Long-term trend
gen ln_median = ln(median)

reg ln_median year
predict trend

twoway (line trend year) (line ln_median year)
