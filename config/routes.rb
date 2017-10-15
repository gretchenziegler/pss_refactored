Rails.application.routes.draw do

  root 'welcome#index'

  get '/about' => 'welcome#about'
  get '/join' => 'welcome#join'
  get '/multimedia' => 'welcome#multimedia'
  get '/support' => 'welcome#support'
  get '/history' => 'welcome#history'
  get '/history/concerts' => 'welcome#concerts'
  get '/members/bylaws' => 'members#bylaws'
  get '/members/schedule' => 'members#schedule'
  get '/members/tracks' => 'members#tracks'
  get '/members/dress_code' => 'members#dress_code'
  get '/members/roster' => 'members#roster'
  get '/members/admin' => 'members#admin'
  get '/members/:id/destroy' => 'members#destroy'
  get '/members/:id/admin_edit' => 'members#admin_edit'
  get '/members/carnegie' => 'members#carnegie'
  get '/session/destroy' => 'session#destroy'

  resources :session, only: [:create, :new]

  resources :members, except: :destroy

end
