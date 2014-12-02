class MedicalHistoriesController < ApplicationController
  before_action :set_medical_history, only: [:show, :edit, :update, :destroy]

  # GET /medical_histories
  # GET /medical_histories.json
  def index
    @medical_histories = MedicalHistory.paginate(page: params[:page], per_page: 16).order('created_at DESC')
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /medical_histories/1
  # GET /medical_histories/1.json
  def show

  end

  # GET /medical_histories/new
  def new
    @medical_history = MedicalHistory.new(patient_id: params[:patient])
  end

  # GET /medical_histories/1/edit
  def edit
  end

  # POST /medical_histories
  # POST /medical_histories.json
  def create
    @medical_history = MedicalHistory.new(medical_history_params)

    respond_to do |format|
      if @medical_history.save
        format.html { redirect_to @medical_history, notice: 'Medical history was successfully created.' }
        format.json { render :show, status: :created, location: @medical_history }

      else     format.html { render :new }
        format.json { render json: @medical_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_histories/1
  # PATCH/PUT /medical_histories/1.json
  def update
    respond_to do |format|
      if @medical_history.update(medical_history_params)
        format.html { redirect_to @medical_history, notice: 'Medical history was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_history }
      else
        format.html { render :edit }
        format.json { render json: @medical_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_histories/1
  # DELETE /medical_histories/1.json
  def destroy
    @medical_history.destroy
    if params[:patient]!=0 or params[:patient]!=""
      respond_to do |format|
        format.html { redirect_to patient_url(params[:patient]), notice: 'Medical history was successfully deleted.' }
        binding.pry

        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to medical_histories_url, notice: 'Medical history was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_history
      @medical_history = MedicalHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_history_params
      params.require(:medical_history).permit(:bp, :temperature, :weight, :signsymptoms, :diagnosis, :drugs, :labTest, :patient_id)
    end
  end
