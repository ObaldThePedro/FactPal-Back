class Api::FactsController < ApplicationController

    def index
        @facts = Fact.all
        render json: {facts: @facts}
    end

    def create
        @fact = Fact.create(fact_params)
        if @fact.valid?
            render json: { fact: FactSerializer.new(@fact) }, status: :created
        else
            render json: { error: 'failed to create fact' }, status: :not_acceptable
        end
    end

    def destroy
        @fact = Fact.find(params[:id])
        @fact.destroy
        render json: { message: "The fact has been deleted." }
    end

    private
    def fact_params
        params.require(:fact).permit(:text, :user_id)
    end
end