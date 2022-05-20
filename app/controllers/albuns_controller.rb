class AlbunsController < ApplicationController
  before_action :set_albun, only: %i[ show edit update destroy ]
  before_action :authenticate_user!


  # GET /albuns or /albuns.json
  def index
    @albuns = Albun.all
  end

  # GET /albuns/1 or /albuns/1.json
  def show
  end

  # GET /albuns/new
  def new
    @albun = Albun.new
  end

  # GET /albuns/1/edit
  def edit
  end

  # POST /albuns or /albuns.json
  def create
    @albun = Albun.new(albun_params)

    respond_to do |format|
      if @albun.save
        format.html { redirect_to albun_url(@albun), notice: "Albun was successfully created." }
        format.json { render :show, status: :created, location: @albun }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @albun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albuns/1 or /albuns/1.json
  def update
    respond_to do |format|
      if @albun.update(albun_params)
        format.html { redirect_to albun_url(@albun), notice: "Albun was successfully updated." }
        format.json { render :show, status: :ok, location: @albun }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @albun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albuns/1 or /albuns/1.json
  def destroy
    @albun.destroy

    respond_to do |format|
      format.html { redirect_to albuns_url, notice: "Albun was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albun
      @albun = Albun.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def albun_params
      params.require(:albun).permit(:artist, :AlbumName, :year)
    end
end
