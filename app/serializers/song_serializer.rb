class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :key, :bpm, :description, :price
end
