class BaseLib
  @@database_set = []
  @@conn = ''
  @@ret = []
  #コンストラクタ
  def initialize
    require 'yaml'
    @@database_set = YAML.load_file(Rails.root.to_s + '/config/' + "database.yml")
    #sql = ""
    #val = ""
    #@@ret = []
    self.db_connection
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
  def db_query(sql, param: nil)
    state = @@conn.prepare(sql)
    res = []
    results = state.execute()
    results.each do |row|
      @@ret.push(row)
      res.push(row)
    end
    return res
  end
  
  def str
    #return File.read(Rails.root.to_s + '/config/' + "database.yml")
    return @@ret
  end
end