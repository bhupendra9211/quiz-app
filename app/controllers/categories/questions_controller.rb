# app/controllers/categories/questions_controller.rb
module Categories
  class QuestionsController < ApplicationController
    def show
      @category = Category.find(params[:category_id])
      @question = @category.questions.find(params[:id])
    end
  end
end
