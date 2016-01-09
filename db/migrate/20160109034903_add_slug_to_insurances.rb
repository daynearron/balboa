class AddSlugToInsurances < ActiveRecord::Migration
  def change
    add_column :insurances, :slug, :string
    add_index :insurances, :slug, unique: true
  end
end
