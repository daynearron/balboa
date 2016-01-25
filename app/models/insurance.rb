class Insurance < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image, styles: {  xlarge: "1260x1260>", large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
