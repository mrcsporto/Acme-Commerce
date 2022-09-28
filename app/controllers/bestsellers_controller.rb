class BestsellersController < ApplicationController
  before_action :set_var
  def index
    @bestsellers = Order.all
  end
  
  private
  def set_var
    @products_list = Order.group(:nome_produto).count.sort{|a,b| a[1] <=> b[1]}.reverse
  end
end
