# == Schema Information
#
# Table name: players
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  player_post :string
#  age         :integer
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  team_id     :integer
#

FactoryGirl.define do
  factory :player do
    first_name { FFaker::Name.name }
    last_name { FFaker::Name.last_name }
    player_post { FFaker::Name.name }
    age { Faker::Number.age(digits: 2) }
    image { FFaker::Avatar.image }

    association :team, factory: :team
    association :user, factory: :user
  end
end
