class Project < ApplicationRecord
  belongs_to :creator, class_name: "User"
  validates :name, presence: true
  has_rich_text :description
  has_many_attached :images
  has_many_attached :documents
  has_one_attached :video
end
