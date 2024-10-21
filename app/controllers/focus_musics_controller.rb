class FocusMusicsController < ApplicationController
  before_action :set_focus_music, only: %i[ show edit update destroy ]

  # GET /focus_musics or /focus_musics.json
  def index
    @focus_musics = FocusMusic.all
  end

  # GET /focus_musics/1 or /focus_musics/1.json
  def show
  end

  # GET /focus_musics/new
  def new
    @focus_music = FocusMusic.new
  end

  # GET /focus_musics/1/edit
  def edit
  end

  # POST /focus_musics or /focus_musics.json
  def create
    @focus_music = FocusMusic.new(focus_music_params)

    respond_to do |format|
      if @focus_music.save
        format.html { redirect_to @focus_music, notice: "Focus music was successfully created." }
        format.json { render :show, status: :created, location: @focus_music }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @focus_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focus_musics/1 or /focus_musics/1.json
  def update
    respond_to do |format|
      if @focus_music.update(focus_music_params)
        format.html { redirect_to @focus_music, notice: "Focus music was successfully updated." }
        format.json { render :show, status: :ok, location: @focus_music }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @focus_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focus_musics/1 or /focus_musics/1.json
  def destroy
    @focus_music.destroy!

    respond_to do |format|
      format.html { redirect_to focus_musics_path, status: :see_other, notice: "Focus music was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_focus_music
      @focus_music = FocusMusic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def focus_music_params
      params.require(:focus_music).permit(:url)
    end
end
