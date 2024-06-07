package com.cs56.calendarplanner.model;

//Abstract Base Class that will be used to provide a model for Event, Task, and Reminder classes

public abstract class CalendarItem {

    protected boolean isScheduled;
    protected String startDate;  // If isScheduled == false (reminders/tasks), Date variables will be null
    protected String endDate;
    protected boolean hasTime;

}
