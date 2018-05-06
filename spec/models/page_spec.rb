require 'rails_helper'

RSpec.describe Page, type: :model do
  it 'has a valid factory' do
    expect(build(:page)).to be_valid
  end

  describe 'ActiveModel validations' do
    it { should validate_presence_of(:url) }
  end

  describe 'ActiveRecord associations' do
    it { should have_many(:elements) }
  end
end
