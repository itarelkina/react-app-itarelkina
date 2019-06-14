class Post < ApplicationRecord
    belongs_to :letter

    def full_price
      unit_price * quantity
    end
end
