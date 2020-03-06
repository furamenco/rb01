
require Rails.root.to_s + '/app/models/' + 't_user' 
class IndexLib
  def initialize
    @@t_user = T_user.new
  end
  def get_user
    return @@t_user.fech_all
  end
end
