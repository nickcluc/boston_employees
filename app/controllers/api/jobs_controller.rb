class Api::JobsController < Api::BaseController
  def index
    if params[:job_name].present?
      @job = Job.includes(:employees).find_by(name: params[:job_name].downcase)
      if @job.nil?
        render json: {error:"Job #{params[:job_name]} not found!"}
      else
        render json: @job
      end
    else
      @jobs = Job.includes(:employees).first(10)
      render json: @jobs
    end
  end
end
