class Pet < ApplicationRecord
  validates :name, :description, :found_on, presence: true
  validates :category, inclusion: { in: %w(dog cat snake mouse), message: "your pet is not allowed on the webiste"}, presence: true
    # t.string "name"
    # t.string "category"
    # t.string "description"
    # t.date "address"
end
