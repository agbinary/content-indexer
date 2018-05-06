class Page < ApplicationRecord
  has_many :elements

  validates :url, presence: true
end
