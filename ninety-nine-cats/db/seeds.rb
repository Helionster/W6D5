# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cat.destroy_all

c1 = Cat.create!(birth_date: '2020/01/01', name: 'Jeff', color: 'purple', sex:'M')
c2 = Cat.create!(birth_date: '2021/02/02', name: 'Dustin', color: 'white', sex:'F')
c3 = Cat.create!(birth_date: '2022/03/03', name: 'Eric', color: 'black', sex:'F')
