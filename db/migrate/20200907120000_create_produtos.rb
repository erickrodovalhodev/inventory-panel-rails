class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome, null: false
      t.string :sku, null: false, index: { unique: true }
      t.integer :quantidade, default: 0
      t.integer :estoque_minimo, default: 0
      t.timestamps
    end
  end
end
# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view
