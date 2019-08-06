require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end 

  get '/square/:number' do
    @result = params[:number].to_i * params[:number].to_i
    @result.to_s
  end

  get '/say/:number/:phrase' do
    str = ""
    # binding.pry
    params[:number].to_i.times do
       str = str + params[:phrase]
    end 
    return str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @str = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    @str
    # binding.pry
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      @result = params[:number1].to_i + params[:number2].to_i
      @result.to_s
    elsif params[:operation] == 'subtract'
      @result = params[:number1].to_i - params[:number2].to_i
      @result.to_s
    elsif params[:operation] == 'multiply'
      @result = params[:number1].to_i * params[:number2].to_i
      @result.to_s
    elsif params[:operation] == 'divide'
      @result = params[:number1].to_i / params[:number2].to_i
      @result.to_s
    end

  end 

end