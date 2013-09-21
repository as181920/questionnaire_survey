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
    @survey = Survey.find params[:survey_id]
    @answer_sheet = @survey.answer_sheets.find params[:id]
  end

  def done
  end

  # GET /answer_sheets/new
  def new
    @survey = Survey.find params[:survey_id]
    @answer_sheet = @survey.answer_sheets.new
    @survey.questions.each do |question|
      @answer_sheet.answer_results.build(question_id: question.id, content: {})
    end
  end

  # GET /answer_sheets/1/edit
  def edit
  end

  # POST /answer_sheets
  # POST /answer_sheets.json
  def create
    #@answer_sheet = @survey.answer_sheets.new(answer_sheet_params)
    #ERROR: 此处对于有文字输入的选线，当选项取消后，后端数据仍为选中。
    @survey = Survey.find params[:survey_id]
    @answer_sheet = @survey.answer_sheets.build
    answer_sheet_params[:answer_results].each do |question_id, answer_data|
      answer_result = @answer_sheet.answer_results.new question_id: question_id

      answer_data[:result].each do |answer_id, result_data|
        answer_result.content = answer_result.content.to_h.merge(answer_id => result_data[:comment])
      end
    end

    respond_to do |format|
      if @answer_sheet.save
        #format.html { redirect_to [@survey,@answer_sheet], notice: 'Answer sheet was successfully created.' }
        format.html { redirect_to done_survey_answer_sheet_path(@survey,@answer_sheet), notice: 'Answer sheet was successfully created.' }
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
      #params.require(:answer_sheet).permit(:survey_id)
      params.require(:answer_sheet).permit(:survey_id, answer_results: [:id, :question_id, result: [:checked, :comment]])
    end
end
