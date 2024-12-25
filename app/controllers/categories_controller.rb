class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @questions = @category.questions.includes(:options)
  end

  def submit_answers
    @category = Category.find(params[:id])
    @questions = @category.questions

    # Retrieve user's answers from params
    user_answers = params[:answers]

    # Initialize result counters
    @correct_count = 0
    @wrong_count = 0
    @results = []

    # Evaluate answers
    @questions.each do |question|
      selected_option = user_answers[question.id.to_s].to_i
      correct = selected_option == question.correct_option
      @correct_count += 1 if correct
      @wrong_count += 1 unless correct
      @results << { question: question, selected_option: selected_option, correct: correct }
    end

    # Render the results view (no redirection needed)
    render :submit_answers
  end
end
