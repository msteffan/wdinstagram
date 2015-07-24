# # index
# get "/comments" do
#   @comments = Comment.all
#   erb :"comments/index"
# end


# # new
# get "/comments/new" do
#   erb :"comments/new"
# end

# create
post "/entries/:id" do
  @comment = Comment.create(params[:comment])
  @entry = Entry.find(params[:id])
  redirect "/entries/#{@entry.id}"
end
#
# # show
# get "/comments/:id" do
#   @comment = Comment.find(params[:id])
#   erb :"comments/show"
# end
#
# # edit
# get "/comments/:id/edit" do
#   @comment = Comment.find(params[:id])
#   erb :"comments/edit"
# end
#
# put "/comments/:id" do
#   @comment = Comment.find(params[:id])
#   @comment.update(params[:comment])
# end
#
# delete "/comments/:id" do
#   @comment = Comment.find(params[:id])
#   @comment.destroy
#   redirect "/"
# end
