class VolunteersController < ApplicationController
  before_action :set_volunteer, only: %i[ show edit update destroy ]

  # GET /Volunteers or /Volunteers.json
  def index
    @volunteers = Volunteer.all
  end

  # GET /Volunteers/1 or /Volunteers/1.json
  def show
  end

  # GET /Volunteers/new
  def new
    @volunteer = Volunteer.new
  end

  # GET /Volunteers/1/edit
  def edit
  end

  # POST /Volunteers or /Volunteers.json
  def create
    @volunteer = Volunteer.new(volunteer_params)

    respond_to do |format|
      if @volunteer.save
        format.html { redirect_to volunteer_url(@volunteer), notice: "volunteer was successfully created." }
        format.json { render :show, status: :created, location: @volunteer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Volunteers/1 or /Volunteers/1.json
  def update
    respond_to do |format|
      if @volunteer.update(volunteer_params)
        format.html { redirect_to volunteer_url(@volunteer), notice: "volunteer was successfully updated." }
        format.json { render :show, status: :ok, location: @volunteer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Volunteers/1 or /Volunteers/1.json
  def destroy
    @volunteer.destroy

    respond_to do |format|
      format.html { redirect_to volunteers_url, notice: "volunteer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer
      @volunteer = Volunteer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def volunteer_params
      params.require(:volunteer).permit(:name)
    end
end
