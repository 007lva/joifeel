class FeelsController < ApplicationController
  def index
    @feels = Feel.all
    @feel = Feel.new
    @picture = Picture.new
  end

  def create
    @feel = Feel.new(feel_params) 
    @feel.save
  end

  def new
  end

  def show
  end

  def destroy
  end

  private

  def feel_params
    params.require(:feel).permit(:description, :image_url, :tag_list)
  end
end
