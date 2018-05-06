module API
  module V1
    class PageResource < JSONAPI::Resource
      attributes :url

      has_many :elements
    end
  end
end
