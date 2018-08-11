class Like < ApplicationRecord
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
end
