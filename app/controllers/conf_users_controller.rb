class ConfUsersController < ApplicationController
  before_action :set_conf_user, only: [:show, :edit, :update, :destroy]

  # GET /conf_users
  # GET /conf_users.json
  def index
    @conf_users = ConfUser.all
  end

  # GET /conf_users/1
  # GET /conf_users/1.json
  def show
  end

  # GET /conf_users/new
  def new
    @conf_user = ConfUser.new
  end

  # GET /conf_users/1/edit
  def edit
  end

  # POST /conf_users
  # POST /conf_users.json
  def create
    @conf_user = ConfUser.new(conf_user_params)

    respond_to do |format|
      if @conf_user.save
        format.html { redirect_to welcome_index_path, notice: 'Conf user was successfully created.' }
        format.json { render :show, status: :created, location: @conf_user }
      else
        format.html { render :new }
        format.json { render json: @conf_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conf_users/1
  # PATCH/PUT /conf_users/1.json
  def update
    respond_to do |format|
      if @conf_user.update(conf_user_params)
        format.html { redirect_to welcome_index_path, notice: 'Conf user was successfully updated.' }
        format.json { render :show, status: :ok, location: @conf_user }
      else
        format.html { render :edit }
        format.json { render json: @conf_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conf_users/1
  # DELETE /conf_users/1.json
  def destroy
    @conf_user.destroy
    respond_to do |format|
      format.html { redirect_to conf_users_url, notice: 'Conf user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conf_user
      @conf_user = ConfUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conf_user_params
      params.require(:conf_user).permit(:slogan, :name, :color_1, :color_2, :logo, :description, :fondo, :titulobaner)
    end
end
