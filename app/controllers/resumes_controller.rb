class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
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

  private

  def resume_params
    params.require(:resume).permit(:creator, :experience, :resume_link, :github_link, :body)
  end
end
