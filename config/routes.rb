Dashninja::Application.routes.draw do

  resources :dashboards

  devise_for :users

  get "widgets/arrow"

  get "widgets/bargraph"
  
  get "widgets/burndowns"

  get "widgets/bubblelist"

  get "widgets/clock"

  get "widgets/countdown"

  get "widgets/grid"

  get "widgets/meta"

  get "widgets/space"

  get "widgets/weather"

  get "widgets/newsticker"

  get "widgets/stockticker"

  root :to => "dashboards#index"
end
