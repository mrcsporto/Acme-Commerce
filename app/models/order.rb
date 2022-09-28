class Order < ApplicationRecord
  validates :referencia_pedido, :email_pedido, :data_pagamento, :nome_cliente, :estado_pedido,
            :valor_total, :valor_produto, :imagem_produto, :nome_produto, :categoria, :valor_base,
            :cidade, :estado, :endereco, presence: { message: 'não pode estar em branco' }
  validates :email_pedido, format: { with: URI::MailTo::EMAIL_REGEXP, message: 'não é um formato válido de e-mail' }
  validates :valor_total, :valor_produto, :valor_base, numericality: {greater_than: 0 }
  validates :nome_cliente, :estado_pedido, :nome_produto, :categoria, :cidade, :estado,  
            length: { minimum: 2, message: "deve conter 3 ou mais letras" }
  validates :nome_cliente, :estado_pedido, :cidade, :estado, :categoria,
            format: { with: /\A[\p{Latin}\p{Punct}\p{Space}0-9]*\z/, message: "só é permitido letras" }

  def self.import(file)
    CSV.foreach(file.path, headers: true, :header_converters => lambda { 
      |h| h.try(:downcase).try(:gsub,' ', '_') }) do |row|
       Order.create! row.to_hash
    end
  end

  def self.search(categoria)
    if categoria
      Order.where(categoria: "#{categoria}")
    else
      Order.all
    end
  end

  def self.filter_category
    Order.distinct.pluck(:categoria).sort()
  end

  def best_sellers_list
     @products_list.flatten
  end

  


end