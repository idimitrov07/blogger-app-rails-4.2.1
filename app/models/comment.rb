class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :photo

  scope :desc,-> { order("id DESC") }
end
