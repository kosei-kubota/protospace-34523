class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
  end

  def create
    User.create(user_params)
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end

  def set_user
    user = User.find(params[:id])
    @name = user.name
    @profile = user.profile
    @occupation = user.occupation
    @position = user.position
    @prototypes = user.prototypes
  end
end
