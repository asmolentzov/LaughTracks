require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

dm = Comedian.create(name: 'Demetri Martin', age: 45, city: 'New York City')
jg = Comedian.create(name: 'Jim Gaffigan', age: 52, city: 'Elgin')
tn = Comedian.create(name: 'Trevor Noah', age: 34, city: 'Johannesburg')
lck = Comedian.create(name: 'Louis C.K.', age: 51, city: 'Washington, D.C.')
jk = Comedian.create(name: 'Jen Kirkman', age: 44, city: 'Needham')
ss = Comedian.create(name: 'Sarah Silverman', age: 47, city: 'Bedford')
jm = Comedian.create(name: 'John Mulaney', age: 36, city: 'Chicago')
jok = Comedian.create(name: 'Jo Koy', age: 47, city: 'Tacoma')
hm = Comedian.create(name: 'Hasan Minhaj', age: 33, city: 'Davis')
ed = Comedian.create(name: 'Ellen DeGeneres', age: 60, city: 'Metairie')
rg = Comedian.create(name: 'Ricky Gervais', age: 57, city: 'Reading')
yb = Comedian.create(name: 'Yoo Byung-jae', age: 30, city: 'Hongseong County')


dm.specials.create(name: 'Live (At the Time)', length: 61, image_location: 'https://m.media-amazon.com/images/M/MV5BNjQ4NTQ2NzE1N15BMl5BanBnXkFtZTgwODc4ODA3NjE@._V1_SY1000_SX675_AL_.jpg')
dm.specials.create(name: 'The Overthinker', length: 56, image_location: 'https://m.media-amazon.com/images/M/MV5BMGU1N2Q1ZGUtYWY3OC00M2Q5LWIyNGMtMjA3ZDcxMmY2N2M2XkEyXkFqcGdeQXVyMjQzOTM1NTc@._V1_.jpg')

jg.specials.create(name: 'Cinco', length: 73, image_location: 'https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_SY1000_CR0,0,666,1000_AL_.jpg')
jg.specials.create(name: 'Beyond the Pale', length: 72, image_location: 'https://m.media-amazon.com/images/M/MV5BMTk3NjU2ODY5NF5BMl5BanBnXkFtZTgwNTEyODkwMzE@._V1_.jpg')
jg.specials.create(name: 'Mr. Universe', length: 78, image_location: 'https://m.media-amazon.com/images/M/MV5BNTE4NjU0NTYxM15BMl5BanBnXkFtZTcwMzAzMjA1OQ@@._V1_.jpg')
jg.specials.create(name: 'King Baby', length: 60, image_location: 'https://m.media-amazon.com/images/M/MV5BMjI3ODgwMDU2NF5BMl5BanBnXkFtZTgwMTczMzA2MDE@._V1_.jpg')

tn.specials.create(name: 'Son of Patricia', length: 63, image_location: 'https://m.media-amazon.com/images/M/MV5BMTU4MTA5NjMyNl5BMl5BanBnXkFtZTgwNDY0OTI4NjM@._V1_SY1000_CR0,0,675,1000_AL_.jpg')
tn.specials.create(name: 'Afraid of the Dark', length: 67, image_location: 'https://m.media-amazon.com/images/M/MV5BMTZhNjNjNGUtYTc2Ni00ZDc4LWJjNDMtYjVlOTI5OGI5YzE5XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')

lck.specials.create(name: 'Hilarious', length: 82, image_location: 'https://m.media-amazon.com/images/M/MV5BNTQyODYyNzcxN15BMl5BanBnXkFtZTgwOTA3MzcwMzE@._V1_.jpg')
lck.specials.create(name: '2017', length: 74, image_location: 'https://m.media-amazon.com/images/M/MV5BOGYwMmVlMWUtZDE2My00MzMyLTk5MTQtZDdmM2U5YWQwZjM1XkEyXkFqcGdeQXVyMjExNDAyOTU@._V1_.jpg')
lck.specials.create(name: 'Oh My God', length: 58, image_location: 'https://m.media-amazon.com/images/M/MV5BMjQ4NjQwOTYzNl5BMl5BanBnXkFtZTcwNjU2NjczOQ@@._V1_.jpg')

jk.specials.create(name: "I'm Gonna Die Alone (And I Feel Fine)", length: 78, image_location: 'https://m.media-amazon.com/images/M/MV5BZGZlNGUzZjUtYTcwZS00ZDMwLWExMmUtZjIyZGM3NmExM2Y5XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_.jpg')
jk.specials.create(name: "Just Keep Livin?", length: 69, image_location: 'https://m.media-amazon.com/images/M/MV5BMGYzZGU2YzMtY2QyNi00MmZhLWFlMWUtNDdlOGI0YTllN2FlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjYzMDA4MTI@._V1_.jpg')

ss.specials.create(name: 'A Speck of Dust', length: 71, image_location: 'https://m.media-amazon.com/images/M/MV5BMjYwYjhjM2EtYjgwYS00YjkyLTllMjQtZGM1ZmFkMTQ1YmFmXkEyXkFqcGdeQXVyMzUwMjc0NTU@._V1_.jpg')
ss.specials.create(name: 'Jesus is Magic', length: 72, image_location: 'https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg')
ss.specials.create(name: 'We Are Miracles', length: 53, image_location: 'https://m.media-amazon.com/images/M/MV5BODU5MWI2YWEtNTQ3Ny00OWQ3LThkNTUtYzdiNDVjNDczM2NiXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_SX675_AL_.jpg')

jm.specials.create(name: 'The Comeback Kid', length: 62, image_location: 'https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg')

jok.specials.create(name: 'Live from Seattle', length: 62, image_location: 'https://m.media-amazon.com/images/M/MV5BNDgyZTU4YmUtMDhjMi00NDZkLWJhYjEtMmNhZWI3MWI1OGQ2XkEyXkFqcGdeQXVyMjExNDAyOTU@._V1_.jpg')
jok.specials.create(name: "Don't Make Him Angry", length: 44, image_location: 'https://m.media-amazon.com/images/M/MV5BMTk0NTMwNjk0OV5BMl5BanBnXkFtZTgwODExMzA2MDE@._V1_.jpg')
jok.specials.create(name: "Lights Out", length: 59, image_location: 'https://m.media-amazon.com/images/M/MV5BMTA2MjE1NzQ0NTNeQTJeQWpwZ15BbWU4MDEwNDcwNjAx._V1_.jpg')

hm.specials.create(name: 'Homecoming King', length: 73, image_location: 'https://m.media-amazon.com/images/M/MV5BOWU2NTFjYTAtNDVkOC00YjJiLTg0NWMtODVmYzYwYjBiMmI3XkEyXkFqcGdeQXVyMjYwMTkwNDc@._V1_.jpg')

rg.specials.create(name: 'Humanity', length: 79, image_location: 'https://m.media-amazon.com/images/M/MV5BZWEyYTc2ZGYtMTE4MS00YjJkLWFiNGMtNDg0Mjc4YjllZTFkXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg')
rg.specials.create(name: 'Out of England 2', length: 74, image_location: 'https://m.media-amazon.com/images/M/MV5BZWY4NGM0ZTItNDQzMS00OTIyLWFhNzItMTQ1ZDZhMWNmOWMwXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg')

yb.specials.create(name: 'Too Much Information', length: 63, image_location: 'https://m.media-amazon.com/images/M/MV5BM2MxNWUxY2QtZTdmOS00ZThkLThhMmUtMjdiYmQ3NGJlM2JiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')
yb.specials.create(name: 'Discomfort Zone', length: 54, image_location: 'https://m.media-amazon.com/images/M/MV5BY2ZjMTllMTAtNmY0ZS00M2VlLTg1NjUtZTUwOWZmODdhNjA1XkEyXkFqcGdeQXVyMTgwOTE5NDk@._V1_.jpg')