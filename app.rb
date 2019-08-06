require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name].reverse 
    "#{@name}"
  end 

  get "/square/:number" do 
    @number = params[:number].to_i 
    total = @number * @number 
    "#{total.to_s}"
  end 

  get "/say/:number/:phrase" do 
    print_this = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do 
      print_this += @phrase
    end 
    print_this
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do #why does it not matter if these are linked with a '+' or turned into instance variables? 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    response = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      response = (@number1 + @number2).to_s
    when 'subtract'
      response = (@number1 - @number2).to_s
    when 'multiply'
      response = (@number1 * @number2).to_s
    when 'divide'
      response = (@number1 / @number2).to_s
    end
  end

end