class Post < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}, :url =>'s3-us-west-1.amazonaws.com', :path => '/:class/:attachment/:id_partition/:style/:filename'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
