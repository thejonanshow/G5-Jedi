G5jedi::Application.routes.draw do
  resources :quizzes do
    resources :quiestions do
      resources :question_choices
    end
  end
end
