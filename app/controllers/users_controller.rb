class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

    def index
      @users = User.all
    end

    def show
    end

    def create
      @user = User.new(user_params)
      @user.user_id = current_user.id
        if @user.save
          redirect_to @user, notice: 'Account was successfully created.'
        else
          render :new
        end
    end
  end

private
  def set_user
    @user = User.find(params[:id])
  end
end
