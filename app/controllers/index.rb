get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  @category = Category.find_by_id(params[:id])
  erb :'categories/show'
end

get '/posts/:post_id' do
  @post = Post.find_by_id(params[:post_id])
  erb :'posts/show'
end

get '/categories/:id/post' do
  @category = Category.find_by_id(params[:id])
  erb :'posts/new'
end

post '/post' do
  post = Post.create(params)
  redirect "/posts/#{post.id}"
end

get '/posts/edit/:secret_url' do
  @post = Post.find_by_secret_url(params[:secret_url])
  erb :'posts/edit'
end

put '/post' do
  post = Post.find_by_id(params[:post_id])
  post.title = params[:title] unless params[:title] == ''
  post.text = params[:text] unless params[:text] == ''
  post.email = params[:email] unless params[:email] == ''
  post.price = params[:price] unless params[:price] == ''
  post.save

  redirect "/posts/#{post.id}"
end
