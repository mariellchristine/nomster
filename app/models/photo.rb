class Photo < ActiveRecord::Base

  mount_uploader :picture, PictureUploader
  
  belongs_to :user
  belongs_to :place

  u = Photo.new

  u.save!
  u.picture.url # => '/url/to/file.png'
  u.picture.current_path # => 'path/to/file.png'
  u.picture # => 'file.png'
end
 