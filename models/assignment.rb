class Assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :date, :name, :description, :blog_link, :github_link
  
  def initialize(id)
    @id = id
  end #end initialize
  
  def add(options={})
    self.add_to_database(options)
  end
  
end