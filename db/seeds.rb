# subject
subjects = Array['国語', '算数', '理科', '社会']
for subject in subjects do
  Subject.create(name: subject)
end

# gender
genders = Array['男性', '女性']
for gender in genders do
  Gender.create(name: gender)
end

# grade
grades = Array['1', '2', '3', '4', '5', '6']
for grade in grades do
  Grade.create(name: grade)
end

# user
200.times do |n|
  name = Faker::Japanese::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "a"*10
  password_digest = password
  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password_digest
  )
end