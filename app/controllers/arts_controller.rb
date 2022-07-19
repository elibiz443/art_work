class ArtsController < ApplicationController
  def index
    @arts = Art.all
    @art = Art.find_by_id(1) 
    @art_texts = ArtText.where(art_id: 1)
    @art_text = ArtText.find_by_id(1)
    @selected_text = SelectedText.find_by_art_id(1) 
    @text_background = ArtText.find_by_id((SelectedText.find_by_art_id(1)).art_text_id).background

    if @art_texts != []
      @nav_art_text = ArtText.find_by_id((SelectedText.find_by_art_id(1)).art_text_id)
    end
  end

  def create
    @art = Art.new(art_params)

    if @art.save
      flash[:notice] = "Art Successfully Created"
      redirect_to "/"
    else
      flash[:alert] = @art.errors.full_messages.join(', ')
      redirect_to "/"
    end
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(1)
    @art.update(art_params)
    flash[:success] =  'Art Updated Successfully!'
    redirect_to "/"
  end

  def destroy
    @art = Art.find(params[:id])
    @art.destroy
    flash[:success] =  'Art Deleted!'
    redirect_to '/'
  end

  private

  def art_params
    params.require(:art).permit(:name, :width, :height, :background_color, :radial_gradient, :radial_gradient_color, :background_color_opacity)
  end
end
