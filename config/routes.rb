Rails.application.routes.draw do
  # student,tutor devise routing
  devise_for :students, controllers: {
    sessions:      'students/sessions',
    passwords:     'students/passwords',
    registrations: 'students/registrations'
  }
  devise_for :tutors, controller: {
    sessions:      'tutors/sessions',
    passwords:     'tutors/passwords',
    registrations: 'tutors/registrations'
  }

  # Defines the root path route ("/")
  root "home#index"
end
