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
  @assignment = Assignment.find(params["id"].to_i)
  erb :"/assignments/assignment_change"
end

get "/assignment_update" do
  erb :"/assignments/assignment_update"
end

get "/assignment_update/save" do
  @assignment = Assignment.find(params['id'].to_i)
  @assignment.date = params["date"]
  @assignment.name = params["name"]
  @assignment.description = params["description"]
  @assignment.github_link = params["github_link"]
  @assignment.blog_link = params["blog_link"]
  erb :"/success/data_changed"
end

get '/assignment_delete' do
  erb :"/assignments/assignment_delete"
end

get "/assignment_deleter" do
  @specific_assignment = Assignment.find(params["id"])
  @specific_assignment.delete
  erb :"/success/data_deleted"
end

get "/assignment_view" do
  @assignment = Assignment.all
  erb :"/assignments/assignment_view"
end
