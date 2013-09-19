class AnswerSheetsController < ApplicationController
  before_action :set_answer_sheet, only: [:show, :edit, :update, :destroy]

  # GET /answer_sheets
  # GET /answer_sheets.json
  def index
    @per_page = params[:per_page].present? ? params[:per_page].to_i : 20
    @survey = Survey.find params[:survey_id]
    @answer_sheets = @survey.answer_sheets.page([params[:page].to_i,1].max).per(@per_page)
  end

  # GET /answer_sheets/1
  # GET /answer_sheets/1.json
  def show
  end

  # GET /answer_sheets/new
  def new
    @survey = Survey.find params[:survey_id]
    @answer_sheet = @survey.answer_sheets.new
  end

  # GET /answer_sheets/1/edit
  def edit
  end

  # POST /answer_sheets
  # POST /answer_sheets.json
  def create
    @answer_sheet = AnswerSheet.new(answer_sheet_params)

    respond_to do |format|
      if @answer_sheet.save
        format.html { redirect_to @answer_sheet, notice: 'Answer sheet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_sheet }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_sheets/1
  # PATCH/PUT /answer_sheets/1.json
  def update
    respond_to do |format|
      if @answer_sheet.update(answer_sheet_params)
        format.html { redirect_to @answer_sheet, notice: 'Answer sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_sheets/1
  # DELETE /answer_sheets/1.json
  def destroy
    @answer_sheet.destroy
    respond_to do |format|
      format.html { redirect_to answer_sheets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_sheet
      @answer_sheet = AnswerSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_sheet_params
      params.require(:answer_sheet).permit(:survey_id)
    end
end
