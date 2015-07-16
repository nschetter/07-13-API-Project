# This pulls from the main page, and sends the user to the students_main page.
get '/students/student_main' do
  erb :'/students/student_main'
end

# form for user to enter information to add students
get "/student_add_form" do
  erb :"/students/student_add_form"
end

get '/students/student_add' do
  @new_students_id = Student.add(params)
  erb :"/success/data_added"
end

get '/student_change' do
  erb :"/students/student_change"
end

get '/student_delete' do
  erb :"/students/student_delete"
end

get "/student_update/save" do
  @student = Student.find(params['id'].to_i)
  @student.name = params["name"]
  if @student.save
    erb :"/success/data_changed"
  else
    @error = true
    erb :"/students/student_update"
  end
end

get '/student_delete' do
  erb :"/students/student_delete"
end

get "/student_deleter" do
  @specific_student = Student.find(params["id"])
  @specific_student.delete
  erb :"/success/data_deleted"
end

get "/student_view" do
  @student = Student.all
  erb :"/students/student_view"
end

