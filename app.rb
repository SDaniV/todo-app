require 'sinatra'

get '/' do
  "Initial commit!"
  task = params['task']
  erb :index, locals: {task: task}
end