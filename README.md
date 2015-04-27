## ShopAccount

Training project

### Features

- CRUD
- Searable
- Pagination
- Bootstrap

### Getting Started
- สร้างโปรเจค
`rails new shopaccount -d mysql`

- สร้าง scaffold
`rails g scaffold product title:string price:float count:integer`

- สร้าง database + table
`rake db:create`
`rake db:migrate`

- แก้ product_controller.rb

```ruby
def increase
  product = Product.find(params[:product_id])
  product.count = product.count + 1
  product.save
  redirect_to products_path
end

def decrease
  product = Product.find(params[:product_id])
  product.count = product.count - 1
  product.save
  redirect_to products_path
end
```

- แก้ route.rb

```ruby
root 'products#index'
resources :products do
  get 'increase'
  get 'decrease'
end
```

- แก้ product\index.html.erb

```ruby
<td><%= link_to 'Increase', product_increase_path(product) %></td>
<td><%= link_to 'Decrease', product_decrease_path(product) %></td>
```
