class AddAttachmentLogoToCustomerServices < ActiveRecord::Migration
  def self.up
    change_table :customer_services do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :customer_services, :logo
  end
end
