Rails.application.routes.draw do

  root 'welcome#index'
  get '/resume' => 'welcome#resume'

  get '/projects' => 'projects#index'

  # STATIC PAGES
  get '/password_checker' => 'static_pages#password_checker'
  get '/jukebox2.0'       => 'static_pages#jukebox_2'
  get '/jukebox3.0'       => 'static_pages#jukebox_3'

  # BLOG
  # get '/blog'         => 'static_pages#blog'

  # ================
  # PRODUCTION BLOG
  # ================
  
  resources :blogs

  # BLOG FILTERS
  get '/filter' => 'blogs#index'
  get '/filter/:tagid/:tagname'=> 'blogs#index'
  get '/filterbydate' =>'blogs#index'




end
