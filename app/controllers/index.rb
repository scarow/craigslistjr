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
