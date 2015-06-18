class FogBugzCasesController < ApplicationController
  before_action :set_fog_bugz_case, only: [:show, :edit, :update, :destroy]

  # GET /fog_bugz_cases
  # GET /fog_bugz_cases.json
  def index
    @fog_bugz_cases = FogBugzCase.all
  end

  # GET /fog_bugz_cases/1
  # GET /fog_bugz_cases/1.json
  def show
    # @feature_title = Feature.find(@fog_bugz_case.feature_id).title
    @fog_bugz_case = FogBugzCase.find(params[:id])
    @big_time_entries = BigTimeEntry.all
  end

  # GET /fog_bugz_cases/new
  def new
    @fog_bugz_case = FogBugzCase.new
  end

  # GET /fog_bugz_cases/1/edit
  def edit
  end

  # POST /fog_bugz_cases
  # POST /fog_bugz_cases.json
  def create
    @fog_bugz_case = FogBugzCase.new(
      case_id: params[:case_id],
      estimated: 7
    )
    @fog_bugz_case.feature_id = params[:id]

    respond_to do |format|
      if @fog_bugz_case.save
        format.html { redirect_to features_path(12), notice: 'Fog bugz case was successfully created.' }
        format.json { render :show, status: :created, location: @fog_bugz_case }
      else
        format.html { render :new }
        format.json { render json: @fog_bugz_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fog_bugz_cases/1
  # PATCH/PUT /fog_bugz_cases/1.json
  def update
    respond_to do |format|
      if @fog_bugz_case.update(fog_bugz_case_params)
        format.html { redirect_to @fog_bugz_case, notice: 'Fog bugz case was successfully updated.' }
        format.json { render :show, status: :ok, location: @fog_bugz_case }
      else
        format.html { render :edit }
        format.json { render json: @fog_bugz_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fog_bugz_cases/1
  # DELETE /fog_bugz_cases/1.json
  def destroy
    @fog_bugz_case.destroy
    respond_to do |format|
      format.html { redirect_to feature(params[:id]), notice: 'Fog bugz case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fog_bugz_case
      @fog_bugz_case = FogBugzCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fog_bugz_case_params
      params.require(:fog_bugz_case).permit(:case_id, :title, :estimated, :current, :person, :resolved?)
    end
end
