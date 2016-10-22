class EntreprisesController < ApplicationController

  def index
    @entreprises = Entreprise.all.order('created_at DESC')
  end

  def new
    @entreprise = Entreprise.new
  end

  def create
    @entreprise = Entreprise.new(entreprise_params)

    if @entreprise.save
      redirect_to @entreprise
    else
      render 'new'
    end
  end

  def show
    @entreprise = Entreprise.find(params[:id])
  end

  def edit
    @entreprise = Entreprise.find(params[:id])
  end

  def update
    @entreprise = Entreprise.find(params[:id])

    if @entreprise.update(params[:entreprise].permit(:name, :siret, :numtva, :adresse, :tel))
      redirect_to @entreprise
    else
      render 'edit'
    end
  end

  def destroy
    @entreprise = Entreprise.find(params[:id])
    @entreprise.destroy

    redirect_to root_path
  end

  private
    def entreprise_params
      params.require(:entreprise).permit(:name, :siret, :numtva, :adresse, :tel)
    end

end

