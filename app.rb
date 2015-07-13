require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'
require_relative 'database_setup'
require_relative 'database_class_methods'
require_relative 'database_instance_methods'

require_relative 'models/assignments.rb'
require_relative 'models/students.rb'
require_relative 'models/blog_links.rb'
require_relative 'models/github_links.rb'
require_relative 'models/students_assignments.rb'

require_relative 'controllers/home.rb'
