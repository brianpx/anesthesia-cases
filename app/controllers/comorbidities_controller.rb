class ComorbiditiesController < ApplicationController
  before_action :set_comorbidity, only: [:show, :edit, :update, :destroy]

  def index
    @comorbidities = Comorbidity.all
  end

  def show
  end

  def new
    @comorbidity = Comorbidity.new
  end

  def edit
  end

  def create
    @comorbidity = Comorbidity.new(comorbidity_params)

    respond_to do |format|
      if @comorbidity.save
        format.html { redirect_to @comorbidity, notice: 'Comorbidity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comorbidity }
      else
        format.html { render action: 'new' }
        format.json { render json: @comorbidity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @comorbidity.update(comorbidity_params)
        format.html { redirect_to @comorbidity, notice: 'Comorbidity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comorbidity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comorbidity.destroy
    respond_to do |format|
      format.html { redirect_to comorbidities_url }
      format.json { head :no_content }
    end
  end

  private
    def set_comorbidity
      @comorbidity = Comorbidity.find(params[:id])
    end

    def comorbidity_params
      params.require(:comorbidity).permit(:name, :male, :female, :freq_in_10s, :freq_in_20s, :freq_in_30s, :freq_in_40s, :freq_in_50s, :freq_in_60s, :freq_in_70s, :freq_in_80s, :freq_in_90s)
    end
end
