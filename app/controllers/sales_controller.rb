class SalesController < ApplicationController
  
  def getdata
    query = "select * from sale limit 100;"
    results = ActiveRecord::Base.connection.execute(query)
    return results
  end
  
  def index
     sale_data = getdata
     @sales = sale_data.to_json
  end
end
