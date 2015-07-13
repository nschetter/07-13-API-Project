require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'
require_relative 'database_setup.rb'
require_relative 'database_class_methods.rb'
require_relative 'database_instance_methods.rb'

require_relative 'models/assignment.rb'
require_relative 'models/student.rb'
require_relative 'models/student_assignment.rb'

require_relative 'controllers/home.rb'
require_relative 'controllers/assignments.rb'