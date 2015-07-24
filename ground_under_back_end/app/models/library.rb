class Library < ActiveRecord::Base
  belongs_to :songs
  belongs_to :users
end
