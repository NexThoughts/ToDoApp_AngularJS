package com.todoApp

import grails.converters.JSON

import java.text.SimpleDateFormat

/**
 * Created by hitenpratap on 3/10/15.
 */
class TaskController {

    def index={
        render(view: '/tasks/index')
    }

    def create = {
        render(template: '/tasks/create')
    }

    def save = {
        def result = [:]
        Task task = new Task()
        task.title = params.title
        SimpleDateFormat dateFormat = new SimpleDateFormat("MMM dd, yyyy")
        task.taskEndDate = dateFormat.parse(params.taskDate)
        task.description = params.description
        if(!task.validate()){
            task.save(flush: true)
            result.result = 'SUCCESS'
            result.successMsg = "Task saved successfully."
        }else{
            result.errMsg = "Something went wrong. Please try again."
        }
        render result as JSON
    }

    def edit = {
        render(template: '/tasks/edit')
    }

    def list = {
        render(template: '/tasks/list')
    }

    def loadTaskList = {
        println("***************************************        ")
        def result = [:]
        result.taskList = Task.list()
        render result as JSON
    }

}
