# This pulls from the main page, and sends the user to the assignment_main page.
get '/assignments/assignment_main' do
  erb :'assignments/assignment_main'
end

# form for user to enter information to add assignment
get "/assignment_add_form" do
  erb :"/assignments/assignment_add_form"
end

get '/assignment_add' do
  # new_assignment_id is the Integer returned from the add method
  @new_assignment_id = Assignment.add_to_database(params)
  erb :"/success/data_added"
end

get '/assignment_change' do
  erb :"/assignments/assignment_change"
end

get '/assignment_list' do
  @assignment_list = DATABASE.execute('SELECT * FROM assignments') 
  erb :"/assignments/assignment_list"
end

