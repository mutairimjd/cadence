# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Catogrie.destroy_all
catogries = Catogrie.create([{name: 'Jazz'},{name: 'Rock'},{name: 'Blues'},{name: 'Country'},{name: 'Hip hop'},{name: 'Pop'},{name: 'Reggea'},{name: 'Heavy Metal'},{name: 'Classical'},{name: 'Soul'},{name: 'Dance'},{name: 'Funk'},{name: 'House'},{name: 'Techno'},{name: 'EDM'},{name: 'Alternative'},{name: 'Singing'},{name: 'Trance'},{name: 'Disco'},{name: 'Orchestra'},{name: 'Electro'},{name: 'Progressive'},{name: 'Instrumental'},{name: 'Drum and bass'},{name: 'Dubstep'},{name: 'Musical theatre'},{name: 'Funk'},{name: 'Ambient'},{name: 'Psychedelic'},{name: 'Art'},{name: 'Breakb,eat'},{name: 'Hardcore'},{name: 'Swing'}])