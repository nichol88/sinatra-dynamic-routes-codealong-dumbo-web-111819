require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    erb :hello
  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    
    erb :goodbye
  end

  get "/multiply/:num1/:num2" do
    @product = "#{params[:num1].to_i * params[:num2].to_i}"
    erb :multiply
  end
end
