class Product < ApplicationRecord
  has_many :sells, dependent: :destroy

  # low level caching
  def last_sell
    Rails.cache.fetch("#{cache_key}/last_sell", expire_in: 10.minutes) do
      sells.order("date DESC").first
    end
  end
end