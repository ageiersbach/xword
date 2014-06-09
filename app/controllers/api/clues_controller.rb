module Api
  class CluesController < ApplicationController
    respond_to :json
       
    def index
      respond_with Clue.all
    end

    def show
      respond_with do
        @clue = Clue.find(params[:id])
        render json: @clue
      end
    end

    def new
      respond_with do
        render json: Clue.new
      end
    end

    def edit
      @clue = Clue.find(params[:id])
    end

    def create
      @clue = Clue.new(params[:clue])
      
      if @clue.save
        respond_to do |format|
          format.json { render json: @clue }
        end
      end
    end

    def update
      @clue = Clue.find(params[:id])

      if @clue.update_attriutes(params[:clue])
        respond_to do |format|
         format.json { render json: @clue } 
        end
      end
    end

    def destroy
      @clue = Clue.find(params[:id])
      respond_with @clue.destroy
    end
  end
end
