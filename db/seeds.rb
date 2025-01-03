# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
admin = User.create!(email: 'admin@example.com', password: 'password', role: 'admin')
user = User.create!(email: 'user@example.com', password: 'password', role: 'user')

category_aptitude = Category.create!(name: 'Aptitude')
category_math = Category.create!(name: 'Math')
question = category_aptitude.questions.create!(content: 'What is 2 + 2?', correct_option: 2)
question.options.create!([
  { content: '3' },
  { content: '4' },
  { content: '5' },
  { content: '6' }
])
question = category_aptitude.questions.create!(content: 'What is 1 + 2?', correct_option: 1)
question.options.create!([
  { content: '3' },
  { content: '4' },
  { content: '5' },
  { content: '6' }
])
question = category_aptitude.questions.create!(content: 'What is 22 + 2?', correct_option: 3)
question.options.create!([
  { content: '32' },
  { content: '41' },
  { content: '24' },
  { content: '6' }
])
question = category_math.questions.create!(content: 'What is 22 + 2?', correct_option: 3)
question.options.create!([
  { content: '32' },
  { content: '41' },
  { content: '24' },
  { content: '6' }
])
question = category_math.questions.create!(content: 'What is 22 + 2?', correct_option: 3)
question.options.create!([
  { content: '32' },
  { content: '41' },
  { content: '24' },
  { content: '6' }
])
question = category_math.questions.create!(content: 'What is 22 + 2?', correct_option: 3)
question.options.create!([
  { content: '32' },
  { content: '41' },
  { content: '24' },
  { content: '6' }
])
