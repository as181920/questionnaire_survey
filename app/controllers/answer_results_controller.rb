class AnswerResultsController < ApplicationController
  before_action :set_answer_result, only: [:show, :edit, :update, :destroy]

  # GET /answer_results
  # GET /answer_results.json
  def index
    @answer_results = AnswerResult.all
  end

  # GET /answer_results/1
  # GET /answer_results/1.json
  def show
  end

  # GET /answer_results/new
  def new
    @answer_result = AnswerResult.new
  end

  # GET /answer_results/1/edit
  def edit
  end

  # POST /answer_results
  # POST /answer_results.json
  def create
    @answer_result = AnswerResult.new(answer_result_params)

    respond_to do |format|
      if @answer_result.save
        format.html { redirect_to @answer_result, notice: 'Answer result was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_result }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_results/1
  # PATCH/PUT /answer_results/1.json
  def update
    respond_to do |format|
      if @answer_result.update(answer_result_params)
        format.html { redirect_to @answer_result, notice: 'Answer result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_results/1
  # DELETE /answer_results/1.json
  def destroy
    @answer_result.destroy
    respond_to do |format|
      format.html { redirect_to answer_results_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_result
      @answer_result = AnswerResult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_result_params
      params.require(:answer_result).permit(:survey_id, :question_id, :content)
    end
end
