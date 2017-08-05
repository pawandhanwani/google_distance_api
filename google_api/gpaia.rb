require 'httparty'
require 'json'
require 'pp'
puts "Enter start location"
start_loc = gets.chomp
puts "Enter end location"
end_loc = gets.chomp
response = HTTParty.get("http://maps.googleapis.com/maps/api/distancematrix/json?origins=#{start_loc}&destinations=#{end_loc}")
result = JSON.parse(response.body)
puts "The distance is #{result["rows"][0]["elements"][0]["distance"]["text"]} and the duration of travel is #{result["rows"][0]["elements"][0]["duration"]["text"]}"
