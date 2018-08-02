class Subject < ApplicationRecord
  has_many :course_subjects, dependent: :destroy
  has_many :courses, through: :course_subjects
  has_many :tasks, dependent: :destroy
  has_many :user_subjects, dependent: :destroy
  has_many :users, through: :user_subjects
  accepts_nested_attributes_for :tasks, allow_destroy: true

  mount_uploader :image_url, ImgSubjectUploader

  validates :name, presence: true
  validates :description, presence: true, length: {minimum: Settings.description_min}
  validate :validate_tasks

  def is_inprogess?
    self.courses.any?{|course| course.started?}
  end

  private

  def validate_tasks
    if tasks.select{|task| !task._destroy}.count < Settings.task_quanlity
      errors.add :subjects, I18n.t("admin.subjects.task_quanlity_error")
    end
  end
end
