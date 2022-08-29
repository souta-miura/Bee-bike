class Item < ApplicationRecord
    has_one_attached :image
    
    belongs_to :user
    belongs_to :genre
    belongs_to :maker
    belongs_to :cc_class
    enum sale_status: { 販売停止中: 0, 販売中: 1 }
    enum sale_method: { 引き渡しのみ: 0, 配送のみ: 1, 配送と引き渡し: 2 }
    
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
end
