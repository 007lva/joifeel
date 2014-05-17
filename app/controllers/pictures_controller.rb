class PicturesController < ApplicationController

  def create
    @picture = Picture.new(picture_params)
    respond_to do |format|
      format.json
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:picture)
  end

end
