class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]

  def new
    @user = User.new
    render :new, layout: 'outer_admin'
  end

  def create
    @user = User.new({email: adapted_params[:email].downcase, password: adapted_params[:password]})

    respond_to do |format|
      if @user.save
        auto_login(@user, true)

        format.json { render :json, status: :ok }
        format.html { redirect_to dashboard_path }
      else
        format.json { render :json => {error: "invalid username-password combination."}, :status => :unprocessable_entity }
        format.html { render 'new', layout: 'outer_admin' }
      end
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find_by_id!(params[:id])

    respond_to do |format|
      if @user.update_attributes(adapted_params)
        format.html { flash.now['success'] = 'Updated settings.'; render :edit }
      else
        format.html { flash.now['danger'] = "Encountered an error in updating."; render :edit }
      end
    end
  end

private
  def adapted_params
    params.require(:user).permit(:email, :password)
  end
end
