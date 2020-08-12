class ProductsController < ApplicationController
  def checkout
    # application_second_layout.html.hamlを読み込ませる
    render :layout => "application_second_layout"
  end

  def done
    # application_second_layout.html.hamlを読み込ませる
    render :layout => "application_second_layout"
  end
end
