require 'sinatra'
require 'mustache'
require 'json'

get '/' do
  students = JSON.parse(File.read('./students.json'))

  Mustache.render(File.read('./index.html'), {number_students: students.size, date: Time.now.strftime("%m/%d/%Y")})
end

get '/students' do
  students = JSON.parse(File.read('./students.json'))

  Mustache.render(File.read('./students.html'), {students: students})
end

post '/students' do
  students = JSON.parse(File.read('./students.json'))
  students.push({ name: params["name"], age: params["age"], spell: params["spell"] })
  File.write("./students.json", JSON.generate(students))

  redirect '/'
end

post '/api/students' do
  students = JSON.parse(File.read('./students.json'))
  students.push(JSON.parse(request.body.read))
  File.write("./students.json", JSON.generate(students))

  'OK'
end