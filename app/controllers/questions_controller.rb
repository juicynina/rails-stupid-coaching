class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:answer] + '- You'
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!' + '- Your coach'
    else
      @answer = "I don't care, get dressed and go to work!" + '- Your coach'
    end
  end
end
