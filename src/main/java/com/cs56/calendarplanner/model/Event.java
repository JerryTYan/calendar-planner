package com.cs56.calendarplanner.model;

import org.joda.time.MutableDateTime;

public class Event extends CalendarItem {

    private boolean isAllDay;


    public Event(String title, String desc, MutableDateTime startDate, MutableDateTime endDate, boolean hasTime){
        this.title = title;
        this.description = desc;
        this.startDate = new MutableDateTime(startDate);
        this.endDate = new MutableDateTime(endDate);
        this.hasTime = hasTime;
        this.isScheduled = true;
    }

}
