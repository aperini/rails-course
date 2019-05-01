# document this
class AnswersController < ApplicationController
  def create
    question = Question.find(params[:answer][:question_id])
    # Answer.create(answer_params)
    question.answers.create(answer_params)
    # rails automatically finds the view associated to show a question
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :email, :body)
  end
end
