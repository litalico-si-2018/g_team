class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 20}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
<<<<<<< HEAD
  has_many :active_likes, class_name:  "Like",
                                  foreign_key: "article_id",
                                  dependent:   :destroy
  has_many :articles, through: :active_likes, source: :user

  # 記事をいいねする
  def good(other_user)
    active_likes.create(article_id: other_user.id)
  end

  # 記事をいいね解除する
  def ungood(other_user)
    active_relationships.find_by(article_id: other_user.id).destroy
  end

  # 現在のユーザーがいいねしてたらtrueを返す
  def gooding?(other_user)
    article.include?(other_user)
  end
=======
  has_many :likes, dependent: :destroy
>>>>>>> 114846a1f4b329cc272ad691d80642bc0e92465c
end
