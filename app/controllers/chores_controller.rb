class ChoresController < ApplicationController
    # Controller Code
  
    before_action :set_chore, only: [:show, :update, :destroy]
  
    # GET /children
    def index
      @chore = Chore.all
  
      render json: @chore
    end
  
    # GET /children/1
    def show
      render json: @chore
    end
  
    # POST /children
    def create
      @chore = Chore.new(chore_params)
  
      if @chore.save
        render json: @chore, status: :created, location: @chore
      else
        render json: @chore.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /children/1
    def update
      if @chore.update(chore_params)
        render json: @chore
      else
        render json: @chore.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /children/1
    def destroy
      @chore.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_chore
        @chore = Chore.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def chore_params
        params.permit(:child_id, :task_id, :due_on, :completed)
      end
  end
