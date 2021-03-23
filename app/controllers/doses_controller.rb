class DosesController < ApplicationController
  #before_action :set_list, only: [:new, :create]

  def new
    @list = List.find(params[:list_id])
    @dose = Dose.new
  end

  def create
    @list = List.find(params[:list_id])
    @dose = Dose.new(dose_params)
    @dose.list = @list

    if @dose.save!
      redirect_to list_path(@list)
    else
      render :new
    end
  end


  def destroy
    @dose = Dose.find(params[:id])

    if @dose.destroy
      redirect_to list_path(@dose.list), notice: 'You successfully deleted the ingredient!'
    else
      redirect_to list_path(@dose.list), alert: 'Could not delete the ingredient :('
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end

end
