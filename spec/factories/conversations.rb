# frozen_string_literal: true

FactoryBot.define do
  factory :conversation do
    association :sender, factory: :user
    association :recipient, factory: :user
  end
end
