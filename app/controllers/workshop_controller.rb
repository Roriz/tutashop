# frozen_string_literal: true

class WorkshopController < ApplicationController
  def index
    render json: { message: "Hello #{ENV.fetch('MY_NAME', 'World')}!" }
  end

  def raise
    exit(0)
  end

  def heavy_process
    (1..100_000_000).each { |i| i * i }

    head :ok
  end
end
