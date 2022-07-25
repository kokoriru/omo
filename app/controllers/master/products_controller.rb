class Master::ProductsController < ActionController::Base
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to master_products_path
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to master_products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to master_products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.required(:product).permit(
      :manufacturer, :status, :name, :high_priority, :started_at, :ended_at, :release_at, :url, :note, category_ids: []
    )
  end
end
