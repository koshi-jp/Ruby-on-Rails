class TodolistsController < ApplicationController
  def new
    #viewに渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list=List.new

  end

  def create
  #1.データを新規登録するためのインスタンス作成
  list = List.new(list_params)
  #2.データをデータベースに保存するためのsaveメソッド実行
  list.save
  #3.トップ画面へリダイレクト
  #redirect_to'/top'を削除して、以下コードに変更
  #詳細画面にリダイレクト
  redirect_to todolist_path(list.id)

  end

  def index
   puts "作成したキー #{ENV['SECRET_KEY']}"

   @lists=List.all

  end

  def show
    @list=List.find(params[:id])
  end

  def edit
    @list=List.find(params[:id])
  end
  def update
    list=List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end
  def destroy
    list = List.find(params[:id]) #データ（レコード）を一件取得
    list.destroy #データ（レコード）を削除
    redirect_to todolists_path #投稿一覧画面へリダイレクト

  end

  private
  #ストロングパラメータ
  def list_params
  params.require(:list).permit(:title,:body,:image)
  end

end