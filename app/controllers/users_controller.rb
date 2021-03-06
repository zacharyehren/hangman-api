class UsersController < ApplicationController
  def authenticate
    user = User.find_by_username(params[:username])
    puts 'user:'
    puts user
    if user.nil?
      puts 'User is nil'
      render json: "User not found with #{params[:username]}", status: :not_found
    else
      if user.authenticate(params[:password])
        render json: user, status: :ok
      else
        puts "Bad password"
        render json: "Password was incorrect!", status: :not_found
      end
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
   end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:users).permit(:username, :password, :id, :wins, :losses, :average, :total_games)
  end
end
