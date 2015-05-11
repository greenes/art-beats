# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Gallery.create(user_id: 1, gallery_name: 'bye felicia', description: 'comic pieces with pen and sketch paper')
Gallery.create(user_id: 1, gallery_name: 'home sweet home', description: 'photographs of Richmond')
Gallery.create(user_id: 1, gallery_name: 'the blue period', description: 'human figures watercolors')
Gallery.create(user_id: 1, gallery_name: 'running away', description: 'acryllic paint')
Gallery.create(user_id: 1, gallery_name: 'love', description: 'sculptures made from things i found around the neighborhood')

User.create(name: 'Annie Greene', bio: 'my life story', prof_pic: 'picture', contact_info: 'mainstreet')
User.create(name: 'Matt Doe', bio: 'why i am an artist', prof_pic: 'myface', contact_info: 'crowley place')
User.create(name: 'John Doe', bio: 'how i got here', prof_pic: 'cutepic', contact_info: 'springfield')
User.create(name: 'Jane Doe', bio: 'what i do', prof_pic: 'mypic', contact_info: 'blah@gmail')
