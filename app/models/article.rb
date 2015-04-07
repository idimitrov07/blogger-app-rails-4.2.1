class Article < ActiveRecord::Base
  has_many :comments

  scope :desc,->{ order("id DESC") }

end
