class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps null: false
    end
  end
end
