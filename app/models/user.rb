class User < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :user_courses, dependent: :destroy
  has_many :courses, through: :user_courses
  has_many :user_subjects, dependent: :destroy
  has_many :subjects, through: :user_subjects

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  enum role: {trainee: 0, supervisor: 1, admin: 2}
  mount_uploader :avatar_url, AvatarUrlUploader

  scope :recent, ->{order created_at: :desc}

  validates :name, presence: true, length: {maximum: 50}
end
