convert_to_date = function(strg) {
	#String slicing to get only the date
	date_string = substr(strg, 1, 10)

	#Converting the 'date string'
	return(as.Date(date_string, format='%d.%m.%Y'))
}

dat = read.table("data.csv", head=T, dec=",", sep=";")
dat$date = convert_to_date(dat$dt)






