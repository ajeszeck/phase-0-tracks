# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end
get '/' do
  adjective = params[:adjective]
  if adjective
    "Hello #{adjective} World!"
  else
    "Hello World!"
  end
end

get '/contact' do
  "4287 89th Ave S, Portland, OR 82740"
end

get '/great_job' do
  person = params[:person]
  if person
    "Good job, #{person}!"
  else
    "Good job!"
  end
end

# write a GET route with
# route parameters

get '/:number_1/plus/:number_2' do
  sum = params[:number_1].to_i + params[:number_2].to_i
  "The sum of #{params[:number_1]} plus #{params[:number_2]} is #{sum}."
end

# get '/about/:person' do
#   person = params[:person]
#   "#{person} is a programmer, and #{person} is learning Sinatra."
# end

# get '/:person_1/loves/:person_2' do
#   "#{params[:person_1]} loves #{params[:person_2]}"
# end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# THIS IS MY ATTEMPT, WILL PROBABLY RETURN TO FIX -- RAN OUT OF TIME
# get '/students/:campus' do
#   "#{params[:campus].to_s}"
#   campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
#   print campus
#   response = ""
#   campus.each do |student|
#     response << "ID: #{student['id']}<br>"
#     response << "Name: #{student['name']}<br>"
#     response << "Age: #{student['age']}<br>"
#     response << "Campus: #{student['campus']}<br><br>"
#   end
#   response
# end


## WEB APP LIBRARIES
  # Ruby on Rails, Merb, Nitro, and Camping

## WEB STACK = A Web stack is the collection of software required for Web development. 
#  At a minimum, a Web stack contains an operating system (OS), a programming language, 
#  database software and a Web server.