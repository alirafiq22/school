class StudentMastersController < ApplicationController
  before_action :set_student_master, only: [:show, :edit, :update, :destroy]

  # GET /student_masters
  # GET /student_masters.json
  def index
    @student_masters = StudentMaster.all
  end

  # GET /student_masters/1
  # GET /student_masters/1.json
  def show
  end

  # GET /student_masters/new
  def new
    @student_master = StudentMaster.new
  end

  # GET /student_masters/1/edit
  def edit
  end

  # POST /student_masters
  # POST /student_masters.json
  def create
    @student_master = StudentMaster.new(student_master_params)

    respond_to do |format|
      if @student_master.save
        format.html { redirect_to @student_master, notice: 'Student master was successfully created.' }
        format.json { render :show, status: :created, location: @student_master }
      else
        format.html { render :new }
        format.json { render json: @student_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_masters/1
  # PATCH/PUT /student_masters/1.json
  def update
    respond_to do |format|
      if @student_master.update(student_master_params)
        format.html { redirect_to @student_master, notice: 'Student master was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_master }
      else
        format.html { render :edit }
        format.json { render json: @student_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_masters/1
  # DELETE /student_masters/1.json
  def destroy
    @student_master.destroy
    respond_to do |format|
      format.html { redirect_to student_masters_url, notice: 'Student master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_master
      @student_master = StudentMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_master_params
      params.fetch(:student_master, {})
    end
end
