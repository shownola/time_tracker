FactoryGirl.define do
  factory :post do
    date Date.today
    work_performed "Some Work Performed"
    daily_hours 12.5
    user
  end
 
  factory :second_post, class: "Post" do
    date Date.yesterday
    work_performed "Some more content"
    daily_hours 8.5
    user
  end

end