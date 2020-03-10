require Const::MOD_PATH + 'indexLib' 
class IndexController < ApplicationController
  
  def initialize
    #
  end

  def index
    require "date"
    cls_index = IndexLib.new
    
    @date_list = []
    @date_list.push(Date.today)
    for i in 1..6 do
      @date_list.push(Date.today + i)
    end
    
    @msg = cls_index.get_user
    tm = cls_index.get_times
    ts = []
    ts = cls_index.get_time_list(tm[0])
    
    @test = ts
  end
end