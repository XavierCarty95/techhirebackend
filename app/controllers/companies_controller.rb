class CompaniesController < ApplicationController

    def index 
        @company = Company.all 
        render json: @company
       end 

    def create 
    
        @company = Company.create!(company_params)
        render json: @company
  
    

    end


    private 
    def company_params
        params.permit(:name , :email , :website , :about)
    end


end
