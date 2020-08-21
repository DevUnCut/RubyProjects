#!/usr/bin/ruby
# NAME: Johnathan Torres
# DATE: 2019-03-23 Sat
# FILE: email_template.rb
# DESC: This script is an exercise in printing formatted output.


contact_data = [
['Company 1', '123 Main Street', 'Anytown', 'Anystate', 88888, '444-444-4444', 'CompanyOne@companyone.com', 'https://company1.com'],
['Company 2', '77 Market Street', 'San Fransisco', 'California', 94111, '415-444-4444', 'Company2@company2.com', 'htttps://company2.com']
]
email_template = ""

contact_data.each do |arr|
    arr.each do |ele|
        email_template += ele.to_s+"\n"
        end
    end
email_template = email_template.split("\n")
puts"#{email_template[0]}\n#{email_template[1]}\n#{email_template[2]}, #{email_template[3]}, #{email_template[4]}\nTel: #{email_template[5]}\nEmail: #{email_template[6]}\nURL: #{email_template[7]}\n------------------------------\n#{email_template[8]}\n#{email_template[9]}\n#{email_template[10]}, #{email_template[11]}, #{email_template[12]}\nTel: #{email_template[13]}\nEmail: #{email_template[14]}\nURL: #{email_template[15]}\n------------------------------"
