class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
  end

  def submit_answer
    @question = Question.find(params[:id])
    selected_option = params[:option].to_i
    @correct = selected_option == @question.correct_option
    render json: { correct: @correct }
  end
end
