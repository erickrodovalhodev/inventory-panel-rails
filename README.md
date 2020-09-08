# inventory-panel-rails

Internal inventory control. Stock in, stock out, low stock alerts and an audit
trail. Built for a client warehouse in 2020-2021.

## run

    bundle install
    rails db:setup
    rails s

## structure

- `app/services/movimentar_estoque.rb` — the only place quantity changes
- `movimentacoes` table — audit trail, one row per movement
- `Produto.below_minimum` — scope for the alert report

## notes

Stock changes go through the service, never through `update` in a controller.
The service takes a row lock and refuses a negative balance.
