class AddPhotosToTaggings < ActiveRecord::Migration
  def change
    add_reference :taggings, :photo, index: true, foreign_key: true
  end
end
