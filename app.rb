require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user = params[:name].reverse
    "#{@user}"
  end

  get "/square/:number" do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    phrase_n_times = ''
    params[:number].to_i.times do
      phrase_n_times += params[:phrase]
    end
    phrase_n_times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number_one = params[:number1].to_i
    number_two = params[:number2].to_i

    case params[:operation]
    when 'add'
      (number_one + number_two).to_s
    when 'subtract'
      (number_one - number_two).to_s
    when 'multiply'
      (number_one * number_two).to_s
    when 'divide'
      (number_one / number_two).to_s
    end
  end
end