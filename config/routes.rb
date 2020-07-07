Rails.application.routes.draw do
  
  # トップページ
  root to: 'homes#home'

  # 料金一覧 よくある質問 お問い合わせ
  get 'homes/plan', to: 'homes#plan'
  get 'homes/question', to: 'homes#question'
  get 'homes/contact', to: 'homes#contact'

  # 商品一覧
  resources :products do
    # idは不要なのでcollectionを使用
    collection do
      # 商品購入ページ 購入完了ページ
      get 'checkout'
      get 'done'
     end
  end
  
end
