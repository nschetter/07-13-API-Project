get "/api/assignments" do
  @assignments = Assignment.all_hash
  json @assignments
end

get "/api/assignments/:id" do
  selected_assignment = Assignment.find(params["id"])
  @assignment = selected_assignment.to_hash
  json @assignment
end

get "/api/links/:id" do
  selected_assignment = Assignment.find(params['id'])
  @assignment = selected_assignment.to_hash
  json @assignment
end