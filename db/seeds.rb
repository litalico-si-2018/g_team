# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
for i in 1..11 do
  Article.create(
    :title => "タイトル"+i.to_s,
    :child_id => i,
    :subject_id => i,
    :text => "本文です"+i.to_s
  )
end
