class CreateInsuranceLeadCurrentAutoInsurancePolicies < ActiveRecord::Migration
  def self.up
    create_table :current_auto_insurance_policies do |t|
      t.integer    :insurance_lead_id
      t.string     :style
      t.string     :content_type
      t.string     :file_name
      t.binary     :file_contents
    end
  end

  def self.down
    drop_table :current_auto_insurance_policies
  end
end
