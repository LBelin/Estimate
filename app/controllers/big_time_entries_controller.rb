class BigTimeEntriesController < ApplicationController
  before_action :set_big_time_entry, only: [:show, :edit, :update, :destroy]

  # GET /big_time_entries
  # GET /big_time_entries.json
  def index
    @big_time_entries = BigTimeEntry.all
  end

  # GET /big_time_entries/1
  # GET /big_time_entries/1.json
  def show
  end

  # GET /big_time_entries/new
  def new
    @big_time_entry = BigTimeEntry.new
  end

  # GET /big_time_entries/1/edit
  def edit
  end

  # POST /big_time_entries
  # POST /big_time_entries.json
  def create
    @big_time_entry = BigTimeEntry.new(big_time_entry_params)

    respond_to do |format|
      if @big_time_entry.save
        format.html { redirect_to @big_time_entry, notice: 'Big time entry was successfully created.' }
        format.json { render :show, status: :created, location: @big_time_entry }
      else
        format.html { render :new }
        format.json { render json: @big_time_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /big_time_entries/1
  # PATCH/PUT /big_time_entries/1.json
  def update
    respond_to do |format|
      if @big_time_entry.update(big_time_entry_params)
        format.html { redirect_to @big_time_entry, notice: 'Big time entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @big_time_entry }
      else
        format.html { render :edit }
        format.json { render json: @big_time_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /big_time_entries/1
  # DELETE /big_time_entries/1.json
  def destroy
    @big_time_entry.destroy
    respond_to do |format|
      format.html { redirect_to big_time_entries_url, notice: 'Big time entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_big_time_entry
      @big_time_entry = BigTimeEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def big_time_entry_params
      params.require(:big_time_entry).permit(:Fogz, :Resource, :HrsIn, :WorkDate, :nt)
    end
end
