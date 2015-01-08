require('sinatra')
require('sinatra/reloader')
require('./rps')

# Set port for compatability with nitrous.io
configure :development do
  set :bind, '0.0.0.0'
  set :port, 3000
end

get('/') do
  "Hello Friend!"
end

get('/form') do
  erb(:form)
end

get("/results") do
  @input1 = params.fetch('input1')
  @input2 = params.fetch('input2')
  @result = @input1.beats?(@input2)
  if @result.eql?(true)
    @victory = "Player 1 Wins"
  else
    @victory= "Player 2 Wins"
  end
  erb(:results)
end