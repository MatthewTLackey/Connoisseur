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

  def format_time(time)
    if time > 720
      hours = time / 60 - 12
      return "#{hours} pm"
    elsif time == 720
      hours = time/60
      return "#{hours} pm"

    else
      hours = time / 60
      return "#{hours} am"
    end
  end

  helper_method :format_time
  
end
