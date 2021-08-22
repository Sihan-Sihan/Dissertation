building_age <- read.csv('D:/F_SCUA-UCL/Final of year/FINAL/dwelling-period-built-2015-lsoa-msoa.csv')

head(building_age)

building_age <- building_age %>%
  filter(GEOGRAPHY == 'MSOA' )

building_age$mean <- building_age$BP_PRE_1900 * 0 + building_age$BP_1900_1918 * 9 + building_age$BP_1919_1929 * 24 +
  building_age$BP_1930_1939 * 35 + building_age$BP_1945_1954 * 50 + building_age$BP_1955_1964 * 60 + building_age$BP_1965_1972 *69 + 
  building_age$BP_1973_1982 * 78 + building_age$BP_1983_1992 * 88 + building_age$BP_1993_1999 * 96 + building_age$BP_2000_2009 * 105
  building_age$BP_2010_2015 * 103
  