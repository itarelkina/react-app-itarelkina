module API
    class LettersController < ApplicationController
      def index
        letters = ['Letter 1', 'Letter 2']
  
        render json: { letters: letters }
      end
    end
  end