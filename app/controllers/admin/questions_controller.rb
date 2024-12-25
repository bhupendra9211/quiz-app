class Admin::QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin

  def new
    @category = Category.find(params[:category_id])
    @question = @category.questions.new
    4.times { @question.options.build } # Initialize 4 options
  end

  def create
    @category = Category.find(params[:category_id])
    @question = @category.questions.new(question_params)
    if @question.save
      redirect_to admin_categories_path, notice: 'Question created successfully.'
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:content, :correct_option, options_attributes: [:content])
  end

  def ensure_admin
    redirect_to root_path, alert: 'Not authorized!' unless current_user&.admin?
  end
end
