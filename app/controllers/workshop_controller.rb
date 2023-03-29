# frozen_string_literal: true

class WorkshopController < ApplicationController
  def index
    render json: { message: "Hello #{ENV.fetch('MY_NAME', 'World')}!" }
  end
end
