class Article < ActiveRecord::Base

  scope :desc,->{ order("id DESC") }

end
