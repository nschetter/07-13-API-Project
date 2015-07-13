class Assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :name, :description, :blog_link_id, :github_link_id, :student_id
  
  def initialize(id)
    @id = id
  end #end initialize
  
  def add(options={})
    self.add_to_database(options)
  end
  
end