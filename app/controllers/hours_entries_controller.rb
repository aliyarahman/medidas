class HoursEntriesController < ApplicationController
  before_action :set_hours_entry, only: [:show, :edit, :update, :destroy]

  # GET /hours_entries
  # GET /hours_entries.json
  def index
    @hours_entries = HoursEntry.all
  end

  # GET /hours_entries/1
  # GET /hours_entries/1.json
  def show
  end

  # GET /hours_entries/new
  def new
    @hours_entry = HoursEntry.new
  end

  # GET /hours_entries/1/edit
  def edit
  end

  # POST /hours_entries
  # POST /hours_entries.json
  def create
    @hours_entry = HoursEntry.new(hours_entry_params)

    respond_to do |format|
      if @hours_entry.save
        format.html { redirect_to @hours_entry, notice: 'Hours entry was successfully created.' }
        format.json { render :show, status: :created, location: @hours_entry }
      else
        format.html { render :new }
        format.json { render json: @hours_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours_entries/1
  # PATCH/PUT /hours_entries/1.json
  def update
    respond_to do |format|
      if @hours_entry.update(hours_entry_params)
        format.html { redirect_to @hours_entry, notice: 'Hours entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @hours_entry }
      else
        format.html { render :edit }
        format.json { render json: @hours_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours_entries/1
  # DELETE /hours_entries/1.json
  def destroy
    @hours_entry.destroy
    respond_to do |format|
      format.html { redirect_to hours_entries_url, notice: 'Hours entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hours_entry
      @hours_entry = HoursEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hours_entry_params
      params.require(:hours_entry).permit(:evidence, :num_hours, :shift_start, :shift_end, :submitted, :user_id)
    end
end
