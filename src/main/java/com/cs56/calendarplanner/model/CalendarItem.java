package com.cs56.calendarplanner.model;
import org.joda.time.*;

//Abstract Base Class that will be used to provide a model for Event, Task, and Reminder classes

public abstract class CalendarItem {

    private boolean isScheduled;
    protected LocalDate startDate;  // If isScheduled == false (reminders/tasks), Date variables will be null
    protected LocalDate endDate;
    protected boolean hasTime;
    protected LocalTime startTime;
    protected LocalTime endTime;
    protected String title;
    protected String description;


    public boolean getScheduled() {
        return this.isScheduled;
    }

    public void setScheduled(boolean scheduled) {
        isScheduled = scheduled;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public boolean isHasTime() {
        return hasTime;
    }

    public void setHasTime(boolean hasTime) {
        this.hasTime = hasTime;
    }

    public LocalTime getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalTime startTime) {
        this.startTime = startTime;
    }

    public LocalTime getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalTime endTime) {
        this.endTime = endTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
