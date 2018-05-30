class Page < ApplicationRecord
  has_many :elements

  validates :url, presence: true

  after_create :create_page_elements

  def create_page_elements
    PageElementsCreator.call(self)
  end
end
