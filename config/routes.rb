# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#root'

  devise_for :users

  match '/404', to: 'errors#not_found', via: :all
  match '/422', to: 'errors#unprocessable_entity', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
end
