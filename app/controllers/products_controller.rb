require 'open-uri'

class ProductsController < ApplicationController
  @@tempval = []
  
  def index
    counter = 1
    @products = []
    until counter == 32 do 

      products_json = open('http://lcboapi.com/products?page=' + "#{counter.to_s}").read
      JSON.parse(products_json)['result'].each do |product|
        @products << product
      end
      counter += 1
    end
    @@tempval = @products
    @products

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
    #@product = JSON.parse(products_json)['result']
    @product = @@tempval


  end

  def destroy

  end




end
