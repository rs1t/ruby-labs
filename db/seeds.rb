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

               { name: "-----" }, # 1 Нет темы
               { name: "Какое из произведений художника О.Ренуара наилучшим образом характеризует его творчество?" }, # 2
               { name: "Какое из произведений художника П.Пикассо наилучшим образом характеризует его творчество?" }, # 3
               { name: "Какое из произведений художника А.Матисса наилучшим образом характеризует его творчество?" }, # 4
             ])

Image.delete_all
Image.reset_pk_sequence
Image.create([
               { name: 'P.-A. Renoir, Бал в Мулен де ла Галетт', file: '1.png', theme_id: 2 },
               { name: 'P.-A. Renoir, Букет', file: '2.png', theme_id: 2 },
               { name: 'P. Picasso, Фабрика', file: '3.png', theme_id: 3 },
               { name: 'H. Matiss, Балерина', file: '4.png', theme_id: 4 },
             ])
