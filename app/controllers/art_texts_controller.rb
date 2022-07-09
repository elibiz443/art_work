class ArtTextsController < ApplicationController
  def edit
  end

  def new
  end

  def index
  end

  def create
    @art_text = ArtText.new(art_text_params)

    if @art_text.save
      @selected_text = SelectedText.find_by(art_id: @art_text.art_id)
      if @selected_text == nil
        SelectedText.create(art_text_id: @art_text.id, art_id: @art_text.art_id)
      end

      flash[:notice] = "Text Created"
      redirect_to "/"
    else
      flash[:alert] = @art_text.errors.full_messages.join(', ')
      redirect_to "/"
    end
  end

  def update
    @art_text = ArtText.find_by_id((SelectedText.find_by_art_id(1)).art_text_id)
    @art_text.update(art_text_params)
    flash[:success] =  'Art Text Updated Successfully!'
    redirect_to "/"
  end

  private

  def art_text_params
    params.require(:art_text).permit(:content, :italic, :bold, :underline, :strikethrough, :size, :color, :color_opacity, :background, :background_opacity, :alignment,
    :line_height, :letter_spacing, :font_style, :text_shadow, :text_shadow_color, :position, :rotation, :transformation, :curve, :art_id)
  end
end
