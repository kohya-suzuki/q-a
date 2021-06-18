class QuestionsController < ApplicationController

  def create
    @post = Question.new(question_params)
      if @post.save
        flash[:notice] = "文章を作成しました。"
        redirect_to question_create
      else
        flash[:alert] = "内容に誤りがあります。"
        render home/question_create
      end
  end
  
  def question_params
    params.require(:question).permit(:id, :content)
  end
  
  def destroy
  end

  

end


