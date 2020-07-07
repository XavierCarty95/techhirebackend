class ApplicationController < ActionController::API
    SECRET_KEY = "soccer1995"
    def encode_token(payload)
        JWT.encode(payload, SECRET_KEY)
    end

    def auth_header
     request.headers['Authorization']
    end 

    def decoded_token 
        if auth_header
            token = auth_header
        
            begin 
                JWT.decode(token, SECRET_KEY , true , algorithm: 'HS256')
                
            rescue JWT::DecodeEror
                nil 
            end
        end
    end 

    def logged_in? 
        !!logged_in_user
    end 

    def authorized 
        render json: {message: 'Please log in'}

    end
end
