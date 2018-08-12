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
50.times do |n|
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
25.times do
  Child.create!(
    # 落ち着き高い -> 集中高い
      user_id: rand(1..50),
      grade_id: rand(1..6),
      gender_id: rand(1..2),
      char_gakuryoku: rand(0.6..1.0),
      char_ochitsuki: rand(0.7..1.0),
      char_syuchu: rand(0.4..1.0),
      char_kyomi: rand(0.0..0.5),
      char_sukinamono: rand(0.0..0.3),
      char_kyocho: rand(0.8..1.0)
  )
end

25.times do
  Child.create!(
    # 落ち着き高い -> 集中高い
      user_id: rand(1..50),
      grade_id: rand(1..6),
      gender_id: rand(1..2),
      char_gakuryoku: rand(0.4..0.8),
      char_ochitsuki: rand(0.5..0.8),
      char_syuchu: rand(0.4..0.7),
      char_kyomi: rand(0.4..0.8),
      char_sukinamono: rand(0.2..0.5),
      char_kyocho: rand(0.6..1.0)
  )
end

50.times do
  Child.create!(
    # 落ち着き低い -> 集中低い
      user_id: rand(1..50),
      grade_id: rand(1..6),
      gender_id: rand(1..2),
      char_gakuryoku: rand(0.1..0.3),
      char_ochitsuki: rand(0.1..0.4),
      char_syuchu: rand(0.1..0.3),
      char_kyomi: rand(0.8..1.0),
      char_sukinamono: rand(0.7..1.0),
      char_kyocho: rand(0.0..1.0)
  )
end

50.times do
  Child.create!(
    # 興味ある -> 落ち着き低そう
      user_id: rand(1..50),
      grade_id: rand(1..6),
      gender_id: rand(1..2),
      char_gakuryoku: rand(0.4..1.0),
      char_ochitsuki: rand(0.2..1.0),
      char_syuchu: rand(0.3..1.0),
      char_kyomi: rand(0.6..1.0),
      char_sukinamono: rand(0.0..1.0),
      char_kyocho: rand(0.0..1.0)
  )
end

50.times do
  Child.create!(
    # 興味ない -> 強調低そう
      user_id: rand(1..50),
      grade_id: rand(1..6),
      gender_id: rand(1..2),
      char_gakuryoku: rand(0.0..0.5),
      char_ochitsuki: rand(0.3..0.8),
      char_syuchu: rand(0.0..0.6),
      char_kyomi: rand(0.2..0.6),
      char_sukinamono: rand(0.0..0.4),
      char_kyocho: rand(0.0..1.0)
  )
end


# article
for i in 1..50 do
  #落ち着きない
  Article.create!(
    title: "落ち着きすぎててまったく物欲を示さずにぼーっとしていたけど、活発になった #{i.to_s}",
    child_id: rand(1..100),
    subject_id: rand(1..4),
    grade: rand(1..6),
    text: "アイカツを見たら全く人生が変わったように、活発になって夢も希望も持てるようになりました！ #{i.to_s}"
  )
end

for i in 1..50 do
  #落ち着きない
  Article.create!(
    title: "落ち着きがないけれど、落ち着いて勉強させる方法の共有 #{i.to_s}",
    child_id: rand(101..200),
    subject_id: rand(1..4),
    grade: rand(1..6),
    text: " #{i.to_s} 本なんて読んだことがない子供でしたが、興味のある本から読ませてみると、次第に本にはまって落ち着いて本を読めるようになり、勉強もできるようになりました！エモい！！"
  )
end

# comment
200.times do |n|
  comment = Faker::Lorem.sentence
  Comment.create!(
      article_id: rand(1..10),
      text: comment,
      user_id: rand(1..50)
  )
end

private
def get_personality_chara
  rand(2..5)
end