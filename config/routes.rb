Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # READ - all
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # CREATE
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # READ - one
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id/edit', to: 'tasks#update'

  # DELETE
  delete 'tasks/:id/delete', to: 'tasks#destroy'
end
