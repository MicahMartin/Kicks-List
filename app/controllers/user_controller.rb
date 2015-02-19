class UserController < ApplicationController
  before_filter :authenticate_user!

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(current_user.id)
    respond_to do |format|

      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile Was Successfully Updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end

    end
  end




  def user_params
    params.require(:user).permit(:image, :user_id)
  end

end
