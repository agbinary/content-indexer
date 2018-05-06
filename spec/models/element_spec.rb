require 'rails_helper'

RSpec.describe Element, type: :model do
  it 'has a valid factory' do
    expect(build(:element)).to be_valid
  end

  describe 'ActiveModel validations' do
    it { should validate_presence_of(:tag) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:page) }
  end

  describe 'ActiveRecord associations' do
    it { should belong_to(:page) }
  end
end
