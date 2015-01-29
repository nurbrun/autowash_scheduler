class AutoWashesController < ApplicationController
  before_action :set_auto_wash, only: [:show, :edit, :update, :destroy]

  # GET /auto_washes
  # GET /auto_washes.json
  def index
    @auto_washes = AutoWash.all
  end

  # GET /auto_washes/1
  # GET /auto_washes/1.json
  def show
    @auto_wash = AutoWash.find(params[:id])
    @shift = @auto_wash.shifts.build
    # @shift.user = current_user
    @employee_shifts = @auto_wash.shifts.all
  end

  # GET /auto_washes/new
  def new
    @auto_wash = AutoWash.new
  end

  # GET /auto_washes/1/edit
  def edit
  end

  # POST /auto_washes
  # POST /auto_washes.json
  def create
    @auto_wash = AutoWash.new(auto_wash_params)

    respond_to do |format|
      if @auto_wash.save
        format.html { redirect_to @auto_wash, notice: 'Auto wash was successfully created.' }
        format.json { render :show, status: :created, location: @auto_wash }
      else
        format.html { render :new }
        format.json { render json: @auto_wash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auto_washes/1
  # PATCH/PUT /auto_washes/1.json
  def update
    respond_to do |format|
      if @auto_wash.update(auto_wash_params)
        format.html { redirect_to @auto_wash, notice: 'Auto wash was successfully updated.' }
        format.json { render :show, status: :ok, location: @auto_wash }
      else
        format.html { render :edit }
        format.json { render json: @auto_wash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auto_washes/1
  # DELETE /auto_washes/1.json
  def destroy
    @auto_wash.destroy
    respond_to do |format|
      format.html { redirect_to auto_washes_url, notice: 'Auto wash was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto_wash
      @auto_wash = AutoWash.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auto_wash_params
      params.require(:auto_wash).permit(:location, :start, :close)
    end
end
