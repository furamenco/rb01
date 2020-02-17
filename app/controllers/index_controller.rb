require Rails.root.to_s + '/app/modules/' + 'indexLib' 
class IndexController < ActionController::Base
  def initialize
    #
  end

  def index
    get = IndexLib.new
    @msg = get.hello;
    #@msg = "45454545";
  end
end