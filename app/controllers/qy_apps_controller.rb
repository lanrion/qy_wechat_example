class QyAppsController < ApplicationController
  before_action :set_qy_app, only: [:show, :edit, :update, :destroy]

  # GET /qy_apps
  # GET /qy_apps.json
  def index
    @qy_apps = QyApp.all
  end

  # GET /qy_apps/1
  # GET /qy_apps/1.json
  def show
  end

  # GET /qy_apps/new
  def new
    @qy_app = QyApp.new
  end

  # GET /qy_apps/1/edit
  def edit
  end

  # POST /qy_apps
  # POST /qy_apps.json
  def create
    @qy_app = QyApp.new(qy_app_params)

    respond_to do |format|
      if @qy_app.save
        format.html { redirect_to @qy_app, notice: 'Qy account was successfully created.' }
        format.json { render :show, status: :created, location: @qy_app }
      else
        format.html { render :new }
        format.json { render json: @qy_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qy_apps/1
  # PATCH/PUT /qy_apps/1.json
  def update
    respond_to do |format|
      if @qy_app.update(qy_app_params)
        format.html { redirect_to @qy_app, notice: 'Qy account was successfully updated.' }
        format.json { render :show, status: :ok, location: @qy_app }
      else
        format.html { render :edit }
        format.json { render json: @qy_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qy_apps/1
  # DELETE /qy_apps/1.json
  def destroy
    @qy_app.destroy
    respond_to do |format|
      format.html { redirect_to qy_apps_url, notice: 'Qy account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qy_app
      @qy_app = QyApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qy_app_params
      params.require(:qy_app).permit(:name, :qy_token, :encoding_aes_key, :corp_id)
    end
end
