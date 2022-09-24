class Item < ApplicationRecord
  has_one_attached :image
  
  belongs_to :user
  belongs_to :genre
  belongs_to :maker
  belongs_to :cc_class
  has_many :favorites, dependent: :destroy
  has_many :item_comments, dependent: :destroy
  enum sale_status: { 販売停止中: 0, 販売中: 1 }
  enum sale_method: { 引き渡しのみ: 0, 配送のみ: 1, 配送と引き渡し: 2 }
  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  
  def self.search_for(content, method)
    if method == 'perfect'
      Item.where(name: content)
    else
      Item.where('name LIKE ?', '%'+content+'%')
    end
  end
  
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end
