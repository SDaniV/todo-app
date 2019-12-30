require 'sinatra'
require_relative 'db/models'

get '/' do
  task = params['task']
  Tasks.create(name: task, description: 'Some description') if task
  erb :index, locals: { task: task }
end

get '/:todo-list' do
  @tasks = Tasks.all
  erb :index, locals: {tasks: @tasks}
end