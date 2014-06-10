module Api
  class WordsController < ApplicationController
    respond_to :json
    
    def index
      respond_with Word.all
    end

    def show
      respond_with Word.find(params[:id])
    end

    def new
      respond_with Word.new
    end

    def edit
      respond_with Word.find(params[:id])
    end

    def create
      @word = Word.new(params[:word])

      if @word.save
        respond_to do |format|
          format.json { render json: @word } 
        end
      end
    end

    def update
      @word = Word.find(params[:id])

      if @word.update_attributes(params[:word])
        respond_to do |format|
          format.json { render json: @word }
        end
      end
    end

    def destroy
      @word = Word.find(params[:id])
      respond_with @word.destroy
    end
  end
end
