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


dm.specials.create(name: 'Live (At the Time)', length: 61, image_location: '')
jg.specials.create(name: 'Cinco', length: 73, image_location: '')