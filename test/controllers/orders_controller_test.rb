require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { categoria: @order.categoria, cidade: @order.cidade, data_pagamento: @order.data_pagamento, email_pedido: @order.email_pedido, endereco: @order.endereco, estado: @order.estado, estado_pedido: @order.estado_pedido, imagem_produto: @order.imagem_produto, nome_cliente: @order.nome_cliente, nome_produto: @order.nome_produto, referencia_pedido: @order.referencia_pedido, valor_base: @order.valor_base, valor_produto: @order.valor_produto, valor_total: @order.valor_total } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { categoria: @order.categoria, cidade: @order.cidade, data_pagamento: @order.data_pagamento, email_pedido: @order.email_pedido, endereco: @order.endereco, estado: @order.estado, estado_pedido: @order.estado_pedido, imagem_produto: @order.imagem_produto, nome_cliente: @order.nome_cliente, nome_produto: @order.nome_produto, referencia_pedido: @order.referencia_pedido, valor_base: @order.valor_base, valor_produto: @order.valor_produto, valor_total: @order.valor_total } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
