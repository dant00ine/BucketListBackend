Rails.application.routes.draw do

    get '/tasks', to: "tasks#index"
    post '/tasks', to: 'tasks#create'
    put '/tasks', to: 'tasks#update'
    post '/tasks/delete', to: 'tasks#destroy'

end
