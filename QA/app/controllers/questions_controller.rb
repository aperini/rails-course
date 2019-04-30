class QuestionsController < ApplicationController
  def create
    Question.create(question_params)

    redirect_to root_path
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  # implementation of secure parameters
  # don't save everything received (don't trust the hash structure received)
  def question_params
    params.require(:question).permit(:email, :body)
  end
end
