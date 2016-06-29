class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show]

  def show
  end

  private

  def require_authorized_for_current_course
    this_course = current_lesson.section.course
    if !current_lesson.section.course.user.enrolled_in?(this_course)
      redirect_to course_path(this_course), alert: 'Please enroll in course to access all content'
    end
  end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end

end
