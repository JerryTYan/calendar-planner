package com.cs56.calendarplanner.model;
import org.joda.time.*;

//Abstract Base Class that will be used to provide a model for Event, Task, and Reminder classes

public abstract class CalendarItem {

    protected boolean isScheduled;
    protected MutableDateTime startDate;  // If isScheduled == false (reminders/tasks), Date variables will be null
    protected MutableDateTime endDate;
    protected boolean hasTime;
    protected String title;
    protected String description;

    
    public boolean isScheduled() {
        return isScheduled;
    }
    public void setScheduled(boolean scheduled) {
        this.isScheduled = scheduled;
    }

    public MutableDateTime getStartDate() {
        return startDate;
    }

    public void setStartDate(MutableDateTime newStartDate) {
        startDate.setDate(newStartDate);
    }
    
    public MutableDateTime getEndDate() {
        return endDate;
    }
    
    public void setEndDate(MutableDateTime newEndDate) {
        this.endDate.setDate(newEndDate);
    }
    
    public boolean isHasTime() {
        return hasTime;
    }
    
    public void setHasTime(boolean hasTime) {
        this.hasTime = hasTime;
    }
    
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
}
