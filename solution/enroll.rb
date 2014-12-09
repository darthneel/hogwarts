require 'json'
require 'httparty'

name = ARGV[0]
age = ARGV[1]
spell = ARGV[2]

puts HTTParty.post('http://127.0.0.1:4567/api/students',{
  headers: { 'Content-Type' => 'application/json'}, 
  body: JSON.generate({name: name, age: age, spell: spell})
})