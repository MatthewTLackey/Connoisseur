require 'open-uri'

class ProductsController < ApplicationController
  
  def index
    products_json = open('http://lcboapi.com/products').read
    @products = JSON.parse(products_json)

  end

  def new

  end

  def create

  end

  def find

  end

  def update

  end

  def show
    products_json = open('http://lcboapi.com/products').read
    @product = JSON.parse(products_json)['result']


  end

  def destroy

  end

  


end
