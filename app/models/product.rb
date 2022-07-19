class Product < ApplicationRecord
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  validates :name, presence: true

  enum status: { 'ほしい' => 0, '予約中' => 1, '完了' => 2, '保留' => 3, 'いらない' => 4 }
end
