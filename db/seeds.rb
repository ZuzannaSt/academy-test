user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


city1 = City.find_or_create_by(name: 'New York', short_name: 'NY')
city2 = City.find_or_create_by(name: 'Paris', short_name: 'PAR')
city3 = City.find_or_create_by(name: 'London', short_name: 'LON')
city4 = City.find_or_create_by(name: 'Warszawa', short_name: 'WAW')
city5 = City.find_or_create_by(name: 'Kraków', short_name: 'KRK')
city6 = City.find_or_create_by(name: 'Wrocław', short_name: 'WRO')
puts 'FOUND OR CREATED CITIES: ' << city1.name, city2.name, city3.name, city4.name, city5.name, city6.name
