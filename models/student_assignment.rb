class Student_assignment
  extend DatabaseClassMethods
  include DatabaseInstanceMethods
  
  attr_accessor :id, :assignment_id, :student_id
  
  def initialize(id)
    @id = id
  end #end initialize
  
  def add(options={})
    self.add_to_database(options)
  end
  
end