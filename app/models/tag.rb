class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :articles, through: :taggings
  has_many :photos, through: :taggings
end
