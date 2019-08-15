class HomeController < ApplicationController
attr_accessor:test
  def top
    @test = 222
  end

  def about
    @test = 222
  end

end
