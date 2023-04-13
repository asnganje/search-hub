Rails.application.routes.draw do
  get 'analytics/index'
  mount ActionCable.server => '/cable'
  get 'articles' => 'articles#index'
  get '/channels/search', to: 'articles#search'
  # Add a new route that matches GET requests to /channels/search
  # get '/channel/search' => 'articles#index', as: 'article_search_results'
  # get '/search', to: 'search#search'

end
