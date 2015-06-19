Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  root 'welcome#home'

  devise_scope :user do
  	post 'set_locale', to: 'registrations#set_locale', as: :set_user_locale
	end
end
