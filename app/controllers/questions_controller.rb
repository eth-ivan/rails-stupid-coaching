class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = coach_answer(params[:question])
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return "Great!"
    elsif your_message.split("")[-1] == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
