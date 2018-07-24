class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
    :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: %I[google_oauth2 facebook]
  has_many :exams, dependent: :destroy
  has_many :suggest_questions, dependent: :destroy

  enum role: {user: 1, admin: 0}
end
