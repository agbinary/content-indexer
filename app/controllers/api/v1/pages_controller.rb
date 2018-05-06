module API
  module V1
    class PagesController < ApplicationController
      def create
        super

        if response.successful?
          response_body = JSON.parse(response.body)
          page_created = Page.find(response_body['data']['id'])

          PageIndexCreator.call(page_created)
        end
      end
    end
  end
end
