class SelectedTextsController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def update
    @selected_text = SelectedText.find_by_art_id(1)
    @selected_text.update(selected_texts_params)
    flash[:success] =  'Text Selected!'
    redirect_to "/"
  end

  private

  def selected_texts_params
    params.require(:selected_text).permit(:art_text_id, :art_id)
  end
end
