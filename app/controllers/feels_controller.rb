class FeelsController < ApplicationController
  def index
    @feel = Feel.new
    @picture = Picture.new
    @feels = Feel.all.order(created_at: :desc)
  end

  def create
    @feel = current_user.feels.new(feel_params)
    @feel.save
    # respond_to do |format|
    #   if @feel.save
    #     format.html { redirect_to feels_path, notice: 'Feel created.' }
    #   end
    # end
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
