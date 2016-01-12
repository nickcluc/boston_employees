class Api::JobsController < Api::BaseController
  def index
    if params[:job_name].present?
      @job = Job.find_by(name: params[:job_name].downcase)
      if @job.nil?
        render json: {error:"Job #{params[:job_name]} not found!"}
      else
        render json: @job
      end
    else
      @jobs = Job.first(10)
      render json: @jobs
    end
  end
end
