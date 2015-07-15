require "active_support"
require "active_support/inflector"

module DatabaseInstanceMethods

  # Reads a specific field for a given row in a table
  #
  # field - String for the column name to read
  #
  # Returns value of field
  def get(field)
    table = self.to_s.pluralize.underscore

    result = DATABASE.execute("SELECT * FROM #{table} WHERE id = #{@id}").first
  end
  
  def to_hash
    hash = {}
    instance_variables = self.instance_variables
    instance_variables.each do |variable|
      hash["#{variable.slice(1..-1)}"] = self.send("#{variable.slice(1..-1)}")
    end
    return hash
  end

  # Deletes a row from a table
  #
  # Returns true/false Boolean
  def delete
    table_name = self.class.to_s.pluralize.underscore

    DATABASE.execute("DELETE FROM #{table_name} WHERE id = #{@id}")
  end

  # Updates/saves a row's information in a table
  #
  # Returns updated Object
  def save
    DATABASE.execute("UPDATE #{table} SET name = '#{name}' WHERE id = #{@id};")
  end

end