class Article < ApplicationRecord
  belongs_to :child
  belongs_to :subject
<<<<<<< HEAD
  has_many :passive_likes, class_name:  "Like",
     foreign_key: "user_id",
     dependent:   :destroy
  has_many :users, through: :passive_likes, source: :article
=======
  has_many :likes, dependent: :destroy
>>>>>>> 114846a1f4b329cc272ad691d80642bc0e92465c
end
