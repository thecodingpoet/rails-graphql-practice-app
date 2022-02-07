module Mutations
  class CreateLink < BaseMutation
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::LinkType

    def resolve(description:, url:)
      Link.create!(
        description: description,
        url: url
      )
    end
  end
end
