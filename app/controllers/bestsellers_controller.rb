class BestsellersController < ApplicationController
  before_action :set_var

  def index
    @bestsellers = Order.all
  end
  
  def set_var
    @products_list = Order.group(:nome_produto).having('COUNT(*) >= 15').count.sort{|a,b| a[1] <=> b[1]}.reverse
  end
end
