class CodealongsController < ApplicationController
  before_action :authenticate_user!

  def show
    @codealong = Codealong.find(params[:id])
    @message = Message.new
  end

  def new
    @languages = Language.all
    @codealong = Codealong.new
  end

  def create
    @languages = Language.all
    @codealong = Codealong.create(params.require(:codealong).permit(:location, :date, :description, :language_id))

    if @codealong.save
      redirect_to language_path(@codealong.language)
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

  def attend_codealong
    @codealong = Codealong.find(params[:id])
    @codealong.save
    if @codealong.users == current_user
      redirect_to codealong_path(@codealong), notice: "You are already in this codealong"
    else
      @codealong.users << current_user
      redirect_to codealong_path(@codealong), notice: "You joined"
    end
  end

  private
  def codealong_params
    params.require(:codealong).permit(:location, :date, :description)
  end

end
