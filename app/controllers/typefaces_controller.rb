class TypefacesController < ApplicationController
  before_action :set_typeface, only: [:show, :edit, :update, :destroy]

  # GET /typefaces
  # GET /typefaces.json
  def index
    @typefaces = Typeface.all
  end

  # GET /typefaces/1
  # GET /typefaces/1.json
  def show
  end

  # GET /typefaces/new
  def new
    @typeface = Typeface.new
  end

  # GET /typefaces/1/edit
  def edit
  end

  # POST /typefaces
  # POST /typefaces.json
  def create
    @typeface = Typeface.new(typeface_params)

    respond_to do |format|
      if @typeface.save
        format.html { redirect_to @typeface, notice: 'Typeface was successfully created.' }
        format.json { render action: 'show', status: :created, location: @typeface }
      else
        format.html { render action: 'new' }
        format.json { render json: @typeface.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typefaces/1
  # PATCH/PUT /typefaces/1.json
  def update
    respond_to do |format|
      if @typeface.update(typeface_params)
        format.html { redirect_to @typeface, notice: 'Typeface was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @typeface.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typefaces/1
  # DELETE /typefaces/1.json
  def destroy
    @typeface.destroy
    respond_to do |format|
      format.html { redirect_to typefaces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typeface
      @typeface = Typeface.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typeface_params
      params.require(:typeface).permit(:familyname, :designer, :year)
    end
end
