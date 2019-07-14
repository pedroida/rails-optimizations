class Sell < ApplicationRecord
  belongs_to :product, touch: true
end
