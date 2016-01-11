class AddAttachmentImageToInsurances < ActiveRecord::Migration
  def self.up
    change_table :insurances do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :insurances, :image
  end
end
