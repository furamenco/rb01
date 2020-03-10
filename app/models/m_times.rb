require Const::MOD_PATH + 'baseLib' 

class M_times < BaseLib
  def initialize
    super
  end
  #全件取得
  def fech_all
    sql ="select * from m_times"
    return self.db_query(sql)
  end
  
  #全件取得
  def fech_one(id)
    sql ="select * from m_times"
    sql += " where times_id=" + id
    return self.db_query(sql)
  end
end
