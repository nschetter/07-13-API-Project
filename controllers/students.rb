# This pulls from the main page, and sends the user to the students_main page.
get '/students/students_main' do
  erb :'/students/students_main'
end

# form for user to enter information to add students
get "/students_add_form" do
  erb :"/students/students_add_form"
end

get '/students_add' do
  @new_students_id = Student.add_to_database(params)
  erb :"/success/data_added"
end

get '/students_change' do
  erb :"/students/students_change"
end

get '/students_delete' do
  erb :"/students/students_delete"
end
