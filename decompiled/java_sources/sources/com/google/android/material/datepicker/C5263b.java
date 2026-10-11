package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import com.sunia.HTREnginev2.kve;
import com.sunia.HTREnginev2.smd;
import com.sunia.HTREnginev2.tmd;
import com.sunia.HTREnginev2.yyn;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: com.google.android.material.datepicker.b */
/* loaded from: classes6.dex */
public class C5263b extends BaseAdapter {

    /* renamed from: k */
    public static final int f31212k = yyn.m58538x().getMaximum(4);

    /* renamed from: l */
    public static final int f31213l = (yyn.m58538x().getMaximum(5) + yyn.m58538x().getMaximum(7)) - 1;

    /* renamed from: m */
    public static final int f31214m = -1;

    /* renamed from: e */
    public final Month f31215e;

    /* renamed from: f */
    public final DateSelector<?> f31216f;

    /* renamed from: g */
    public Collection<Long> f31217g;

    /* renamed from: h */
    public tmd f31218h;

    /* renamed from: i */
    public final CalendarConstraints f31219i;

    /* renamed from: j */
    @Nullable
    public final DayViewDecorator f31220j;

    public C5263b(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints, @Nullable DayViewDecorator dayViewDecorator) {
        this.f31215e = month;
        this.f31216f = dateSelector;
        this.f31219i = calendarConstraints;
        this.f31220j = dayViewDecorator;
        this.f31217g = dateSelector.getSelectedDays();
    }

    /* renamed from: a */
    public int m24009a(int i) {
        return m24010b() + (i - 1);
    }

    /* renamed from: b */
    public int m24010b() {
        return this.f31215e.daysFromStartOfWeekToFirstOfMonth(this.f31219i.getFirstDayOfWeek());
    }

    /* renamed from: c */
    public final String m24011c(Context context, long j) {
        return kve.m55332e(context, j, m24020l(j), m24019k(j), m24015g(j));
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < m24010b() || i > m24021m()) {
            return null;
        }
        return Long.valueOf(this.f31215e.getDay(m24022n(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
    @Override // android.widget.Adapter
    @androidx.annotation.NonNull
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.widget.TextView getView(int r6, @androidx.annotation.Nullable android.view.View r7, @androidx.annotation.NonNull android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            r5.m24014f(r0)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L1e
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            int r0 = com.google.android.material.C5139R.layout.mtrl_calendar_day
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L1e:
            int r7 = r5.m24010b()
            int r7 = r6 - r7
            if (r7 < 0) goto L54
            com.google.android.material.datepicker.Month r8 = r5.f31215e
            int r2 = r8.daysInMonth
            if (r7 < r2) goto L2d
            goto L54
        L2d:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Integer r3 = java.lang.Integer.valueOf(r7)
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r4 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r4, r3)
            r0.setText(r8)
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L5d
        L54:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
            r7 = -1
        L5d:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L64
            return r0
        L64:
            long r1 = r6.longValue()
            r5.m24023o(r0, r1, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.C5263b.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    /* renamed from: f */
    public final void m24014f(Context context) {
        if (this.f31218h == null) {
            this.f31218h = new tmd(context);
        }
    }

    @VisibleForTesting
    /* renamed from: g */
    public boolean m24015g(long j) {
        Iterator<Pair<Long, Long>> it2 = this.f31216f.getSelectedRanges().iterator();
        while (it2.hasNext()) {
            Long l = it2.next().second;
            if (l != null && l.longValue() == j) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return f31213l;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f31215e.daysInWeek;
    }

    /* renamed from: h */
    public boolean m24016h(int i) {
        return i % this.f31215e.daysInWeek == 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* renamed from: i */
    public boolean m24017i(int i) {
        return (i + 1) % this.f31215e.daysInWeek == 0;
    }

    /* renamed from: j */
    public final boolean m24018j(long j) {
        Iterator<Long> it2 = this.f31216f.getSelectedDays().iterator();
        while (it2.hasNext()) {
            if (yyn.m58515a(j) == yyn.m58515a(it2.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    @VisibleForTesting
    /* renamed from: k */
    public boolean m24019k(long j) {
        Iterator<Pair<Long, Long>> it2 = this.f31216f.getSelectedRanges().iterator();
        while (it2.hasNext()) {
            Long l = it2.next().first;
            if (l != null && l.longValue() == j) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l */
    public final boolean m24020l(long j) {
        return yyn.m58536v().getTimeInMillis() == j;
    }

    /* renamed from: m */
    public int m24021m() {
        return (m24010b() + this.f31215e.daysInMonth) - 1;
    }

    /* renamed from: n */
    public int m24022n(int i) {
        return (i - m24010b()) + 1;
    }

    /* renamed from: o */
    public final void m24023o(@Nullable TextView textView, long j, int i) {
        boolean z;
        smd smdVar;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        String m24011c = m24011c(context, j);
        textView.setContentDescription(m24011c);
        boolean isValid = this.f31219i.getDateValidator().isValid(j);
        if (isValid) {
            textView.setEnabled(true);
            boolean m24018j = m24018j(j);
            textView.setSelected(m24018j);
            smdVar = m24018j ? this.f31218h.f85482b : m24020l(j) ? this.f31218h.f85483c : this.f31218h.f85481a;
            z = m24018j;
        } else {
            textView.setEnabled(false);
            z = false;
            smdVar = this.f31218h.f85487g;
        }
        DayViewDecorator dayViewDecorator = this.f31220j;
        if (dayViewDecorator == null || i == -1) {
            smdVar.m57177f(textView);
            return;
        }
        Month month = this.f31215e;
        int i2 = month.year;
        int i3 = month.month;
        ColorStateList backgroundColor = dayViewDecorator.getBackgroundColor(context, i2, i3, i, isValid, z);
        boolean z2 = z;
        smdVar.m57178g(textView, backgroundColor, this.f31220j.getTextColor(context, i2, i3, i, isValid, z2));
        Drawable compoundDrawableLeft = this.f31220j.getCompoundDrawableLeft(context, i2, i3, i, isValid, z2);
        Drawable compoundDrawableTop = this.f31220j.getCompoundDrawableTop(context, i2, i3, i, isValid, z2);
        Drawable compoundDrawableRight = this.f31220j.getCompoundDrawableRight(context, i2, i3, i, isValid, z2);
        boolean z3 = z;
        textView.setCompoundDrawables(compoundDrawableLeft, compoundDrawableTop, compoundDrawableRight, this.f31220j.getCompoundDrawableBottom(context, i2, i3, i, isValid, z3));
        textView.setContentDescription(this.f31220j.getContentDescription(context, i2, i3, i, isValid, z3, m24011c));
    }

    /* renamed from: p */
    public final void m24024p(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (Month.create(j).equals(this.f31215e)) {
            int dayOfMonth = this.f31215e.getDayOfMonth(j);
            m24023o((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().m24009a(dayOfMonth) - materialCalendarGridView.getFirstVisiblePosition()), j, dayOfMonth);
        }
    }

    /* renamed from: q */
    public void m24025q(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it2 = this.f31217g.iterator();
        while (it2.hasNext()) {
            m24024p(materialCalendarGridView, it2.next().longValue());
        }
        DateSelector<?> dateSelector = this.f31216f;
        if (dateSelector != null) {
            Iterator<Long> it3 = dateSelector.getSelectedDays().iterator();
            while (it3.hasNext()) {
                m24024p(materialCalendarGridView, it3.next().longValue());
            }
            this.f31217g = this.f31216f.getSelectedDays();
        }
    }

    /* renamed from: r */
    public boolean m24026r(int i) {
        return i >= m24010b() && i <= m24021m();
    }
}
