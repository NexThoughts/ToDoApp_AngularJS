package com.todoApp

/**
 * Created by hitenpratap on 3/10/15.
 */
class Task {

    String title
    String description
    Date dateCreated
    Date lastUpdated
    Date taskEndDate
    Boolean isDone = false

    static mapping = {
        description type: 'text'
    }

    static constraints = {
        title blank: false, nullable: false
        description blank: false, nullable: false
        isDone nullable: false
        taskEndDate nullable: false
    }

}
