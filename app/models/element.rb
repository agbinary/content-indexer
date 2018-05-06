class Element < ApplicationRecord
  belongs_to :page

  validates :tag, :content, :page, presence: true
end
