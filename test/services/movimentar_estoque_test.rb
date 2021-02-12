require "test_helper"

class MovimentarEstoqueTest < ActiveSupport::TestCase
  test "refuses a movement that goes negative" do
    p = Produto.create!(nome: "Caneca", sku: "SKU-1", quantidade: 2)
    assert_raises(EstoqueInsuficiente) { MovimentarEstoque.new(p, :saida, 3).call }
    assert_equal 2, p.reload.quantidade
  end

  test "records the movement on success" do
    p = Produto.create!(nome: "Caneca", sku: "SKU-2", quantidade: 5)
    MovimentarEstoque.new(p, :saida, 2).call
    assert_equal 3, p.reload.quantidade
    assert_equal 1, p.movimentacoes.count
  end
end
# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view
