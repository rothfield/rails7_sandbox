class CheckpointCategoriesController < ApplicationController
  before_action :set_checkpoint_category, only: %i[ show edit update destroy ]

  # GET /checkpoint_categories or /checkpoint_categories.json
  def index
    @checkpoint_categories = CheckpointCategory.all
  end

  # GET /checkpoint_categories/1 or /checkpoint_categories/1.json
  def show
  end

  # GET /checkpoint_categories/new
  def new
    @checkpoint_category = CheckpointCategory.new
  end

  # GET /checkpoint_categories/1/edit
  def edit
  end

  # POST /checkpoint_categories or /checkpoint_categories.json
  def create
    @checkpoint_category = CheckpointCategory.new(checkpoint_category_params)

    respond_to do |format|
      if @checkpoint_category.save
        format.html { redirect_to checkpoint_category_url(@checkpoint_category), notice: "Checkpoint category was successfully created." }
        format.json { render :show, status: :created, location: @checkpoint_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @checkpoint_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkpoint_categories/1 or /checkpoint_categories/1.json
  def update
    respond_to do |format|
      if @checkpoint_category.update(checkpoint_category_params)
        format.html { redirect_to checkpoint_category_url(@checkpoint_category), notice: "Checkpoint category was successfully updated." }
        format.json { render :show, status: :ok, location: @checkpoint_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @checkpoint_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkpoint_categories/1 or /checkpoint_categories/1.json
  def destroy
    @checkpoint_category.destroy

    respond_to do |format|
      format.html { redirect_to checkpoint_categories_url, notice: "Checkpoint category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkpoint_category
      @checkpoint_category = CheckpointCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def checkpoint_category_params
      params.require(:checkpoint_category).permit(:name, :short_name, :order)
    end
end
