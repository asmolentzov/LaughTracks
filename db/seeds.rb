require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

dm = Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City')
jg = Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Elgin')
tn = Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
lck = Comedian.create(name: 'Louis C.K.', age: 51, city: 'Washington, D.C.')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
# Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')


dm.specials.create(name: 'Live (At the Time)', length: 61, image_location: 'https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_SY1000_SX675_AL_.jpg')
dm.specials.create(name: 'The Overthinker', length: 56, image_location: 'https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg')

jg.specials.create(name: 'Cinco', length: 73, image_location: 'https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')

tn.specials.create(name: 'Son of Patricia', length: 63, image_location: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg')
tn.specials.create(name: 'Afraid of the Dark', length: 67, image_location: 'https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')



