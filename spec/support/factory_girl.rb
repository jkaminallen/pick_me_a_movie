require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:user_name) { |n| "user_name#{n + 1}" }
    sequence(:email)      { |n| "email#{n + 1}@example.com" }
    first_name 'firstname'
    last_name 'lastname'
    avatar 'http://static1.squarespace.com/static/54c95d06e4b04d8d26f97dde/t/570d4048e707ebd28d303f32/1460486224633/'
    password 'password'
    password_confirmation 'password'
  end

  factory :movie do
      sequence(:name) { |n| "The Shining #{n}" }
      sequence(:description) { |n| "A chilling horror" }
      avatar 'imdb.png'
      user
    end
end
