Rails.application.routes.draw do
  # ルートパス
  root "home#index"

  # 講師認証ルーティング
  devise_for :tutors, skip: 'sessions', controllers: {
        sessions: 'tutors/sessions',
        registrations: 'tutors/registrations'
      }
  devise_scope :tutor do
    get	'/tutors/sign_in', to: 'tutors/sessions#new', as: :new_tutor_session
    post	'/tutors/sign_in', to: 'tutors/sessions#create', as: :tutor_session
    get	'/tutors/sign_out', to: 'tutors/sessions#destroy', as: :destroy_tutor_session
  end

  # 生徒認証ルーティング
  devise_for :students, skip: 'sessions', controllers: {
        sessions: 'students/sessions',
        registrations: 'students/registrations'
      }
  devise_scope :student do
    get	'/students/sign_in', to: 'students/sessions#new', as: :new_student_session
    post	'/students/sign_in', to: 'students/sessions#create', as: :student_session
    get	'/students/sign_out', to: 'students/sessions#destroy', as: :destroy_student_session
  end

  # 講師ルーティング
  namespace :tutors do
    # マイページ
    get '/mypage', to: 'mypage/index#index', as: :mypage
  end

  # 生徒ルーティング
  namespace :students do
    # マイページ
    get '/mypage', to: 'mypage/index#index', as: :mypage
  end

end
