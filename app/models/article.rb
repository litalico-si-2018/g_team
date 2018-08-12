class Article < ApplicationRecord
  belongs_to :child
  belongs_to :subject
  has_many :passive_likes, class_name:  "Like",
     foreign_key: "user_id",
     dependent:   :destroy
  has_many :users, through: :passive_likes, source: :article
end
