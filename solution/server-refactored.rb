require 'sinatra'
require 'mustache'
require 'json'

def students
  return JSON.parse(File.read('./students.json'))
end

def save_student(student)
  with_added = students().push(student)
  File.write("./students.json", JSON.generate(with_added))
end

get '/' do
  Mustache.render(File.read('./index.html'), {number_students: students().size, date: Time.now.strftime("%m/%d/%Y")})
end

get '/students' do
  Mustache.render(File.read('./students.html'), {students: students()})
end

post '/students' do
  save_student({ name: params["name"], age: params["age"], spell: params["spell"] })
  redirect '/'
end

post '/api/students' do
  student = JSON.parse(request.body.read)
  save_student(student)
  'OK'
end