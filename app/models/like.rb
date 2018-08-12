class Like < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user, class_name: "User"
  belongs_to :article, class_name: "User"
  validates :user_id, presence: true
  validates :article_id, presence: true
=======
  belongs_to :article
  belongs_to :user
  validates :user_id, presence: true
  validates :micropost_id, presence: true

  # ポストをいいねする
  def iine(user)
    likes.create(user_id: user.id)
  end

  # ポストのいいねを解除する（ネーミングセンスに対するクレームは受け付けません）
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end
>>>>>>> 114846a1f4b329cc272ad691d80642bc0e92465c
end
