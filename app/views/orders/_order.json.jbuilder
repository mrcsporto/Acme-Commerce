json.extract! order, :id, :referencia_pedido, :email_pedido, :data_pagamento, :nome_cliente, :estado_pedido, :valor_total, :valor_produto, :imagem_produto, :nome_produto, :categoria, :valor_base, :cidade, :estado, :endereco, :created_at, :updated_at
json.url order_url(order, format: :json)
