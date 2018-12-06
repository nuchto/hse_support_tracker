# Reset Database
Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

users = [
  {
    role: 'admin',
    name: 'Обама',
    email: 'admin@test.com'
  },
  {
    role: 'team',
    name: 'Барак',
    email: 'emploee_1@test.com'
  },
  {
    role: 'team',
    name: 'Барак 2',
    email: 'emploee_2@test.com'
  },
  {
    role: 'team',
    name: 'Барак 3',
    email: 'emploee_3@test.com'
  }, {
    role: '',
    name: 'Пользователь',
    email: 'user@test.com'
  }
]

users.each do |user|
  User.create(role: user[:role], name: user[:name], email: user[:email], password: "testtest")
