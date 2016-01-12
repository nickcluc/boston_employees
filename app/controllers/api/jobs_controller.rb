class Api::JobsController < Api::BaseController
  def index
    if params[:job_name].present?
      @job = Job.find_by(name: params[:job_name].downcase)
      render json: @job
    else
      @jobs = Job.first(10)
      render json: @jobs
    end
  end
end
