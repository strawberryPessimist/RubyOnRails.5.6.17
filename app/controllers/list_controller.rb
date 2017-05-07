class ListController < ApplicationController
  def index
  end
  
  def show
    @id = params['id']
    
    @list = List.find_by_id(@id) 
    
    if @id.length <= 5
      #todo list one

      @first_todo_description = "Complete all missed assignments - Physics"
      @first_todo_pomodoro_estimate = "4 pomodoros"
      
      @second_todo_description = "Study rehtoric section for quiz - Communications"
      @second_todo_pomodoro_estimate = "2 pomodoros"
      
      @third_todo_description = "Complete lab assignment #4 - AP Computer Science"
      @third_todo_pomodoro_estimate = "3 pomodoros"

    else
      #todo list two

      @first_todo_description = "Laundry"
      @first_todo_pomodoro_estimate = "2 pomodoros"
      
      @second_todo_description = "Vacuum room"
      @second_todo_pomodoro_estimate = "1 pomodoro"
      
      @third_todo_description = "Wash dishes"
      @third_todo_pomodoro_estimate = "2 pomodoros"
    end
  end
  
  def new
  end
  
  def create
    l = List.new
    l.name = params['newTask']
    l.save
    redirect_to "/list/#{ l.id }"
  end
  
  def edit
    @list = List.find_by_id(params['id'])
  end
  
  def update
    l = List.find_by_id(params['id'])
    l.name = params['newTask']
    l.save
    redirect_to "/list/#{l.id}"
  end
end
