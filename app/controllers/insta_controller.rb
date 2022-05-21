class InstaController < ApplicationController
  before_action :set_instum, only: %i[ show edit update destroy ]

  # GET /insta or /insta.json
  def index
    @insta = Instum.all
  end

  # GET /insta/1 or /insta/1.json
  def show
  end

  # GET /insta/new
  def new
    @instum = Instum.new
  end

  # GET /insta/1/edit
  def edit
  end

  # POST /insta or /insta.json
  def create
    @instum = Instum.new(instum_params)

    respond_to do |format|
      if @instum.save
        format.html { redirect_to instum_url(@instum), notice: "Instum was successfully created." }
        format.json { render :show, status: :created, location: @instum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @instum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insta/1 or /insta/1.json
  def update
    respond_to do |format|
      if @instum.update(instum_params)
        format.html { redirect_to instum_url(@instum), notice: "Instum was successfully updated." }
        format.json { render :show, status: :ok, location: @instum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @instum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insta/1 or /insta/1.json
  def destroy
    @instum.destroy

    respond_to do |format|
      format.html { redirect_to insta_url, notice: "Instum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instum
      @instum = Instum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def instum_params
      params.require(:instum).permit(:title, :body)
    end
end
