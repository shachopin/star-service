require 'sinatra'

before do 
   headers 'Access-Control-Allow-Origin' => '*', 
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']  
end


get "/" do  
  output = ""
  params["rows"].to_i.times do
    params["cols"].to_i.times do
      output += '*  '
    end
    output += '<br/>'
  end
  output
end

# exactly the same as above, only change is from get to post

post "/" do    
  output = ""
  params["rows"].to_i.times do
    params["cols"].to_i.times do
      output += '*  '
    end
    output += '<br/>'
  end
  output
end