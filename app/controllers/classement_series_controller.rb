class ClassementSeriesController < ApplicationController
  before_action :set_classement_series, only: [:show, :edit, :update, :destroy]

  # GET /classement_series
  # GET /classement_series.json
  def index
    @classement_series = ClassementSeries.all
  end

  # GET /classement_series/1
  # GET /classement_series/1.json
  def show
  end

  # GET /classement_series/new
  def new
    @classement_series = ClassementSeries.new
  end

  # GET /classement_series/1/edit
  def edit
  end

  # POST /classement_series
  # POST /classement_series.json
  def create
    @classement_series = ClassementSeries.new(classement_series_params)

    respond_to do |format|
      if @classement_series.save
        format.html { redirect_to @classement_series, notice: 'Classement series was successfully created.' }
        format.json { render :show, status: :created, location: @classement_series }
      else
        format.html { render :new }
        format.json { render json: @classement_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classement_series/1
  # PATCH/PUT /classement_series/1.json
  def update
    respond_to do |format|
      if @classement_series.update(classement_series_params)
        format.html { redirect_to @classement_series, notice: 'Classement series was successfully updated.' }
        format.json { render :show, status: :ok, location: @classement_series }
      else
        format.html { render :edit }
        format.json { render json: @classement_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classement_series/1
  # DELETE /classement_series/1.json
  def destroy
    @classement_series.destroy
    respond_to do |format|
      format.html { redirect_to classement_series_index_url, notice: 'Classement series was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classement_series
      @classement_series = ClassementSeries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classement_series_params
      params.require(:classement_series).permit(:nom, :genre, :synopsis, :note)
    end
end
