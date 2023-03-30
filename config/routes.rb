# frozen_string_literal: true

Rails.application.routes.draw do
  # frozen_string_literal: true

  get 'workshop', to: 'workshop#index'
  get 'raise', to: 'workshop#raise'
  get 'heavy_process', to: 'workshop#heavy_process'

  get :healthcheck, to: ->(_) { [200, {}, []] }
end
