class RacipesController < ApplicationController
  before_action :set_racipe, only: %i[ show edit update destroy ]

  # GET /racipes or /racipes.json
  def index
    @racipes = Racipe.all
  end

  # GET /racipes/1 or /racipes/1.json
  def show
  end

  # GET /racipes/new
  def new
    @racipe = Racipe.new
  end

  # GET /racipes/1/edit
  def edit
  end

  # POST /racipes or /racipes.json
  def create
    @racipe = Racipe.new(racipe_params)

    respond_to do |format|
      if @racipe.save
        format.html { redirect_to @racipe, notice: "Racipe was successfully created." }
        format.json { render :show, status: :created, location: @racipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @racipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /racipes/1 or /racipes/1.json
  def update
    respond_to do |format|
      if @racipe.update(racipe_params)
        format.html { redirect_to @racipe, notice: "Racipe was successfully updated." }
        format.json { render :show, status: :ok, location: @racipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @racipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /racipes/1 or /racipes/1.json
  def destroy
    @racipe.destroy!

    respond_to do |format|
      format.html { redirect_to racipes_path, status: :see_other, notice: "Racipe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_racipe
      @racipe = Racipe.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def racipe_params
      params.expect(racipe: [ :title, :description ])
    end
end
