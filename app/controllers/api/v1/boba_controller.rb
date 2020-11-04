class Api::V1::BobaController < ApplicationController

    before_action :set_account

    def index
        @bobas = @account.bobas
        render json: @bobas 
    end 

    def show
        @boba = Boba.find(params[:id]) 
        render json: @baba       
    end 

    def create
       @boba = @account.bobas.new(boba_params)
       if @account.update_balance(@boba) != "Balance too low!"
            @boba.save
            render json: @account
       else 
            render json: {error: "Balance too low"}
       end 
    end 

    private 

    def set_account
        @account = Account.find(params[:account_id])
    end 

    def boba_params
        params.require(:boba).permit(:name, :amount, :account_id, :description)
    end 

end
