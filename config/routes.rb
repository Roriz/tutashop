# frozen_string_literal: true

Rails.application.routes.draw do
  # frozen_string_literal: true

  get 'workshop', to: 'workshop#index'
  get :healthcheck, to: ->(_) { [200, {}, []] }
end
