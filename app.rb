require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }
    end
    get '/' do
        erb :index
    end
    post '/checkout' do
        session[:item] = params[:item]
    end
end