class ProductsMailer < ActionMailer::Base
  default from: "snowtree.testing@gmail.com"
  layout 'mailer'

  def sell_buy_product_data(product)
  	@product = product
    mail(to: "snowtree.testing@gmail.com", subject: "Someone wants to buy/sell plastic!")
  end

   
end
