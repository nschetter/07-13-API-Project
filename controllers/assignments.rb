# This pulls from the main page, and sends the user to the assignment_main page.
get '/assignments/assignment_main' do
  erb :'/assignments/assignment_main'
end

# form for user to enter information to add assignment
get "/assignment_add_form" do
  erb :"/assignments/assignment_add_form"
end

get '/assignments/assignment_add' do
  # new_assignment_id is the Integer returned from the add method
  @new_assignment_id = Assignment.add(params)
  erb :"/success/data_added"
end

get '/assignments/assignment_change' do
  erb :"/assignments/assignment_change"
end

get '/assignments/assignment_delete' do
  erb :"/assignments/assignment_delete"
end

get "/assignment_view" do
  @assignment = Assignment.all
  erb :"/assignments/assignment_view"
end