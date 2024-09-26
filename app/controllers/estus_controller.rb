class EstusController < ApplicationController
  before_action :set_estu, only: %i[ show edit update destroy ]

  # GET /estus or /estus.json
  def index
    @estus = Estu.all
  end

  # GET /estus/1 or /estus/1.json
  def show
  end

  # GET /estus/new
  def new
    @estu = Estu.new
  end

  # GET /estus/1/edit
  def edit
  end

  # POST /estus or /estus.json
  def create
    @estu = Estu.new(estu_params)

    respond_to do |format|
      if @estu.save
        format.html { redirect_to @estu, notice: "Estu was successfully created." }
        format.json { render :show, status: :created, location: @estu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estus/1 or /estus/1.json
  def update
    respond_to do |format|
      if @estu.update(estu_params)
        format.html { redirect_to @estu, notice: "Estu was successfully updated." }
        format.json { render :show, status: :ok, location: @estu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estus/1 or /estus/1.json
  def destroy
    @estu.destroy!

    respond_to do |format|
      format.html { redirect_to estus_path, status: :see_other, notice: "Estu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estu
      @estu = Estu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estu_params
      params.require(:estu).permit(:name, :apellido, :carnet, :carrera)
    end
end
