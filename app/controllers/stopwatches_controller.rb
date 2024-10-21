class StopwatchesController < ApplicationController
  before_action :set_stopwatch, only: %i[ show edit update destroy ]

  # GET /stopwatches or /stopwatches.json
  def index
    @stopwatches = Stopwatch.all
  end

  # GET /stopwatches/1 or /stopwatches/1.json
  def show
  end

  # GET /stopwatches/new
  def new
    @stopwatch = Stopwatch.new
  end

  # GET /stopwatches/1/edit
  def edit
  end

  # POST /stopwatches or /stopwatches.json
  def create
    @stopwatch = Stopwatch.new(stopwatch_params)

    respond_to do |format|
      if @stopwatch.save
        format.html { redirect_to @stopwatch, notice: "Stopwatch was successfully created." }
        format.json { render :show, status: :created, location: @stopwatch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stopwatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stopwatches/1 or /stopwatches/1.json
  def update
    respond_to do |format|
      if @stopwatch.update(stopwatch_params)
        format.html { redirect_to @stopwatch, notice: "Stopwatch was successfully updated." }
        format.json { render :show, status: :ok, location: @stopwatch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stopwatch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stopwatches/1 or /stopwatches/1.json
  def destroy
    @stopwatch.destroy!

    respond_to do |format|
      format.html { redirect_to stopwatches_path, status: :see_other, notice: "Stopwatch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stopwatch
      @stopwatch = Stopwatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stopwatch_params
      params.require(:stopwatch).permit(:started_at, :completed_at, :duration)
    end
end
