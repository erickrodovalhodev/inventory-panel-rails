class Produto < ApplicationRecord
  has_many :movimentacoes, dependent: :destroy
  validates :nome, :sku, presence: true
  validates :sku, uniqueness: true
  scope :below_minimum, -> { where("quantidade < estoque_minimo") }
end
# rationale: keep the query in the scope, not the view

# rationale: keep the query in the scope, not the view
