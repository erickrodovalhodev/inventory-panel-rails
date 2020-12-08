class MovimentarEstoque
  def initialize(produto, tipo, qtd)
    @produto, @tipo, @qtd = produto, tipo, qtd
  end

  def call
    delta = @tipo == :entrada ? @qtd : -@qtd
    @produto.with_lock do
      raise EstoqueInsuficiente if @produto.quantidade + delta < 0
      @produto.update!(quantidade: @produto.quantidade + delta)
      @produto.movimentacoes.create!(tipo: @tipo, quantidade: @qtd)
    end
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
