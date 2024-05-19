# frozen_string_literal: true

class JobsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create edit update destroy]
  def index
    @jobs = Job.page(params[:page]).per(3).order(created_at: :desc)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
    @job = current_user.job
  end

  def create
    @job = current_user.build_job(job_params)

    if @job.save
      render action: 'show'
    else
      render action: 'new'
    end
  end

  def update
    @job = current_user.job

    if @job.update(job_params)
      redirect_to @job, notice: t('flash.success.job_update')
    else
      Rails.logger.debug @job.errors.full_messages
      render action: 'edit'
    end
  end

  def destroy
    @job = current_user.job
    @job.destroy

    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :company, :body, :salary, :city, :required_exp, :user_id, :updated_at)
  end
end
