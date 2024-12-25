# class QuestionsController < ApplicationController
#   def show
#     @question = Question.find(params[:id])
#   end

#   # def submit_answer
#   #   @question = Question.find(params[:id])
#   #   selected_option = params[:option].to_i
#   #   @correct = selected_option == @question.correct_option
#   #   render json: { correct: @correct }
#   # end
#   def submit_answer
#     @question = Question.find(params[:id])
#     selected_option = params[:option].to_i
#     @correct = selected_option == @question.correct_option
#     @correct_answer = @question.options[@question.correct_option - 1].content
#   end
# end
class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
  end

  def submit_answer
    @question = Question.find(params[:id])
    selected_option = params[:option].to_i
  
    # Check if selected option matches the correct option
    @correct = selected_option == @question.correct_option
    @correct_answer = @question.options[@question.correct_option - 1]&.content
  
    # Render the show view with the result
    render :show
  end
end

