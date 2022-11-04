Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  get 'students/edit'
  get 'students/new'
  resource :students

end
