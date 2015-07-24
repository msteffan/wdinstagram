# index
get "/authors" do
  @authors = Author.all
  erb :"authors/index"
end


# new
get "/authors/new" do
  erb :"authors/new"
end

# create
post "/authors" do
  @author = Author.create(params[:author])
  redirect "/authors"
end

# show
get "/authors/:id" do
  @author = Author.find(params[:id])
  erb :"authors/show"
end

# edit
get "/authors/:id/edit" do
  @author = Author.find(params[:id])
  erb :"authors/edit"
end

put "/authors/:id" do
  @author = Author.find(params[:id])
  @author.update(params[:author])
end

delete "/authors/:id" do
  @author = Author.find(params[:id])
  @author.destroy
  redirect "/"
end
