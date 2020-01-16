class ShopsController < ApplicationController

  before_action :load_categories, only: [:new, :edit]

  def index

    if  params[:filter].present?

      @shops = Shop.contains_name(params[:filter]).or(Shop.contains_category_name(params[:filter])).all
    else

      @shops = Shop.all
    end
  end

  def new
    @shop = Shop.new
  end

  def edit

    @shop = Shop.find(params[:id])
  end

  def show

    @shop = Shop.find(params[:id])
  end

  def update

    @shop = Shop.find(params[:id])
    @shop.update(permit_params)

    redirect_to shops_path(@shop)
  end

  def create

    @shop = Shop.create(permit_params)

    if @shop.valid?

      redirect_to shops_path
    else

      flash[:errors] = @shop.errors.full_messages
      redirect_to new_shop_path
    end
  end

  def destroy

    @shop = Shop.find(params[:id])
    @shop.destroy
    flash[:success] = 'Shop deleted'
    redirect_to shops_path
  end

  private

  def permit_params

    params.require(:shop).permit(:name, :category_id, :address)
  end

  def load_categories

    @categories = Category.all
  end
end