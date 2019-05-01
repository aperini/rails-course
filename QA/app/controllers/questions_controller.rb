class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])

    @answers = @question.answers.order(created_at: :desc).all
  end

  def create
    Question.create(question_params)

    redirect_to root_path
  end

  private

  # implementation of secure parameters
  # don't save everything received (don't trust the hash structure received)
  def question_params
    params.require(:question).permit(:email, :body)
  end
end
