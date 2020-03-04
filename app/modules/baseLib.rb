class BaseLib
  @@database_set = []
  @@conn = ''
  @@ret = []
  #コンストラクタ
  def initialize
    require 'yaml'
    @@database_set = YAML.load_file(Rails.root.to_s + '/config/' + "database.yml")#DB設定を読み込む
    sql = ""
    val = ""
    @@ret = []
    self.db_connection
    self.db_query(sql, val)
  end
  #DB接続
  def db_connection
    require 'mysql2'
    @@conn = Mysql2::Client.new(
      :socket => @@database_set["default"]['socket'], 
      :username => @@database_set["default"]['username'], 
      :password => @@database_set["default"]['password'], 
      :encoding => @@database_set["default"]['encoding'], 
      :database => @@database_set["production"]['database'])
  end
  
  #query
  def db_query(sql, values)
    state = @@conn.prepare('select * from t_user')
    results = state.execute()
    results.each do |row|
      @@ret.push(row)
    end
  end
  
  def str
    #return File.read(Rails.root.to_s + '/config/' + "database.yml")
    return @@ret
  end
end