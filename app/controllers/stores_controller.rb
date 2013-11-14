require 'open-uri'

class StoresController < ApplicationController

  def index
    stores_json = open('http://lcboapi.com/stores').read
    @stores = JSON.parse(stores_json)

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
    stores_json = open('http://lcboapi.com/stores').read
    @store = JSON.parse(stores_json)['result']

  end

  def destroy

  end
  
end
