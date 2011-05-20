G5jedi::Application.routes.draw do
  root :to => 'topics#index'

  resources :topics

  resources :ranks

  resources :quizzes do
    resources :quiestions do
      resources :question_choices
    end
  end
end
