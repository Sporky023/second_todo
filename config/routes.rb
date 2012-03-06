SecondTodo::Application.routes.draw do
  scope "api" do
    resources :todos
  end

  root to: "main#index"
end
