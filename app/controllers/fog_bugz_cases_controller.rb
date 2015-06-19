class FogBugzCasesController < ApplicationController
  before_action :set_fog_bugz_case, only: [:show, :edit, :update, :destroy]

  # GET /fog_bugz_cases
  # GET /fog_bugz_cases.json
  def index
    @fog_bugz_case = FogBugzCase.new

    this_feature = Feature.find(params[:feature_id])
    @fog_bugz_cases = this_feature.fog_bugz_cases
    @feature = this_feature
  end

  # GET /fog_bugz_cases/1
  # GET /fog_bugz_cases/1.json
  def show
    @fog_bugz_case = FogBugzCase.find(params[:id])
    @big_time_entries = BigTimeEntry.all.where(:fog_bugz_case_id==params[:id])
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

    c = FogBugzCase.new
    c.case_id = params[:fog_bugz_case][:case_id]
    c.feature_id = param[:fog_bugz_case][:feature_id]
    # c.feature_title = Feature.find(feature_id).title
    c.title = 'title' #API.title(case_id)
    c.estimate = 0 #API.estimate(case_id)
    c.current = 0 #BigTime adder
    c.percentage = c.estimate == 0 ? 0 : c.current/c.estimate

    @fog_bugz_case = c

    respond_to do |format|
      if @fog_bugz_case.save
        format.html { redirect_to :back, notice: 'Fog bugz case was successfully created.' }
        format.json { render :show, status: :created, location: @fog_bugz_case }
      else
        format.html { render :back }
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
    @feature = Feature.find(params[:feature_id])
    @fog_bugz_case = FogBugzCase.find(params[:id])
    @fog_bugz_case.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Fog bugz case was successfully destroyed.' }
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
