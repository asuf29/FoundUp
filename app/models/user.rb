class User < ApplicationRecord
  enum :role, { developer: 0, investor: 1 }
  has_many :created_projects, class_name: "Project", foreign_key: "creator_id", dependent: :destroy
  validates :first_name, :last_name, :username, presence: true
  validates :username, uniqueness: true
  validates :gsm, format: { with: /\A\+?[0-9]{10,15}\z/, message: "must be a valid phone number" }, allow_blank: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
