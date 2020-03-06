require Rails.root.to_s + '/app/modules/' + 'baseLib' 

class T_user < BaseLib
  def initialize
    super
  end
  #全件取得
  def fech_all
    sql ="select * from t_user"
    return self.db_query(sql)
  end
  
  #全件取得
  def fech_one(id)
    sql ="select * from t_user"
    sql += " where user_id=" + id
    return self.db_query(sql)
  end
end