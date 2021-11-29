class StatesController < ApplicationController
  STATE_PER_PAGE = 3
  def index
    @states = State.all
    @page = params.fetch(:page, 0).to_i
    @states = State.offset(@page * STATE_PER_PAGE).limit(STATE_PER_PAGE)
      respond_to do |format|
      format.html
    end 
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
      respond_to do |format|
      if @state.save
        format.js 
        format.html {redirect_to states_path}
      else
        format.js 
        format.html {render :new}
      end
    end 
  end

  def edit
    @state = State.find(params[:id])
    respond_to do |format|
      format.js
      format.html 
    end
  end

  def update
    @state = State.find(params[:id])
    respond_to do |format|
      if @state.update(state_params)
        format.js
        format.html {redirect_to states_path}
      else 
        format.js 
        format.html {render :edit}
      end 
    end 
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    respond_to do |format|
      format.js
      format.html {redirect_to states_path}
    end 
  end

  def show
    @state = State.find(params[:id])
    respond_to do |format|
      format.js
      format.html
    end
  end

  private
  def state_params
    params.require(:state).permit(:state_name, :district_id, :taluka_id)
  end  
end
