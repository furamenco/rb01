
require Const::MODEL_PATH + 't_user' 
require Const::MODEL_PATH + 'm_times' 
class IndexLib
  def initialize
    @@t_user = T_user.new
    @@m_times = M_times.new
  end
  
  def get_user
    return @@t_user.fech_all
  end
  
  def get_times
    return @@m_times.fech_all
  end
  
  def get_time_list(param)
    default_year = 1999
    default_month = 1
    default_day = 1
    
    ts = []
    get_time = Time.local(default_year, default_month, default_day, param["times_start_h"],  param["times_start_m"])
    end_time = Time.local(default_year, default_month, default_day, param["times_end_h"],  param["times_end_m"])
    time = get_time.hour + get_time.min
    last_time = end_time.hour + end_time.min
    while time < last_time do
      ts.push(get_time)
      get_time = get_time + (60*param["times_interval"])
      time = get_time.hour + get_time.min
    end
    
    return ts
  end
end
