# require 'factory_girl'
# load File.expand_path("spec/factories.rb")

include ActionDispatch::TestProcess

FactoryGirl.define do

  factory :user do
    ignore do
      user_role nil
      type nil
    end

    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password {email}
    confirmation_sent_at { Time.now }
    confirmed_at { Time.now }
    sign_in_count { 5 }
    role { user_role ? user_role : "Reader" }

    trait :new_user do
      confirmed_at nil
      confirmation_sent_at nil
      sign_in_count nil
      user_role "Reader"
    end

    factory :admin do
      role {"Super User"}
    end

  end

  factory :repository do
    name {Faker::Company.name}
    summary {Faker::Company.catch_phrase}
    description {Faker::Lorem.words(10 + rand(50)).join(" ")}
    repo_type {Repository::TYPES[rand(Repository::TYPES.length)]}
    tags {Faker::Lorem.words(4).join(",")}
  end

  factory :idea do
    summary {Faker::Company.catch_phrase}
    details {Faker::Lorem.words(10 + rand(50)).join(" ")}
    idea_type {Idea::TYPES[rand(Idea::TYPES.length)]}
    tags {Faker::Lorem.words(4).join(",")}
  end
  
  factory :idea_component do
    summary {Faker::Company.catch_phrase}
    details {Faker::Lorem.words(10 + rand(50)).join(" ")}
    idea_component_type {IdeaComponent::TYPES[rand(IdeaComponent::TYPES.length)]}
    tags {Faker::Lorem.words(4).join(",")}
  end

end
