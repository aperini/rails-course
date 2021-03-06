# document this
class AnswersController < ApplicationController
  def create
    question = Question.find(params[:answer][:question_id])

    # Answer.create(answer_params)
    answer = question.answers.create(answer_params)

    # notify the owner of the question
    mail = MainMailer.notify_question_author(answer)
    # uses Active job in the backgroud to deliver the email with an asynchronous
    # processing library (in our case, the Sucker Punch)
    mail.deliver_later

    # keeping email in session to pre-fill it in forms
    session[:current_user_email] = answer_params[:email]

    # rails automatically finds the view associated to show a question
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :email, :body)
  end
end
