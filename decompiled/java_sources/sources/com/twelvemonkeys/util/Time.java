package com.twelvemonkeys.util;

/* loaded from: classes10.dex */
public class Time {
    public static final int SECONDS_IN_MINUTE = 60;

    /* renamed from: a */
    public int f94376a;

    public Time() {
        this(0);
    }

    public static Time parseTime(String str) {
        return TimeFormat.getInstance().parse(str);
    }

    public int getMinutes() {
        return this.f94376a / 60;
    }

    public int getSeconds() {
        return this.f94376a % 60;
    }

    public int getTime() {
        return this.f94376a;
    }

    public long getTimeInMillis() {
        return this.f94376a * 1000;
    }

    public void setMinutes(int i) {
        this.f94376a = (i * 60) + getSeconds();
    }

    public void setSeconds(int i) {
        this.f94376a = (getMinutes() * 60) + i;
    }

    public void setTime(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Time argument must be 0 or positive!");
        }
        this.f94376a = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(getMinutes());
        sb.append(":");
        sb.append(getSeconds() < 10 ? "0" : "");
        sb.append(getSeconds());
        return sb.toString();
    }

    public Time(int i) {
        this.f94376a = -1;
        setTime(i);
    }

    public String toString(String str) {
        return new TimeFormat(str).format(this);
    }
}
