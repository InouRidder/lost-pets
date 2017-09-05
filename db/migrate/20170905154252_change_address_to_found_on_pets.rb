class ChangeAddressToFoundOnPets < ActiveRecord::Migration[5.1]
  def change
    remove_column :pets, :address
    add_column :pets, :found_on, :date
  end
end
