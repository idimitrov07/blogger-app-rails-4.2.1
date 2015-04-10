class Photo < ActiveRecord::Base
  include Taggable
  # has_many :comments
  # has_many :taggings
  # has_many :tags, through: :taggings
end
