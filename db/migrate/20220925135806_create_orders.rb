class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :referencia_pedido
      t.string :email_pedido
      t.date :data_pagamento
      t.string :nome_cliente
      t.string :estado_pedido
      t.float :valor_total
      t.float :valor_produto
      t.string :imagem_produto
      t.string :nome_produto
      t.string :categoria
      t.float :valor_base
      t.string :cidade
      t.string :estado
      t.string :endereco

      t.timestamps
    end
  end
end
