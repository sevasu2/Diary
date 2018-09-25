class NikkisController < ApplicationController
  before_action :set_nikki, only: [:show, :edit, :update, :destroy]

  # GET /nikkis
  # GET /nikkis.json
  def index
    @nikkis = Nikki.all
  end

  # GET /nikkis/1
  # GET /nikkis/1.json
  def show
  end

  # GET /nikkis/new
  def new
    @nikki = Nikki.new
  end

  # GET /nikkis/1/edit
  def edit
  end

  # POST /nikkis
  # POST /nikkis.json
  def create
    @nikki = Nikki.new(nikki_params)

    respond_to do |format|
      if @nikki.save
        format.html { redirect_to @nikki, notice: 'Nikki was successfully created.' }
        format.json { render :show, status: :created, location: @nikki }
      else
        format.html { render :new }
        format.json { render json: @nikki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nikkis/1
  # PATCH/PUT /nikkis/1.json
  def update
    respond_to do |format|
      if @nikki.update(nikki_params)
        format.html { redirect_to @nikki, notice: 'Nikki was successfully updated.' }
        format.json { render :show, status: :ok, location: @nikki }
      else
        format.html { render :edit }
        format.json { render json: @nikki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nikkis/1
  # DELETE /nikkis/1.json
  def destroy
    @nikki.destroy
    respond_to do |format|
      format.html { redirect_to nikkis_url, notice: 'Nikki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nikki
      @nikki = Nikki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nikki_params
      params.require(:nikki).permit(:title, :body)
    end
end
