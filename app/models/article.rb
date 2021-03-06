class Article < ActiveRecord::Base
  include Taggable
  # has_many :comments
  # has_many :taggings
  # has_many :tags, through: :taggings
  #
  # scope :desc,->{ order("id DESC") }
  #
  # before_save :set_tags
  #
  #
  #
  #
  # protected
  # def set_tags
  #   tag_names = body.downcase.split.find_all{|word| /^#.+/.match word}.uniq
  #   tag_names = tag_names.map { |x| x[1..-1] }
  #   new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  #   self.tags = new_or_found_tags
  # end

  has_attached_file :image
  validates_attachment_content_type :image, content_type: ['image/jpg',
                                                           'image/jpeg',
                                                           'image/png']

end
