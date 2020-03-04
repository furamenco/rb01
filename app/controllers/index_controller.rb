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
    get = IndexLib.new
    #@msg = @@database_set;
    @msg = get.hello;
    #@msg = "45454545";
  end
end