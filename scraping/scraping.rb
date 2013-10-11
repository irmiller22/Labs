require 'rubygems'
require 'SQLite3'
require 'open-uri'
require 'pry'



db = SQLite3::Database.new('flat003data.sqlite')

db.execute('CREATE TABLE users (
		id INTEGER PRIMARY KEY AUTOINCREMENT,
		name TEXT,
		statement TEXT,
		biography INTEGER,
		education INTEGER,
		work INTEGER );')


# rows = db.execute('INSERT INTO users (name, statement, biography, education, work) VALUES
# 		("names", "statement", "biography", "education", "work");')

hash = {  :data =>
						[["Book Club", "books", 200, 20120325, 20120420],
						["Cheese", "music", 50, 20120620, 20120725],
						["Fly Away", "music", 10, 20130420, 20130530],
						["Help Kids", "charity", 20, 20130610, 20130630],
						["Run Away", "books", 100, 20130120, 20130220],
						["Charity", "charity", 50, 20130130, 20130230],
						["Chastity Needs Charity", "charity", 250, 20130810, 20130910],
						["Read", "music", 100, 20130525, 20130620],
						["Yikes", "books", 30, 20120820, 20130530],
						["No", "charity", 10, 20130520, 20130816]]}

hash.each do |key, value|
	value.each_index do |x|
		db.execute("INSERT INTO users (names, statement, biography, education, work) VALUES ('#{x}');")
end

			