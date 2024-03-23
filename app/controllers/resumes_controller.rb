class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      render action: 'confirmed'
    else
      render action: 'new'
    end
  end
end