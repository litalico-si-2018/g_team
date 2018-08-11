# subject
subjects = Array['国語', '算数', '理科', '社会']
for subject in subjects do
  Subject.create!(name: subject)
end

# gender
genders = Array['男性', '女性']
for gender in genders do
  Gender.create!(name: gender)
end

# grade
grades = Array['1', '2', '3', '4', '5', '6']
for grade in grades do
  Grade.create!(name: grade)
end

# user
password = "a"*10
200.times do |n|
  name = Faker::Japanese::Name.name
  email = "example-#{n+1}@litalico.jp"
  User.create!(
      name: name,
      email: email,
      password: password,
      password_confirmation: password
  )
end
 # child
400.times do
  Child.create!(
      user_id: rand(1..200),
      grade_id: rand(1..6),
      gender_id: rand(1..2),
      char_gakuryoku: rand(0.0..1.0),
      char_ochitsuki: rand(0.0..1.0),
      char_syuchu: rand(0.0..1.0),
      char_kyomi: rand(0.0..1.0),
      char_sukinamono: rand(0.0..1.0),
      char_kyocho: rand(0.0..1.0)
  )
end

# article
for i in 1..11 do
  Article.create!(
    title: "タイトル#{i.to_s}",
    child_id: rand(1..400),
    subject_id: rand(1..4),
    text: "本文です#{i.to_s}"
  )
end

# comment
200.times do |n|
  comment = Faker::Lorem.sentence
  Comment.create!(
      article_id: rand(10),
      text: comment,
      user_id: rand(200)
  )
end