package com.cs56.calendarplanner.model;
import org.joda.time.*;

//Abstract Base Class that will be used to provide a model for Event, Task, and Reminder classes

public abstract class CalendarItem {

    private boolean isScheduled;
    protected MutableDateTime startDate;  // If isScheduled == false (reminders/tasks), Date variables will be null
    protected MutableDateTime endDate;
    protected boolean hasTime;
    protected String title;
    protected String description;


    public abstract boolean isScheduled();

    public abstract void setScheduled(boolean scheduled);

    public abstract MutableDateTime getStartDate();

    public abstract void setStartDate(MutableDateTime startDate);

    public abstract MutableDateTime getEndDate();

    public abstract void setEndDate(MutableDateTime endDate);

    public abstract boolean isHasTime();

    public abstract void setHasTime(boolean hasTime);

    public abstract String getTitle();

    public abstract void setTitle(String title);

    public abstract String getDescription();

    public abstract void setDescription(String description);
}
