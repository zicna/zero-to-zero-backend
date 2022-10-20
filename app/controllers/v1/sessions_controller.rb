class V1::SessionsController < ApplicationController
    def create
        @user = User.where(email: params[:user][:email]).first
        
        #! user&. same as user && user.valid_password?
        if @user&.valid_password?(params[:user][:password])
            jwt = WebToken.encode(@user)
            message = "successfully logged in"
            questions = Question.all
            languages = Language.all
            levels = Level.all
            render :create, locals: {token: jwt, message: message, questions: questions, languages: languages, levels: levels}, status: :created
        else
            render json: { error: 'invalid_credentials' }, status: :unauthorized
        end
           
    end

    def destroy
        if current_user
            render json: {message: 'successful sign out'}, status: :ok
        else
            render json: { error: 'invalid_credentials' }, status: :unauthorized
        end
    end
end 