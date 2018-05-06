module API
  module V1
    class ElementResource < JSONAPI::Resource
      attributes :tag, :content

      belongs_to :page
    end
  end
end
