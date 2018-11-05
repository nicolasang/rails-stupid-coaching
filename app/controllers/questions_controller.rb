class QuestionsController < ApplicationController
  # Controller will need to read the question from params and compute an instance
  # variable @answer for the view to display
  ANSWERS = ['Great!','Silly question, get dressed and go to work!',"I don't care, get dressed and go to work!"]

  def answer # this method is automatically linked to the view in questions/answer.html.erb
    @question = params[:answer_input]

    if @question == "I am going to work"
      @answer = ANSWERS[0]
    elsif @question.include?('?')
      @answer = ANSWERS[1]
    else
      @answer = ANSWERS[2]
    end
  end
end
