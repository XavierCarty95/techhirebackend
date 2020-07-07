class ApplicationController < ActionController::API
    
    def encode_token(payload)
        JWT.encode(payload, "soccer1995")
    end

    def auth_header
     request.headers['Authorization']
    end 

    def decoded_token 
        if auth_header
            token = auth_header
        
            begin 
                JWT.decode(token, "soccer1995" , true , algorithm: 'HS256')
                
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
