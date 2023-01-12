class MinigTypesController < ApplicationController
  before_action :set_minig_type, only: %i[ show edit update destroy ]

  # GET /minig_types or /minig_types.json
  def index
    @minig_types = MinigType.all
  end

  # GET /minig_types/1 or /minig_types/1.json
  def show
  end

  # GET /minig_types/new
  def new
    @minig_type = MinigType.new
  end

  # GET /minig_types/1/edit
  def edit
  end

  # POST /minig_types or /minig_types.json
  def create
    @minig_type = MinigType.new(minig_type_params)

    respond_to do |format|
      if @minig_type.save
        format.html { redirect_to minig_type_url(@minig_type), notice: "Minig type was successfully created." }
        format.json { render :show, status: :created, location: @minig_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @minig_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minig_types/1 or /minig_types/1.json
  def update
    respond_to do |format|
      if @minig_type.update(minig_type_params)
        format.html { redirect_to minig_type_url(@minig_type), notice: "Minig type was successfully updated." }
        format.json { render :show, status: :ok, location: @minig_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @minig_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minig_types/1 or /minig_types/1.json
  def destroy
    @minig_type.destroy

    respond_to do |format|
      format.html { redirect_to minig_types_url, notice: "Minig type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minig_type
      @minig_type = MinigType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def minig_type_params
      params.require(:minig_type).permit(:name, :acronym)
    end
end
