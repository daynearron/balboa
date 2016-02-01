class CreateInsuranceLeads < ActiveRecord::Migration
  def change
    create_table :insurance_leads do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.text :home_address, null: false
      t.text :home_address2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip_code, null: false
      t.string :country, null: false

      t.text :drivers_information
      t.attachment :current_auto_insurance_policy

      t.string :homeowners_quote_type
      t.boolean :own_dogs
      t.string :dog_1_breed
      t.string :dog_2_breed
      t.string :dog_3_breed
      t.boolean :home_security_system
      t.boolean :major_home_updates
      t.attachment :current_home_insurance_policy

      t.boolean :college_grad
      t.string :college_name
      t.string :college_degree
      t.text :work_positions

      t.boolean :interested_in_earthquake
      t.boolean :interested_in_flood
      t.boolean :interested_in_umbrella
      t.boolean :interested_in_life_insurance

      t.text :additional_details

      t.boolean :has_referral
      t.string :referral_first_name
      t.string :referral_last_name
      t.string :referral_email
      t.string :referral_phone

      t.timestamps
    end
  end
end
