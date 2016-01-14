class AddSlugToCustomerServices < ActiveRecord::Migration
  def change
    add_column :customer_services, :slug, :string
    add_index :customer_services, :slug, unique: true
  end
end
