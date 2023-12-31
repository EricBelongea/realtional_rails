class BouldersController < ApplicationController
  def index
    @boulders = Boulder.all.where(tick: true)
  end

  def show
    @boulder = Boulder.find(params[:id])
  end
  
  def edit
    @boulder = Boulder.find(params[:id])
  end

  def update
    boulder = Boulder.find(params[:id])
    boulder.update({
      name: params[:boulder][:name],
      v_grade: params[:boulder][:v_grade],
      tick: params[:boulder][:tick]
    })

    boulder.save

    redirect_to "/boulders/#{boulder.id}"
  end

  def destroy
    Boulder.find(params[:id]).destroy

    redirect_to "/boulders"
  end
end