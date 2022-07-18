class Product < ApplicationRecord
  validates :name, presence: true

  enum status: { 'ほしい' => 0, '予約中' => 1, '完了' => 2, '保留' => 3, 'いらない' => 4 }
end
