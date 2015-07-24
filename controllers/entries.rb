#index
get '/' do
    @entries = Entry.all
    erb :"entries/index"
end

#new

get '/entries/new' do
    erb :"entries/new"
end

post '/' do
    @corgi = Entry.create(params[:entry])
    redirect '/'
end

#show
get '/entries/:id' do
    @entry = Entry.find(params[:id])
    erb :"entries/show"
end

#edit

get '/entries/:id/edit' do
    @entry = Entry.find(params[:id])
    erb :"entries/edit"
end

#update
put '/entries/:id' do
    @entry = Entry.find(params[:id])
    @entry.update(params[:entry])
    redirect "/entries/#{@entry.id}"
end

#delete

delete '/entries/:id' do
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect '/'
end
