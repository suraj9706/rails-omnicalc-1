Rails.application.routes.draw do
  root to: 'calculator#index'

  get '/square/new', to: 'calculator#square_form'
  post '/square/results', to: 'calculator#square'

  get '/square_root/new', to: 'calculator#square_root_form'
  post '/square_root/results', to: 'calculator#square_root'

  get '/payment/new', to: 'calculator#payment_form'
  post '/payment/results', to: 'calculator#payment'

  get '/random/new', to: 'calculator#random_form'
  post '/random/results', to: 'calculator#random'
end
