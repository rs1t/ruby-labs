class User < ApplicationRecord
  has_many :values, dependent: :destroy
  # todo: validations
end
