class Child < ApplicationRecord
  belongs_to :user
  belongs_to :grade
  belongs_to :gender
end
