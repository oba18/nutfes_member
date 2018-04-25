class MembersController < ApplicationController

def index
  @members = Member.all.order(:kyoku, :name)
  end

def show
  @member =  Member.find(params[:id])
  @member= Member.find(params[:id])
  if params[:format].in?(["jpg","png","gif"])
    send_image
  else
    render "show"
  end
end

def new
  @member = Member.new
end

def create
  @member = Member.new(member_params)
  @member.save
  redirect_to members_path
end

def edit
  @member = Member.find(params[:id])
end

def update
  @member = Member.find(params[:id])
  if @member.update(member_params)
    redirect_to members_path @member, notice: "情報を更新しました"
  else
    render 'edit'
  end
end

def destroy
  @member = Member.find(params[:id])
  @member.destroy
  redirect_to members_path
end

def search
  @members = Member.search(params[:id])
  render = "index"
end

private
def member_params
  params[:member].permit(:name,:kyoku,:cource,:email,:labo,:furigana,:gakunen,:work,:kyokuchou,)
end
end 
