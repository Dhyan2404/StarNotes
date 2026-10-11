package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

/* loaded from: classes6.dex */
public class gin {

    /* renamed from: c */
    public static final gin f71069c = new gin(null, null);

    /* renamed from: a */
    @Nullable
    public final Long f71070a;

    /* renamed from: b */
    @Nullable
    public final TimeZone f71071b;

    public gin(@Nullable Long l, @Nullable TimeZone timeZone) {
        this.f71070a = l;
        this.f71071b = timeZone;
    }

    /* renamed from: a */
    public static gin m54277a(long j) {
        return new gin(Long.valueOf(j), null);
    }

    /* renamed from: b */
    public static gin m54278b(long j, @Nullable TimeZone timeZone) {
        return new gin(Long.valueOf(j), timeZone);
    }

    /* renamed from: e */
    public static gin m54279e() {
        return f71069c;
    }

    /* renamed from: c */
    public Calendar m54280c() {
        return m54281d(this.f71071b);
    }

    /* renamed from: d */
    public Calendar m54281d(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.f71070a;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
