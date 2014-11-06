class QyAccountsController < ApplicationController
  before_action :set_qy_account, only: [:show, :edit, :update, :destroy]

  # GET /qy_accounts
  # GET /qy_accounts.json
  def index
    @qy_accounts = QyAccount.all
  end

  # GET /qy_accounts/1
  # GET /qy_accounts/1.json
  def show
  end

  # GET /qy_accounts/new
  def new
    @qy_account = QyAccount.new
  end

  # GET /qy_accounts/1/edit
  def edit
  end

  # POST /qy_accounts
  # POST /qy_accounts.json
  def create
    @qy_account = QyAccount.new(qy_account_params)

    respond_to do |format|
      if @qy_account.save
        format.html { redirect_to @qy_account, notice: 'Qy account was successfully created.' }
        format.json { render :show, status: :created, location: @qy_account }
      else
        format.html { render :new }
        format.json { render json: @qy_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qy_accounts/1
  # PATCH/PUT /qy_accounts/1.json
  def update
    respond_to do |format|
      if @qy_account.update(qy_account_params)
        format.html { redirect_to @qy_account, notice: 'Qy account was successfully updated.' }
        format.json { render :show, status: :ok, location: @qy_account }
      else
        format.html { render :edit }
        format.json { render json: @qy_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qy_accounts/1
  # DELETE /qy_accounts/1.json
  def destroy
    @qy_account.destroy
    respond_to do |format|
      format.html { redirect_to qy_accounts_url, notice: 'Qy account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qy_account
      @qy_account = QyAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qy_account_params
      params.require(:qy_account).permit(:name, :qy_token, :encoding_aes_key, :corp_id)
    end
end
