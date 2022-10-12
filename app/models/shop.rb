class Shop < ApplicationRecord
    has_many :products, dependent: :destroy
    validates :shop_name, presence: true,
                    length: { minimum: 5 }
end
