class ResumesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
    @resumes = Resume.page(params[:page]).per(3).order(created_at: :desc)
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = current_user.build_resume(resume_params.except(:tags))

    if @resume.save
      current_user.resume_condition = 1
      current_user.save
      render action: 'confirmed'
    else
      render action: 'new'
    end
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def edit
    @resume = current_user.resume
  end

  def update
    @resume = current_user.resume

    if @resume.update(resume_params)
      redirect_to @resume, notice: 'Resume was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @resume = current_user.resume

    if @resume.creator == current_user.username
      @resume.destroy

      current_user.resume_condition = 0
      current_user.save
    end
    redirect_to resumes_path
  end

  private

  def resume_params
    params.require(:resume).permit(:creator, :creator_email, :name, :years_of_experience, :months_of_experience, :telegram_link, :github_link, :body, :title, :city, :salary, :salary_frequency, :tags, :resume_condition, :user_id)
  end
end
