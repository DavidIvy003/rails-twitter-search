MyApp::Application.routes.draw do

  get "search/twitter"

  root              :to => "home#index"
  match '/help',    :to => 'home#help'
  match '/contact', :to => 'home#contact'
  match '/about',   :to => 'home#about'

end
