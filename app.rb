require 'sqlite3'

DATABASE = SQLite3::Database.new("assignment.db")
 
DATABASE.execute("CREATE TABLE IF NOT EXISTS assignments (id INTEGER PRIMARY KEY, name TEXT, description TEXT, blog_link_id INTEGER, github_link_id INTEGER, student_id INTEGER);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY, name TEXT);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS blog_links (id INTEGER PRIMARY KEY, link TEXT);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS github_links (id INTEGER PRIMARY KEY, link TEXT);")
DATABASE.execute("CREATE TABLE IF NOT EXISTS students_assignments (id INTEGER PRIMARY KEY, assignment_id INTEGER, student_id INTEGER);")
 
DATABASE.results_as_hash = true

