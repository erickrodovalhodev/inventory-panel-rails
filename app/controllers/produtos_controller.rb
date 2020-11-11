class ProdutosController < ApplicationController
  before_action :authenticate_user!

  def index
    @produtos = Produto.order(:nome).page(params[:page])
  end

  def create
    @produto = Produto.new(produto_params)
    redirect_to produtos_path if @produto.save
  end

  private

  def produto_params
    params.require(:produto).permit(:nome, :sku, :estoque_minimo)
  end
end
# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view
