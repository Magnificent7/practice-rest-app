class MessagesController < ApplicationController

  def index
    @messages = Message.all #array of hashes
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    Message.create(
      name: params[:name],
      body: params[:body]
    )
    render "create.html.erb"
  end

  def show
    @message = Message.find(params[:id]) #message hash
    render "show.html.erb"
  end

  def edit
    @message = Message.find(params[:id]) #message hash
    render "edit.html.erb"
  end

  def update
    message = Message.find(params[:id])
    message.update(
      name: params[:name],
      body: params[:body]
    )
    render "update.html.erb"
  end

  def destroy
    message = Message.find(params[:id])
    message.destroy
    render "destroy.html.erb"
  end

end












