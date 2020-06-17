class UsersController < ApplicationController
    before_action :authorized, only: [:stay_logged_in]

    def index 
      @user = User.all 
      render json: @user
    end

    def create 
     @user = User.create(user_params)
     if @user.valid?
        wristband = encode_token({user_id: @user.id})
        render json: { 
            user: UserSerializer.new(@user),
            token: wristband
        }, status: :created
     else 
        render json: {error: "failed to create user"}, status: :not_acceptable
     end 
    
end

    def login 
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
        wristband = encode_token({user_id: @user.id})
        render json: {
            user: UserSerializer.new(@user),
            token: wristband
        }
    else 
        render json: {message: "Incorrect email or password"}
    
    end 
end 

  def stay_logged_in

  wristband = encode_token({user_id: @user.id})
  render json: {
      user: UserSerializer.new(@user),
      token: wristband
  }
 end

 def update
    @user = User.find(params[:id])
    @user.update(first_name: params[:first_name] , last_name: params[:last_name] , title: params[:title] , linkedin: params[:linkedin] , image: params[:image] , portfolio: params[:portfolio] ,github: params[:github] , resume: params[:resume] , skills: params[:skills]  )
    @user.save
    render json: @user
end


 def destroy 
    @user = User.find(params[:id])
    @user.destroy!
    render json: @user
 end 

    private 
    def user_params
        params.permit(:first_name , :last_name , :email , :title, :linkedin , :image, :portfolio, :github , :resume , :skills , :phone_number , :password)

    end 

  
end
