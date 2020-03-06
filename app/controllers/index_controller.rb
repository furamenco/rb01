require Rails.root.to_s + '/app/modules/' + 'indexLib' 
class IndexController < ActionController::Base
  @@database_set = {
    "adapter" => "mysql2",
    "encoding" => "utf8mb4",
    "username" => "user88",
    "password" => "tq5rrfBP438Tdoni",
    "socket" => "/var/lib/mysql/mysql.sock",
    "datebase" => "rails"
  }
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
    
    #@msg = @@database_set;
    @msg = cls_index.get_user;
    #@msg = "45454545";
  end
end