class Meme < ApplicationRecord
  after_initialize :init

  validates :imgur_url, uniqueness: true
  default_scope { order(likes: :desc, created_at: :desc) }

  def init
    self.likes ||= 1
  end

end
