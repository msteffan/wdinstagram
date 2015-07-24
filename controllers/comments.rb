
# create
post "/entries/:id" do
  @comment = Comment.create(params[:comment])
  @entry = Entry.find(params[:id])
  redirect "/entries/#{@entry.id}"
end
