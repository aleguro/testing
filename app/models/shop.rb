class Shop < ApplicationRecord
  belongs_to :category
  validates :name, presence: true

  scope :contains_name, ->(name)  { joins(:category).where("shops.name LIKE '%#{name}%'") }
  scope :contains_category_name, ->(name) { joins(:category).where("categories.name LIKE '%#{name}%'") }
  default_scope { order('name DESC') }
end
