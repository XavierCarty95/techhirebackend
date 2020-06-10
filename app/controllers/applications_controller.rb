class ApplicationsController < ApplicationController

    def index 
        @application = Application.all 
        render json: @application
    end 

    def create 
        @application = Application.create!(application_params)
        render json: @application
    end 

    private 
       def application_params
           params.permit(:job_id, :user_id , :name)
       end
end
