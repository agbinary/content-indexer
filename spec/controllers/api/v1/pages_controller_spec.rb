require 'rails_helper'

RSpec.describe API::V1::PagesController, type: :controller do
  let(:page_params) do
    {
      data:
      {
        type:"pages",
        attributes:
        {
          url:"http://jsonapi.org/"
        }
      }
    }
  end

  describe 'post #CREATE' do
    it "saves the new page in the database" do
      expect{
        post :create, params: page_params
      }.to change(Page, :count).by(1)
    end
  end
end
