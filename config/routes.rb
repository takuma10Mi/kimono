Rails.application.routes.draw do
  
  # トップページ
  root to: 'homes#home'

  # 料金一覧
  get 'homes/service', to: 'homes#service'
  # お問い合わせ
  get 'homes/contact', to: 'homes#contact'

  # 商品一覧
  resources :products do
    # 商品購入ページ
    get 'checkout'
    # 購入完了ページ
    get 'done'
  end

  # 管理者ページ
  resources :admins do
    # idは不要なのでcollectionを使用
    collection do
      # 配送管理ページ
      get "delivery", to: "admins#delivery"
     end
  end
  
end
