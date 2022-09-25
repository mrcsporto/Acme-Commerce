require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Categoria", with: @order.categoria
    fill_in "Cidade", with: @order.cidade
    fill_in "Data pagamento", with: @order.data_pagamento
    fill_in "Email pedido", with: @order.email_pedido
    fill_in "Endereco", with: @order.endereco
    fill_in "Estado", with: @order.estado
    fill_in "Estado pedido", with: @order.estado_pedido
    fill_in "Imagem produto", with: @order.imagem_produto
    fill_in "Nome cliente", with: @order.nome_cliente
    fill_in "Nome produto", with: @order.nome_produto
    fill_in "Referencia pedido", with: @order.referencia_pedido
    fill_in "Valor base", with: @order.valor_base
    fill_in "Valor produto", with: @order.valor_produto
    fill_in "Valor total", with: @order.valor_total
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @order.categoria
    fill_in "Cidade", with: @order.cidade
    fill_in "Data pagamento", with: @order.data_pagamento
    fill_in "Email pedido", with: @order.email_pedido
    fill_in "Endereco", with: @order.endereco
    fill_in "Estado", with: @order.estado
    fill_in "Estado pedido", with: @order.estado_pedido
    fill_in "Imagem produto", with: @order.imagem_produto
    fill_in "Nome cliente", with: @order.nome_cliente
    fill_in "Nome produto", with: @order.nome_produto
    fill_in "Referencia pedido", with: @order.referencia_pedido
    fill_in "Valor base", with: @order.valor_base
    fill_in "Valor produto", with: @order.valor_produto
    fill_in "Valor total", with: @order.valor_total
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
