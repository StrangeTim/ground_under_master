class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :money
end
