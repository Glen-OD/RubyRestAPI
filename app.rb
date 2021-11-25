require 'sinatra'

class HiSinatra < Sinatra::Base
    get '/' do
        "Hey David!"
    end

    get '/:sentence' do
        my_string = "#{params[:sentence]}"
        #print my_string
              
        my_Array = my_string.split
        numberOfAnds = my_Array.count('and')
        content_type :json
        #params.inspect
        "this sentence has the word 'and' this many times: " + numberOfAnds.to_s
    end
end
