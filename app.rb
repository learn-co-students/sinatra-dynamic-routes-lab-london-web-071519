require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    status
    @reverse
  end

  get '/square/:number' do
    @squared = params[:number].to_i
    status
    "#{@squared * @squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    status
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    status
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = 0


    if @operation == "add"
      @result = @number1 + @number2
    elsif @operation == "subtract"
      @result = @number1 - @number2
    elsif @operation == "multiply"
      @result = @number1 * @number2
    elsif @operation == "divide"
      @result = @number1 / @number2
    end

    status
    @result.to_s
  end

end