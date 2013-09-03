class ProceduresController < ApplicationController
  before_action :set_procedure,           :only => [:show, :edit, :update, :destroy]
  before_action :set_submit_button_text,  :only => [:new, :create, :edit, :update]

  def index
    @procedures = Procedure.order 'name'
  end

  def new
    @procedure          = ProcedureBuilder.new.procedure
    @submit_button_text = 'Add Procedure'
  end

  def edit
  end

  def create
    builder     = ProcedureBuilder.new procedure_params
    @procedure  = builder.procedure

    respond_to do |format|
      if builder.save
        format.html { redirect_to procedures_path, notice: 'The procedure was added.' }
        format.json { render action: 'show', status: :created, location: @procedure }
      else
        format.html { render action: 'new' }
        format.json { render json: @procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @procedure.update(procedure_params)
        format.html { redirect_to procedures_path, notice: 'Procedure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @procedure.destroy
    respond_to do |format|
      format.html { redirect_to procedures_url }
      format.json { head :no_content }
    end
  end

  private

  def set_procedure
    @procedure = Procedure.find(params[:id])
  end

  def set_submit_button_text
    if @procedure && @procedure.persisted?
      @submit_button_text = 'Update Procedure'
    else
      @submit_button_text = 'Add Procedure'
    end
  end

  def procedure_params
    params.require(:procedure).permit(:name, :beginning_age, :ending_age, :slope, :exponent, :vertical_offset, :male_risk, :female_risk, :pregnancy, :obesity)
  end
end
