class AulosController < ApplicationController
  before_action :set_aulo, only: [:show, :edit, :update, :destroy]

  # GET /aulos
  # GET /aulos.json
  def index
    @aulos = Aulo.all
  end

  # GET /aulos/1
  # GET /aulos/1.json
  def show
  end

  # GET /aulos/new
  def new
    @aulo = Aulo.new
  end

  # GET /aulos/1/edit
  def edit
  end

  # POST /aulos
  # POST /aulos.json
  def create
    @aulo = Aulo.new(aulo_params)

    respond_to do |format|
      if @aulo.save
        NotificationJob.set(wait_until: @aulo.start_at - 10.minutes).perform_later(@aulo)
        format.html { redirect_to @aulo, notice: 'Aulo was successfully created.' }
        format.json { render :show, status: :created, location: @aulo }
      else
        format.html { render :new }
        format.json { render json: @aulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aulos/1
  # PATCH/PUT /aulos/1.json
  def update
    respond_to do |format|
      if @aulo.update(aulo_params)
        format.html { redirect_to @aulo, notice: 'Aulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @aulo }
      else
        format.html { render :edit }
        format.json { render json: @aulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aulos/1
  # DELETE /aulos/1.json
  def destroy
    @aulo.destroy
    respond_to do |format|
      format.html { redirect_to aulos_url, notice: 'Aulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aulo
      @aulo = Aulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aulo_params
      params.require(:aulo).permit(:label, :start_at, :organizer_id, attendee_ids: [])
    end
end
