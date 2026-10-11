package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sunia.HTREnginev2.kve;
import com.sunia.HTREnginev2.yyn;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new C5254a();
    final int daysInMonth;
    final int daysInWeek;

    @NonNull
    private final Calendar firstOfMonth;

    @Nullable
    private String longName;
    final int month;
    final long timeInMillis;
    final int year;

    /* renamed from: com.google.android.material.datepicker.Month$a */
    /* loaded from: classes6.dex */
    public class C5254a implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.create(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar m58520f = yyn.m58520f(calendar);
        this.firstOfMonth = m58520f;
        this.month = m58520f.get(2);
        this.year = m58520f.get(1);
        this.daysInWeek = m58520f.getMaximum(7);
        this.daysInMonth = m58520f.getActualMaximum(5);
        this.timeInMillis = m58520f.getTimeInMillis();
    }

    @NonNull
    public static Month create(long j) {
        Calendar m58538x = yyn.m58538x();
        m58538x.setTimeInMillis(j);
        return new Month(m58538x);
    }

    @NonNull
    public static Month current() {
        return new Month(yyn.m58536v());
    }

    public int daysFromStartOfWeekToFirstOfMonth(int i) {
        int i2 = this.firstOfMonth.get(7);
        if (i <= 0) {
            i = this.firstOfMonth.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        return i3 < 0 ? i3 + this.daysInWeek : i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.month == month.month && this.year == month.year;
    }

    public long getDay(int i) {
        Calendar m58520f = yyn.m58520f(this.firstOfMonth);
        m58520f.set(5, i);
        return m58520f.getTimeInMillis();
    }

    public int getDayOfMonth(long j) {
        Calendar m58520f = yyn.m58520f(this.firstOfMonth);
        m58520f.setTimeInMillis(j);
        return m58520f.get(5);
    }

    @NonNull
    public String getLongName() {
        if (this.longName == null) {
            this.longName = kve.m55339l(this.firstOfMonth.getTimeInMillis());
        }
        return this.longName;
    }

    public long getStableId() {
        return this.firstOfMonth.getTimeInMillis();
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.month), Integer.valueOf(this.year)});
    }

    @NonNull
    public Month monthsLater(int i) {
        Calendar m58520f = yyn.m58520f(this.firstOfMonth);
        m58520f.add(2, i);
        return new Month(m58520f);
    }

    public int monthsUntil(@NonNull Month month) {
        if (this.firstOfMonth instanceof GregorianCalendar) {
            return ((month.year - this.year) * 12) + (month.month - this.month);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.year);
        parcel.writeInt(this.month);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull Month month) {
        return this.firstOfMonth.compareTo(month.firstOfMonth);
    }

    @NonNull
    public static Month create(int i, int i2) {
        Calendar m58538x = yyn.m58538x();
        m58538x.set(1, i);
        m58538x.set(2, i2);
        return new Month(m58538x);
    }
}
