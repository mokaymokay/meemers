class Meme < ApplicationRecord
  validates :imgur_url, uniqueness: true
end
