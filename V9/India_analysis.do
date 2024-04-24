********************************************************************************
*The Indian Economy in 2024
********************************************************************************
*Source: IMF World Economic Outlook Database


*Open dataset
cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Playlists\Statistics in the media\V9 Indian election"
use India.dta, clear

********************************************************************************
*Description of variables
********************************************************************************
label var gdp "GDP per capita, constant prices"
label var gdp_ppp "GDP per capita, constant prices, purchasing power parity"
label var gdp_share "GDP, purchasing power parity, world share"

*Source: National Statistics Office
label var inflation "Inflation, average consumer prices"

*Source: Central Bank, Percent change
label var imports "Volume of imports of goods and services"
label var exports "Volume of exports of goods and services"

label var population "Population"
label var debt "Debt relative to GDP"

*Time dimension
tsset year

********************************************************************************
*Economic growth
********************************************************************************
line gdp_ppp year

*Log scale
line gdp_ppp year, yscale(log)

*Relative strength
line gdp_share year, xline(2014 2023, lcolor(orange))

********************************************************************************
*Inflation
********************************************************************************
line inflation year

*Log scale
line inflation year, yscale(log) xline(2014 2023, lcolor(orange))

********************************************************************************
*Debt
********************************************************************************
line debt year if year>1990, xline(2014 2023, lcolor(orange)) xline(2020, lcolor(red))






