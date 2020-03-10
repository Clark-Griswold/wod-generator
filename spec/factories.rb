FactoryBot.define do
  factory :user do
    sequence :email do |n|
       "dummyEmail#{n}@gmail.com" 
    end
    password { "secretpassword" }
    password_confirmation { "secretpassword" }
  end

   factory :log do
    date {Date.today}
    workout {"chest"}
    mood {"tired"}
    length {"45 minutes"}
  end
end