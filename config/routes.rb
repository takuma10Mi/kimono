Rails.application.routes.draw do
  
  # トップページ
  root to: 'homes#home'

  # 料金一覧 よくある質問 お問い合わせ
  get 'homes/plan', to: 'homes#plan'
  get 'homes/contact', to: 'homes#contact'
  get 'homes/question', to: 'homes#question'

  # 商品一覧
  resources :products do
  end
  
end
