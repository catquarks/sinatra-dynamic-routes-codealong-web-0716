require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:moose" do
    @user_name = params[:moose]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:moose' do 
  	@user_name = params[:moose]
  	"Goodbye #{@user_name}"
  end

  get '/multiply/:num1/:num2' do 
  	@answer = params[:num1].to_f * params[:num2].to_f
  	"Product: #{@answer}"
  end


end