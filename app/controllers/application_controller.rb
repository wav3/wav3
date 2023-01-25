# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :primary, :secondary, :success, :danger, :warning, :info, :light, :dark

  protect_from_forgery

  def root
    flash.now[:danger] = 'DANGER'
    flash.now[:warning] = 'DANGER'
  end
end
