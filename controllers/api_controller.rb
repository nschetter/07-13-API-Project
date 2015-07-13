get "/api/assignments"
  @assignments = Assignment.all_hash
  json @assignments
end

get "/api/assignments/:id"
  
end