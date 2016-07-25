class Image < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true

  has_attached_file :img, styles: { medium: "300x300#{}", small: "200x200#{}", special_size: "240x240#{}", xsmall: "125x125#{}", thumb: "150x150#{}" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
  validates_attachment :img, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  #attr_accessible :img_content_type, :img_file_name, :img_file_size, :img

end
