class SnippetsController < ApplicationController
  def show
  end

  def new
    @snippet = @language.snippets.new
  end

  def create
    @snippet = @language.snippets.new(snippet_params)
    @snippet.user = current_user

    if @snippet.save
      redirect_to :back
    else
      render :new
    end
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def update
    if @snippet.update_attributes(params.require(:language).permit(:content, :user_id, :language_id))
      redirect_to language_path
    else
      render :edit
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    redirect_to :back
  end
end
