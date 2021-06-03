class Image < ApplicationRecord
  belongs_to :theme
  has_many :values

  # get images array of arrays by given theme_id
  scope :theme_images, lambda { |theme_id|
                         select('id', 'name', 'file', 'avg_value')
                           .where(theme_id: theme_id)
                           .order('id')
                       }

  scope :find_image, ->(image_id) { find(image_id) }

  # calc avg_value and update to Image (image_id, avg_value)
  def self.update_avg_value(image_id, avg_value)
    image = find(image_id)
    image.update(avg_value: avg_value)
  end

  # Refactored method - transferred from work_image.rb module
  def self.show_valued_image(new_value_data)
    image_id = new_value_data[:image_id]
    theme_id = new_value_data[:theme_id]
    current_user_id = new_value_data[:user_id]
    user_valued, value = Value.user_valued_exists(current_user_id, image_id) # 1/0 ?
    values_qty = Value.all.count.round

    common_avg_value = user_valued == 1 ? find(image_id).avg_value.round : 0

    {
      values_qty: values_qty,
      current_user_id: current_user_id,
      theme_id: theme_id,
      image_id: image_id,
      user_valued: user_valued,
      value: value,
      common_avg_value: common_avg_value
    }
    # logger.info "In show_image:  data = #{data.inspect} "
  end

  def self.value_and_update(new_value_data)
    image_id = new_value_data[:image_id]
    Value.create(new_value_data)
    avg_value = Value.calc_average_value(image_id).round
    # puts "in value_and_update: image_id = #{image_id}, avg_value = #{avg_value} \n"
    update_avg_value(image_id, avg_value)

    show_valued_image(new_value_data)
  end
end
