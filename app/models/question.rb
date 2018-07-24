class Question < ApplicationRecord
  belongs_to :level

  has_many :exam_questions, dependent: :destroy
  has_many :answers, dependent: :destroy
end
