Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tasks
  put 'tasks/:id/mark_as_done', to: 'tasks#mark_as_done', as: :mark_as_done
  root to: 'tasks#index'
  # # read all tasks
  # get 'tasks', to: 'tasks#index'
  # # read one task / add a task / create it
  # get 'tasks/new', to: 'tasks#new'
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # post 'tasks', to: 'tasks#create'
  # # update one task
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'
  # # delete one task
  # delete 'tasks/:id', to: 'tasks#destroy'
end
