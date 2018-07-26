class UserSubject < ApplicationRecord
  belongs_to :user
  belongs_to :user_course
  belongs_to :subject
  has_many :user_tasks, dependent: :destroy

  enum status: %i(pending started finished)
end
