class TasksController < ApplicationController

    def index
        render json: Task.all
    end

    def create
        puts params[:objective]
        @task = Task.create(objective: params[:objective])
        render json: @task
    end

    def update
        @task = Task.update(params[:id], objective: params[:objective])
        render json: @task
    end

    def destroy
        puts params[:id]
        @task = Task.where(id: params[:id]).first
        # unless @task puts "no task"
        puts Task.destroy(params[:id])
        render json: true
    end

end
