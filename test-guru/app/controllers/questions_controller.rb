class QuestionsController < ApplicationController
  before_action :find_test
  before_action :find_question, only: [:show, :destroy, :edit, :update]

  def index
    @questions = @test.questions
    render plain: @questions.map(&:body).join("\n")
  end

  def show
  end

  def new
    @question = @test.questions.new
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to @test, notice: 'Question was successfully created.'
    else
      render plain: "Error creating question"
    end
  end

  def destroy
    @question.destroy
    redirect_to test_path(@question.test)
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to test_path(@question.test)
    else
      render :edit
    end
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = @test.questions.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render plain: "Question not found", status: :not_found
  end

  def question_params
    params.require(:question).permit(:body)
  end
end
