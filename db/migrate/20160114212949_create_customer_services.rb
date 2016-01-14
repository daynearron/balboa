class CreateCustomerServices < ActiveRecord::Migration
  def change
    create_table :customer_services do |t|
      t.string :name
      t.string :phone
      t.string :site

      t.timestamps null: false
    end
  end
end
