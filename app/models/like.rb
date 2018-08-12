class Like < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :article, class_name: "User"
  validates :user_id, presence: true
  validates :article_id, presence: true
end
