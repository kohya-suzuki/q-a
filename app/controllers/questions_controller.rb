class QuestionsController < ApplicationController
  helper_method :show

  def new
    @question = Question.new(question_params)
      # if @post.save
      #   flash[:notice] = "文章を作成しました。"
      #   redirect_to question_create
      # else
      #   flash[:alert] = "内容に誤りがあります。"
      #   render home/question_create
      # end
  end
  
    def new
      @question = Question.new
    end

    def show
      #  @question = Question.find(1)
      @questions = Question.all
      @questions.map { |question| question.content }
      
    end
    
    def create
      @question = Question.new(questions_params)
      if @questions.save
  
        flash[:notice] = "問題を作成しました！"
        redirect_to("home/userpage")
      else
        flash[:alert] = "作成できませんでした"
        redirect_to("home/userpage")
      end
    end

    def questions_params
      params.require(:questions).permit(:content, :id, :level, :answer_list)
    end

  # def question_params
  #   params.require(:question).permit(:id, :content)
  # end
  
  def userpage
    @questions = Question.new
    @questions = Question.all
    @question = Question.new
    @question = Question.all
  end

  def destroy
  end

  def questiontop
  end
  


end