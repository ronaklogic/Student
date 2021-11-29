class DistrictsController < ApplicationController
  DISTRICT_PER_PAGE = 3
  def index
    @districts = District.all
    @page = params.fetch(:page, 0).to_i
    @districts = District.limit(DISTRICT_PER_PAGE).offset(@page)
    respond_to do |format|
      format.html
    end 
  end

  def new
    @district = District.new
  end

  def create
    @district = District.new(district_params)
    respond_to do |format|
      if @district.save
        format.js
        format.html {redirect_to districts_path}
      else
        format.js
        format.html {render :new}
      end
    end 
  end

  def edit
    @district = District.find(params[:id])
    respond_to do |format|
      format.js
      format.html 
    end 
  end

  def update
    @district = District.find(params[:id])
    respond_to do |format|
      if @district.update(district_params)
        format.js 
        format.html {redirect_to districts_path}
      else 
        format.js
        format.html {render :edit}
      end
    end
  end

  def destroy
    @district = District.find(params[:id])
    @district.destroy
    respond_to do |format|
      format.js
      format.html {redirect_to districts_path}
    end 
  end

  def show
    @district = District.find(params[:id])
    respond_to do |format|
      format.js
      format.html 
    end 
  end

  private
  def district_params
    params.require(:district).permit(:district_name, :state_id,:taluka_id)
  end
end