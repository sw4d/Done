class EndOfDaysController < ApplicationController
  before_action :set_end_of_day, only: [:show, :edit, :update, :destroy]

  # GET /end_of_days
  # GET /end_of_days.json
  def index
    @end_of_days = EndOfDay.all
  end

  # GET /end_of_days/1
  # GET /end_of_days/1.json
  def show
  end

  # GET /end_of_days/new
  def new
    @end_of_day = EndOfDay.new
  end

  # GET /end_of_days/1/edit
  def edit
  end

  # POST /end_of_days
  # POST /end_of_days.json
  def create
    @end_of_day = EndOfDay.new(end_of_day_params)

    respond_to do |format|
      if @end_of_day.save
        format.html { redirect_to @end_of_day, notice: 'End of day was successfully created.' }
        format.json { render :show, status: :created, location: @end_of_day }
      else
        format.html { render :new }
        format.json { render json: @end_of_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /end_of_days/1
  # PATCH/PUT /end_of_days/1.json
  def update
    respond_to do |format|
      if @end_of_day.update(end_of_day_params)
        format.html { redirect_to @end_of_day, notice: 'End of day was successfully updated.' }
        format.json { render :show, status: :ok, location: @end_of_day }
      else
        format.html { render :edit }
        format.json { render json: @end_of_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /end_of_days/1
  # DELETE /end_of_days/1.json
  def destroy
    @end_of_day.destroy
    respond_to do |format|
      format.html { redirect_to end_of_days_url, notice: 'End of day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_end_of_day
      @end_of_day = EndOfDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def end_of_day_params
      params.require(:end_of_day).permit(:user_id, :hours_in_meetings, :hours_on_expected_tasks, :hours_on_unexpected_tasks, :got_done, :to_do, :concerns, :learned, :published)
    end
end
