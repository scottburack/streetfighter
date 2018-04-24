# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.create(name: "Ryu", height: 69, weight: 187, speed: 13, strength: 13, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/4/46/Ryurender.png/revision/latest/scale-to-width-down/350?cb=20170728171704", health: 100)
Character.create(name: "Chun-Li", height: 65, weight: 130, speed: 15, strength: 8, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/e/e3/Chunrender.png/revision/latest?cb=20170728163823", health: 100)
Character.create(name: "Guile", height: 72, weight: 200, speed: 12, strength: 14, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/a/a2/Guilerender.png/revision/latest/scale-to-width-down/350?cb=20170728164132", health: 100)
Character.create(name: "Matt", height: 73, weight: 160, speed: 10, strength: 10, image_url: "https://preview.ibb.co/fECjv7/matt.png",  health: 100)
Character.create(name: "Cammy", height: 63, weight: 134, speed: 14, strength: 8, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/1/19/Cammyrender.png/revision/latest/scale-to-width-down/350?cb=20170728163129", health: 100)
Character.create(name: "M.Bison", height: 70, weight: 247, speed: 10, strength: 15, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/1/17/Bisonrender.png/revision/latest/scale-to-width-down/350?cb=20170728171523", health: 100)
Character.create(name: "Sagat", height: 89, weight: 172, speed: 11, strength: 14, image_url: "https://preview.ibb.co/fTTtNn/sagat.png", health: 100)
Character.create(name: "M. ReBranch", height: 55, weight: 100, speed: 15, strength: 15, image_url: "https://preview.ibb.co/cJWxhn/michelle_branch.png", health: 100)
Character.create(name: "Zangief", height: 84, weight: 400, speed: 9, strength: 15, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/8/88/Zangiefrender.png/revision/latest/scale-to-width-down/350?cb=20170728171808", health: 100)
Character.create(name: "Dhalsim", height: 69, weight: 109, speed: 12, strength: 11, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/b/b1/Dhalsimrender.png/revision/latest/scale-to-width-down/350?cb=20170728164253", health: 100)
Character.create(name: "Balrog", height: 77, weight: 298, speed: 13, strength: 12, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/7/77/Balrogrender.png/revision/latest/scale-to-width-down/350?cb=20170728162928", health: 100)
Character.create(name: "Sakura", height: 62, weight: 115, speed: 15, strength: 10, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/6/64/DDDC76A4-34C2-4BFB-A40C-EA96962B9C9D.png/revision/latest?cb=20180113085206", health: 100)
Character.create(name: "E. Honda", height: 73, weight: 302, speed: 7, strength: 15, image_url: "https://image.ibb.co/m8X3Nn/e_honda.png", health: 100)
Character.create(name: "Ken Masters", height: 70, weight: 190, speed: 13, strength: 13, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/b/b4/Kenrender.png/revision/latest/scale-to-width-down/350?cb=20170728171332", health: 100)
Character.create(name: "Blanka", height: 75, weight: 216, speed: 11,strength: 13, image_url: "https://vignette.wikia.nocookie.net/streetfighter/images/1/1b/A8E717C8-33AE-4B94-8E07-C04C49929635.png/revision/latest?cb=20180213121152", health: 100)
Character.create(name: "Alex", height: 62, weight: 150, speed: 15, strength: 15, image_url: "https://i.imgur.com/hQtGK2K.png", health: 100)


User.create(name: "Bob", wins: 5, losses: 9)
User.create(name: "Greg", wins: 1, losses: 3)
User.create(name: "Elizabeth", wins: 12, losses: 2)
