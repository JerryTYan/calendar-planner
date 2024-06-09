package com.cs56.calendarplanner.model;

import org.joda.time.MutableDateTime;

public class Reminder extends CalendarItem {

    private boolean isCompleted;

    public Reminder(boolean isScheduled, boolean hasTime, MutableDateTime dueDate, String title, String desc){
        this.isScheduled = isScheduled;
        this.hasTime = hasTime;
        this.startDate = dueDate;
        this.title = title;
        this.description = desc;
        this.isCompleted = false;
    }

    public boolean isCompleted(){
        return this.isCompleted;
    }

    public void markCompleted(){
        this.isCompleted = true;
    }

    public void markUncompleted(){
        this.isCompleted = false;
    }

}
