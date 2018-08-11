class Article < ApplicationRecord
  belongs_to :child
  belongs_to :subject
end
