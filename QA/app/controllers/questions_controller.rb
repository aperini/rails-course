class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])

    @answers = @question.answers.order(created_at: :desc).all
  end

  def create
    Question.create(question_params)

    # keeping email in session to pre-fill it in forms
    session[:current_user_email] = question_params[:email]

    redirect_to root_path
  end

  private

  # implementation of secure parameters
  # don't save everything received (don't trust the hash structure received)
  def question_params
    params.require(:question).permit(:email, :body)
  end
end
