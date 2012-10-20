# coding: utf-8
class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end
  
  def new
    @board = Board.new
  end
  
  def create
    @board = Board.new(params[:user])
    if @board.save
      redirect_to(board_url, :notice => "版块：#{@board.name}创建成功")
    end
  end
  
  def show
    @board = Board.find(params[:id])
  end
  
  def edit
    @board = Board.find(params[:id])
  end
  
  def update
    
  end
  
  def destroy
  end
  
end
