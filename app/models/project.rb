class Project < ApplicationRecord
  # --- Associations ---
  belongs_to :creator, class_name: "User"

  has_many_attached :images
  has_many_attached :documents
  has_one_attached :video
  has_rich_text :content

  # --- Validations ---
  validates :name, presence: true

  # --- Enums ---
  enum :category, { ai: 0, web: 1, mobile: 2, blockchain: 3, game: 4 }
end
