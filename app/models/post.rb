class Post < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image, 
  									:styles => { large: "600x600>", medium: "300x300>", thumb: "150x150#"},
  									:storage => :s3,
  									:path => "/images/:id/:style.:extension",
  									:url => ":s3_domain_url"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
