class Comment < ActiveRecord::Base
  belongs_to :article

  scope :desc,-> { order("id DESC") }
end
