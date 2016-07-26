class CodealongsController < ApplicationController

  def index
    @codealongs = Codealong.all
  end

  def show
    @codealong = Codealong.find(params[:id])
    @language = @codealong.language
  end

  def new
    @codealong = Codealong.new
  end

  def create
    @codealong = Codealong.create(params.require(:codealong).permit(:location, :date, :description))

    if @codealong.save
      redirect_to codealongs_path
    else
      render :new
    end
  end

  def edit
    @codealong = Codealong.find(params[:id])
  end

  def update
    @codealong = Codealong.find(params[:id])

    if @codealong.update_attributes(params.require(:codealong).permit(:location, :date, :description))
      redirect_to codealong_path
    else
      render :edit
    end
  end

  def destroy
    @codealong = Codealong.find(params[:id])
    @codealong.destroy
    redirect_to codealongs_path
  end

  private
  def codealong_params
    params.require(:codealong).permit(:location, :date, :description)
  end

end
