class Produto < ApplicationRecord
  has_many :movimentacoes, dependent: :destroy
  validates :nome, :sku, presence: true
  validates :sku, uniqueness: true
  scope :below_minimum, -> { where("quantidade < estoque_minimo") }
end