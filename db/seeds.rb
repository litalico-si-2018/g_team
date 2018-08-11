for i in 1..11 do
  Article.create(
    title: "タイトル#{i.to_s}",
    child_id: i,
    subject_id: i,
    text: "本文です#{i.to_s}"
  )
end

subjects = Array['国語', '算数', '理科', '社会']
for subject in subjects do
  Subject.create(name: subject)
end

genders = Array['男性', '女性']
for gender in genders do
  Gender.create(name: gender)
end

grades = Array['1', '2', '3', '4', '5', '6']
for grade in grades do
  Grade.create(name: grade)
end
