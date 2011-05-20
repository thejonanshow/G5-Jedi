G5jedi::Application.routes.draw do
  resources :links

  resources :difficulties

  root :to => 'topics#index'

  resources :topics

  resources :ranks

  resources :questions

  resources :quizzes do
    resources :questions do
      resources :question_choices
    end
  end
end
