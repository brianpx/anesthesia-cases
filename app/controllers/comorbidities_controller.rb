class ComorbiditiesController < ApplicationController
  before_action :set_comorbidity,         :only => [:show, :edit, :update, :destroy]
  before_action :set_submit_button_text,  :only => [:new, :create, :edit, :update]

  def index
    @comorbidities = Comorbidity.order 'name'
  end

  def show
  end

  def new
    @comorbidity = ComorbidityBuilder.new.comorbidity
  end

  def edit
  end

  def create
    builder       = ComorbidityBuilder.new comorbidity_params
    @comorbidity  = builder.comorbidity

    respond_to do |format|
      if builder.save
        format.html { redirect_to comorbidities_path, notice: 'The comorbidity was added.' }
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
        format.html { redirect_to comorbidities_path, notice: 'Comorbidity was successfully updated.' }
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

  def set_submit_button_text
    if @comorbidity && @comorbidity.persisted?
      @submit_button_text = 'Update Comorbidity'
    else
      @submit_button_text = 'Add Comorbidity'
    end
  end

  def comorbidity_params
    params.require(:comorbidity).permit(:name, :beginning_age, :slope, :exponent, :vertical_offset, :male_risk, :female_risk, :smoking, :diabetes, :hypertension, :hyperlipidemia)
  end
end
