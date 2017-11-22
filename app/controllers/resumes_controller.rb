class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end
  def show
   @resume = Resume.find(params[:id])
   flash[:notice] = "您已经成功提交简历！"
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])

    if @resume.update(resume_params)
      redirect_to resumes_path, notice: "Update Success"
    else
      render :edit
    end
  end


  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to resume_path(@resume)
    else
      render :new
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    flash[:alert] = "简历已经删除！"
    redirect_to resumes_path
  end

 private

 def resume_params
   params.require(:resume).permit(:name, :gender,:age, :post_id,:datebirth,:schoolfirst,:schoollast,
     :majorfirst, :majorlast, :educationfirst, :educationlast, :degreelast, :degreefirst,
     :attachment, :phonenumber)
 end
end
