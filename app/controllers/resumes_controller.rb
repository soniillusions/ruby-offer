class ResumesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
    @resumes = Resume.page(params[:page]).per(3).order(created_at: :desc)
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      render action: 'confirmed'
    else
      render action: 'new'
    end
  end

  def show
    @resume = Resume.find(params[:id])
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy

    redirect_to users_resumes_path
  end

  private

  def resume_params
    params.require(:resume).permit(:creator, :creator_email, :name, :years_of_experience, :months_of_experience, :telegram_link, :github_link, :body, :title, :city, :salary, :salary_frequency)
  end
end
