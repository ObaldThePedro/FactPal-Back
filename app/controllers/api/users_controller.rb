class Api::UsersController < ApplicationController
  skip_before_action :authorize
  
    def index
     @users = User.all
     render json: {users: @users}
    end

    def create
        user = User.create( user_params )
        byebug
        if user.valid?
            render json: { user: UserSerializer.new(user), token: issue_token(user_id: user.id) }, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :not_accepted
        end
    end

    def index
      @users = User.all
      render json: {users: @users}
      end

    private 

    def user_params
        params.require(:user).permit(:email, :password)
    end
<<<<<<< HEAD

    
    
end
=======
  end
>>>>>>> 7820d2a6ee6b5ff0a017e6e0e6eb770f096454a5
