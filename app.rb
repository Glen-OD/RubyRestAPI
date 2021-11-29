require 'sinatra'
require "sinatra/json"

class HiSinatra < Sinatra::Base
    get '/' do
        "Hey David!"
    end

    get '/x=:sentence' do
        x = "#{params[:sentence]}"
        #print my_string
        
        #json({:foo => 'bar'}, :encoder => :to_json, :content_type => :json)
        
        y = x.downcase
        my_Array = y.split
        answer = my_Array.count('and')
        content_type :json
        response['Access-Control-Allow-Origin']='*'
        #params.inspect
        { 
            "x": x,
            "answer": answer
        }.to_json
    end
end
