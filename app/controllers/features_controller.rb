class FeaturesController < ApplicationController
  before_action :set_feature, only: [:show, :edit, :update, :destroy]

  # GET /features
  # GET /features.json
  def index
    @fog_bugz_case = FogBugzCase.new
    @features = Feature.all
    Feature.delete_all
    FogBugzCase.delete_all
  end

  # GET /features/1
  # GET /features/1.json
  def show
    @fog_bugz_case = FogBugzCase.new
    @fog_bugz_cases = FogBugzCase.all
  end

  # GET /features/new
  def new
    @feature = Feature.new
  end

  # GET /features/1/edit
  def edit
    feature = Feature.find(params[:id])
    feature.active = params[:active]
    feature.resolved = params[:resolved]
    respond_to do |format|
      if feature.save
        format.html { redirect_to :back, notice: 'Feature was successfully edited.' }
        format.json { render :show, status: :created, location: feature }
      else
        format.html { render :new }
        format.json { render json: feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /features
  # POST /features.json
  def create
    f = Feature.new
    f.title = params[:feature][:title]
    f.estimate = 0
    f.current = 0
    f.num_cases = 0
    f.percentage = f.estimate == 0 ? 0 : f.current/f.estimate
    @feature = f

    respond_to do |format|
      if @feature.save
        format.html { redirect_to @feature, notice: 'Feature was successfully created.' }
        format.json { render :show, status: :created, location: @feature }
      else
        format.html { render :new }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /features/1
  # PATCH/PUT /features/1.json
  def update

    respond_to do |format|
      if @feature.update
        format.html { redirect_to @feature, notice: 'Feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @feature }
      else
        format.html { render :edit }
        format.json { render json: @feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /features/1
  # DELETE /features/1.json
  def destroy
    @feature = Feature.find(params[:id])
    @feature.destroy
    respond_to do |format|
      format.html { redirect_to features_url, notice: 'Feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feature
      @feature = Feature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feature_params
      params.require(:feature).permit(:title, :estimate, :actual, :num_cases, :completed?, :active?)
    end
  end
