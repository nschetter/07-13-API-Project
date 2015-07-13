require 'sqlite3'

DATABASE = SQLite3::Database.new("assignment.db")
 
DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, date TEXT, name TEXT, description TEXT, blog_link TEXT, github_link TEXT, student_id INTEGER);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY, name TEXT);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS students_assignments (id INTEGER PRIMARY KEY, assignment_id INTEGER, student_id INTEGER);")
 
DATABASE.results_as_hash = true