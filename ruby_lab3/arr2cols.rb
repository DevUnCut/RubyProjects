#!/usr/bin/ruby
# Name: Johnathan Torres
# File: arr2cols.rb
# Desc: Uses Array methods to manipulate an array created from a string
# Example tables: escargot_player_data, employees, and artists

escargot_player_data = [
['Jim','bullfrog',99],
  ['Mack the Knife','caterpillar',12],
  ['Willy','chihuahua',143],
  ['Trudy','bunny',3],
  ['Mary Lou','slow loris',1443],
  ['Sharon Stone','komodo dragon',8888],
]

employees = [
%w(Walter\ White 123\ Happy\ Home\ Drive Albuquerque NM 555-66-7777 505-123-4567 ),
%w(Jesse\ Pinkman 43\ Cloudy\ Skies\ Parkway Albuquerque NM  666-12-3456, 505-888-9999 ),
%w(Gustavo\ Fring 123\ Pollos\ Boulevard Albuquerque NM 565-32-3344 505-434-9001 ),
%w(Tuco\ Salamanca 99\ Crystal\ Springs\ Lane Albuquerque NM 575-44-3553 505-776-0455 ),
%w(Saul\ Goodman 9800\ Montgomery\ Blvd\ NE Albuquerque NM 585-19-9990 505-503-4455 )
]

artists = [
%w( first_name last_name telephone address city state zip_code birthdate salary ),

[ 'Vinh','Tranh', '438-910-7449', '8235 Maple Street', 'Wilmington', 'VM', '29085', '9/23/63', '1200'],

[ 'William', 'Kopf', '846-836-2837', '6937 Ware Road' ,'Milton' ,'PA' ,'93756' , '9/21/46', '43500'],

[ 'Yukio', 'Takeshida', '387-827-1095', '13 Uno Lane' ,'Ashville' ,'NC' ,'23556' , '7/1/29', '57000'],

[ 'Zippy', 'Pinhead', '834-823-8319', '2356 Bizarro Ave.', 'Farmount', 'IL', '84357', '1/1/67', '89500'],

[ 'Andy', 'Warhol', '212-321-7654', '231 East 47th Street', 'New York City', 'NY', '10017', '8/6/1928', '2700000']
]

all_arrays = [escargot_player_data, employees, artists]

all_arrays.each do |arr|
    index = 0
    while index <= all_arrays.size
        if index == 0
            arr.each do |array|
                array.each {|ele| print "%-13s\t" % ele}
                puts
                index += 1
            end
            puts

        elsif index == 1
            arr.each do |array|
                array.each {|ele| print "%-23s\t" % ele}
                index +=1
            end
            puts

        else
            arr.each {|i| print "%-20s\t" % i }
            puts
            index += 1
        end
    end
end
