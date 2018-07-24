class ExamQuestion < ApplicationRecord
  belongs_to :exam
  belongs_to :question
  has_many :exam_answers, dependent: :destroy
  has_many :answers, dependent: :destroy, through: :exam_answers
end
