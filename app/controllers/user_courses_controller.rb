class UserCoursesController < ApplicationController
  #load_and_authorize_resource
  before_action :load_course, only: :show

  def index
    type = params[:type]
    get_user_courses = current_user.user_courses
    if type == "all" || type.nil?
      @user_courses = get_user_courses
    else
      @user_courses = get_user_courses.status_of_course Course.statuses[type]
    end
  end

  def show
    @subjects = @course.subjects.map do |subject|
      [subject, UserSubject.find_by_subject(@user_course.user.id, subject.id,
        @user_course.id), CourseSubject.of_course_and_subject(@course.id, subject.id)]
    end
    @trainer_in_course = @course.users.page(params[:page])
      .per Settings.pagination.per_page_member
    @count_all_subject = @user_course.user_subjects.count_subject @user_course.user.id
  end

  private
  def load_course
    @course = @user_course.course
  end
end
