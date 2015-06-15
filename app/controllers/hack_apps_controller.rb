class HackAppsController < ApplicationController
  before_action :set_hack_app, only: [:show, :edit, :update, :destroy]

  # GET /hack_apps
  # GET /hack_apps.json
  def index
    @hack_apps = HackApp.all
  end

  # GET /hack_apps/1
  # GET /hack_apps/1.json
  def show
  end

  # GET /hack_apps/new
  def new
    @hack_app = HackApp.new
  end

  # GET /hack_apps/1/edit
  def edit
  end


  # POST /hack_apps
  # POST /hack_apps.json
  def create
    @hack_app = HackApp.new(hack_app_params)

    respond_to do |format|
      if @hack_app.save
        format.html { redirect_to @hack_app, notice: 'Hack app was successfully created.' }
        format.json { render :show, status: :created, location: @hack_app }
      else
        format.html { render :new }
        format.json { render json: @hack_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hack_apps/1
  # PATCH/PUT /hack_apps/1.json
  def update
    respond_to do |format|
      if @hack_app.update(hack_app_params)
        format.html { redirect_to @hack_app, notice: 'Hack app was successfully updated.' }
        format.json { render :show, status: :ok, location: @hack_app }
      else
        format.html { render :edit }
        format.json { render json: @hack_app.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
  end

  # DELETE /hack_apps/1
  # DELETE /hack_apps/1.json
  def destroy
    @hack_app.destroy
    respond_to do |format|
      format.html { redirect_to hack_apps_url, notice: 'Hack app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hack_app
      @hack_app = HackApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hack_app_params
      params.require(:hack_app).permit(:id, :status)
    end
end
