class Post < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :workout
    validates :meal
   end
 
   with_options numericality: { other_than: 0 } do
     validates :sex_id
     validates :age_id
     validates :style_id
     validates :purpose_id
   end
end
