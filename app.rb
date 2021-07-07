require_relative "config/environment"

class App < Sinatra::Base
  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    word = ""
    (params[:number].to_i).times do
      word += params[:phrase]
    end
    word
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    sentence = ""
    params.each { |k, v| sentence += "#{v} " }
    new_sentence = sentence.strip
    new_sentence += "."
  end

  get "/:operation/:number1/:number2" do
    # binding.pry
    num1 = (params[:number1]).to_i
    num2 = (params[:number2]).to_i
    case params[:operation]
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    end
    result.to_s
  end
end
