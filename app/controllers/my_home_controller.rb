class MyHomeController < ApplicationController
  layout "MyLayout"
  def index
    @title = "home"
  end
end
