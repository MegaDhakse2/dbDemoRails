class FirController < ApplicationController
  def first
    @user = User.all
  end
  def showdb
    @newdb1 = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(fir_params)

    if @user.save
      flash[:success] = "Data successfully added"
      redirect_to root_path
    elsif @user.age == nil
      flash[:agenil] = "Age should be specified"
      redirect_to third_path
    elsif @user.name == nil
      flash[:name] = "Name should be specified"
      render :new
    elsif @user.age
      flash[:age] = "Please specify valid age"
      redirect_to third_path
    else
      flash[
        :error
      ] = "Something went wrong.. please fill all fields with correct info. "
      redirect_to third_path, status: :unprocessable_entity
    end
  end

  def check
    @user = User.find(68)
  end

  private

  def fir_params
    params.require(:user).permit(:name, :age)
  end
end
