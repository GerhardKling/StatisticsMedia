********************************************************************************
*FDI inflows: India and China
********************************************************************************
*Open dataset
cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Playlists\Statistics in the media\V10 India FDI"

use fdi.dta, clear

*Declare time dimension
tsset year

*Line charts
line India_inflow year, xline(2014, lcolor(orange))

*Comparison with China
twoway (line India_inflow year, xline(2014, lcolor(orange))) (line China_inflow year)