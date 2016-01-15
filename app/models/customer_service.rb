class CustomerService < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: :slugged

  has_attached_file :logo, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end
