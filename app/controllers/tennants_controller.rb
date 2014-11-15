class TennantsController < ApplicationController
  before_action :set_tennant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tennants = Tennant.all
    respond_with(@tennants)
  end

  def show
    respond_with(@tennant)
  end

  def new
    @tennant = Tennant.new
    respond_with(@tennant)
  end

  def edit
  end

  def create
    @tennant = Tennant.new(tennant_params)
    @tennant.save
    respond_with(@tennant)
  end

  def update
    @tennant.update(tennant_params)
    respond_with(@tennant)
  end

  def destroy
    @tennant.destroy
    respond_with(@tennant)
  end

  private
    def set_tennant
      @tennant = Tennant.find(params[:id])
    end

    def tennant_params
      params.require(:tennant).permit(:property_id, :name, :username, :encrypted_password, :email, :phone_number, :address, :city, :country, :is_active)
    end
end
