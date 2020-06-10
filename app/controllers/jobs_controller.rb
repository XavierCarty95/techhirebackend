class JobsController < ApplicationController

    def index 
     @job = Job.all 
     render json: @job
    end 

    def index 
        @job = Job.all 
        render json: @job
       end 

       private 
       def job_params
           params.permit(:name , :email , :website , :about)
       end
   
end
