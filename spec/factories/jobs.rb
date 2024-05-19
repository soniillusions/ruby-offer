# frozen_string_literal: true

FactoryBot.define do
  factory :job do
    title { 'MyString' }
    company { 'MyString' }
    body { 'MyText' }
    salary { 1 }
    city { 'MyString' }
    required_exp { 1 }
    user_id { 1 }
  end
end
