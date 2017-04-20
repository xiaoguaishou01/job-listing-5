class JobsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
before_action :validate_search_key, only: [:search]

  def show
    @job = Job.find(params[:id])
    if @job.is_hidden
      flash[:warning] = "This Job already archieved"
      redirect_to root_path
    end
    @job.view!
  end

  def index
    if params[:where].nil?
      @jobs = Job.all.paginate(:page => params[:page], :per_page => 9)
    else
    @jobs = Job.where(:sort => params[:where]).paginate(:page => params[:page], :per_page => 9)
    end

  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  def search
    if @query_string.present?
    search_result = Job.ransack(@search_criteria).result(:distinct => true)
    @jobs = search_result.recent
    end
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "")
    if params[:q].present?
      @search_criteria =  {
        title_or_sort_or_CompanyName_or_CompanyLocation_cont: @query_string
      }
    end
  end

  def search_criteria(query_string)
    { :title_cont => query_string }
  end

  def render_highlight_content(job,query_string)
    excerpt_cont = excerpt(job.title, query_string, radius: 500)
    highlight(excerpt_cont, query_string)
  end


  private

  def job_params
    params.require(:job).permit(:title, :description, :wage_upper_bound, :wage_lower_bound, :contact_email, :is_hidden, :sort, :CompanyName, :CompanyLocation, :viewed_count)
  end
end
