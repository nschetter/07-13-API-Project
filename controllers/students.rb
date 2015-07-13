# This pulls from the main page, and sends the user to the students_main page.
get '/students/student_main' do
  erb :'/students/student_main'
end

# form for user to enter information to add students
get "/student_add_form" do
  erb :"/students/student_add_form"
end

get '/student_add' do
  @new_students_id = Student.add_to_database(params)
  erb :"/success/data_added"
end

get '/student_change' do
  erb :"/students/student_change"
end

get '/student_delete' do
  erb :"/students/student_delete"
end
