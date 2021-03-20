class Image < ApplicationRecord
  belongs_to :theme
  has_many :values

  # get images array of arrays by given theme_id
  scope :theme_images, ->(theme_id) { select('id', 'name', 'file', 'avg_value').where(theme_id: theme_id) }

  scope :find_image, ->(image_id) { find(image_id) }
end
