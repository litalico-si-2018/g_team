class Article < ApplicationRecord
  belongs_to :child
  belongs_to :subject
  has_many :likes, dependent: :destroy
end
