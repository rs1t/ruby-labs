# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.reset_pk_sequence
User.create([
              { name: 'Alice', email: 'alice@mail.com' },
              { name: 'Bob', email: 'bob@mail.com' },
            ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               { name: "" }, # 1 Нет темы
               { name: "Paintings" }, # 2
               { name: "Landscapes" }, # 3
               { name: "Album arts" }, # 4
             ])

Image.delete_all
Image.reset_pk_sequence
Image.create([
               { name: 'Default pic', file: 'default.jpg', theme_id: 1 },
               { name: 'Painting 1', file: 'painting1.jpg', theme_id: 2 },
               { name: 'Painting 2', file: 'painting2.jpg', theme_id: 2 },
               { name: 'Painting 3', file: 'painting3.jpg', theme_id: 2 },
               { name: 'Painting 4', file: 'painting4.jpg', theme_id: 2 },
               { name: 'Painting 5', file: 'painting5.jpg', theme_id: 2 },
               { name: 'Landscape 1', file: 'landscape1.jpg', theme_id: 3 },
               { name: 'Landscape 2', file: 'landscape2.jpg', theme_id: 3 },
               { name: 'Landscape 3', file: 'landscape3.jpg', theme_id: 3 },
               { name: 'Landscape 4', file: 'landscape4.jpg', theme_id: 3 },
               { name: 'Landscape 5', file: 'landscape5.jpg', theme_id: 3 },
               { name: 'Album art 1', file: 'album1.jpg', theme_id: 4 },
               { name: 'Album art 2', file: 'album2.jpg', theme_id: 4 },
               { name: 'Album art 3', file: 'album3.jpg', theme_id: 4 },
               { name: 'Album art 4', file: 'album4.jpg', theme_id: 4 },
               { name: 'Album art 5', file: 'album5.jpg', theme_id: 4 },
             ])
