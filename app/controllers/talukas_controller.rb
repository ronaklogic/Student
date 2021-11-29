class TalukasController < ApplicationController
  STATE_PER_PAGE = 3
  def index
    @talukas = Taluka.all
    @page = params.fetch(:page, 0).to_i
    @states = State.limit(STATE_PER_PAGE).offset(@page)
    respond_to do |format|
      format.html
    end
  end

  def new
    @taluka = Taluka.new
  end

  def create
    @taluka = Taluka.new(taluka_params)
    respond_to do |format|
      if @taluka.save
        format.js
        format.html {redirect_to talukas_path}
      else
        format.js
        format.html {render :new}
      end 
    end
  end

  def edit
    @taluka = Taluka.find(params[:id])
    respond_to do |format|
      format.js
      format.html 
    end 
  end

  def update
    @taluka = Taluka.find(params[:id])
    respond_to do |format|
      if @taluka.update(taluka_params)
        format.js 
        format.html {redirect_to talukas_path} 
      else 
        format.js 
        format.html {render :edit}
      end 
    end 
  end

  def destroy
    @taluka = Taluka.find(params[:id])
    @taluka.destroy
    respond_to do |format|
      format.js
      format.html {redirect_to talukas_path}
    end 
  end

  def show
    @taluka = Taluka.find(params[:id])
    respond_to do |format|
      format.js
      format.html 
    end 
  end

  private
  def taluka_params
    params.require(:taluka).permit(:name, :district_id, :state_id)
  end
end
