class Student
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :name
  
  def initialize(id)
    @id = id
  end #end initialize
  
  def add(options={})
    self.add_to_database(options)
  end
  
end