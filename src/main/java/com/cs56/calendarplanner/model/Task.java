package com.cs56.calendarplanner.model;

public class Task extends Reminder {

    public Task(String title, String desc){
        super(false, false, null, title, desc);
    }

}
