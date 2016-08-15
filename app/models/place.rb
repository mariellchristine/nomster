class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  has_many :photos
  accepts_nested_attributes_for :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, length: {minimum: 3}, presence: true
  validates :description, :address, presence: true
  validates_associated :photos
end

