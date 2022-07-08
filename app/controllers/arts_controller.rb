class ArtsController < ApplicationController
  def index
    @arts = Art.all
    @art = Art.find(1) 
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
