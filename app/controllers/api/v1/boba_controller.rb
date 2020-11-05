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
        binding.pry
       @boba = @account.bobas.new(boba_params)
       if @account.update_balance(@boba) != "Balance too low!"
            @boba.save
            render json: @account
       else 
            render json: {error: "Balance too low"}
       end 
    end 

    def destroy
        @boba = Boba.find(params["id"])
        @account = Account.find(@boba.account_id)
        if @account.update_balance_on_delete(@boba)
            @boba.destroy
            render json: @account
        else
            render json: {error: "Can't do That"}
        end 
    end 

    private 

    def set_account
        @account = Account.find(params[:account_id])
    end 

    def boba_params
        params.require(:boba).permit(:name, :quantity, :account_id)
    end 

end
