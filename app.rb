require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'
require_relative 'database_setup'
require_relative 'database_class_methods'
require_relative 'database_instance_methods'

require_relative 'models/assignment.rb'
require_relative 'models/student.rb'
require_relative 'models/blog_link.rb'
require_relative 'models/github_link.rb'
require_relative 'models/student_assignment.rb'

require_relative 'controllers/home.rb'
