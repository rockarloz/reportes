class JournalistsController < ApplicationController
  before_action :set_journalist, only: [:show, :edit, :update, :destroy]
  
  # GET /journalists
  # GET /journalists.json
  def index
    @journalists = Journalist.all
  end

  # GET /journalists/1
  # GET /journalists/1.json
  def show
  end

  # GET /journalists/new
  def new
    @journalist = Journalist.new
  end

  # GET /journalists/1/edit
  def edit
  end

  # POST /journalists
  # POST /journalists.json
  def create
    @journalist = Journalist.new(journalist_params)

    respond_to do |format|
      if @journalist.save
        format.html { redirect_to @journalist, notice: 'Journalist was successfully created.' }
        format.json { render :show, status: :created, location: @journalist }
      else
        format.html { render :new }
        format.json { render json: @journalist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journalists/1
  # PATCH/PUT /journalists/1.json
  def update
    respond_to do |format|
      if @journalist.update(journalist_params)
        format.html { redirect_to @journalist, notice: 'Journalist was successfully updated.' }
        format.json { render :show, status: :ok, location: @journalist }
      else
        format.html { render :edit }
        format.json { render json: @journalist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journalists/1
  # DELETE /journalists/1.json
  def destroy
    @journalist.destroy
    respond_to do |format|
      format.html { redirect_to journalists_url, notice: 'Journalist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journalist
      @journalist = Journalist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journalist_params
      params.require(:journalist).permit(:name, :fb_id, :gender, :email, :latitude, :longitude)
    end
end
