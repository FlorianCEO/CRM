class ProspectsController < ApplicationController

  def index
    @prospects = Prospect.all.limit(15).order('created_at DESC')
  end

  def new
    @prospect = Prospect.new
  end

  def create
    entreprise_id = params[:entreprise_id].present? ?  params[:entreprise_id] : params[:prospect][:entreprise_id]
    @entreprise = Entreprise.find(entreprise_id)
    @prospect = @entreprise.prospects.create(params[:prospect].permit(:full_name, :email))

    redirect_to entreprise_path(@entreprise)
  end

  def destroy
    @prospect = Prospect.find(params[:id])
    @prospect.destroy

    redirect_to entreprises_path(@entreprise)
  end
end












