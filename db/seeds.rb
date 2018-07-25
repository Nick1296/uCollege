# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Secretary.create first_name: 'secretary', last_name: 'user',
                 username: 'secretary', email: 'test_sec@email.com', password: 'testing'

Student.create first_name: 'student', last_name: 'user',
               username: 'student', email: 'test_stud@email.com', password: 'testing'

Canteen.create first_name: 'canteen', last_name: 'user',
               username: 'canteen', email: 'test_cant@email.com', password: 'testing'

Menu.create date: '25/07/2018', mealType: 'lunch', firstCourse: 'Carbonara, Amatriciana', 
            secondCourse: 'Pollo, Manzo', sideDish: 'patate, faggiolini', notes: 'vuoto'#, writtenBy:3

Menu.create date: '25/07/2018', mealType: 'dinner', firstCourse: 'Carbonara, Amatriciana', 
            secondCourse: 'Pollo, Manzo', sideDish: 'patate, faggiolini', notes: 'vuoto'#, writtenBy:3