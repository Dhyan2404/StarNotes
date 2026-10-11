package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C5139R;
import com.google.android.material.datepicker.MaterialCalendar;

/* loaded from: classes6.dex */
public class MonthsPagerAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: d */
    @NonNull
    public final CalendarConstraints f31180d;

    /* renamed from: e */
    public final DateSelector<?> f31181e;

    /* renamed from: f */
    @Nullable
    public final DayViewDecorator f31182f;

    /* renamed from: g */
    public final MaterialCalendar.InterfaceC5247l f31183g;

    /* renamed from: h */
    public final int f31184h;

    /* loaded from: classes6.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H */
        public final TextView f31185H;

        /* renamed from: I */
        public final MaterialCalendarGridView f31186I;

        public ViewHolder(@NonNull LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(C5139R.id.month_title);
            this.f31185H = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f31186I = (MaterialCalendarGridView) linearLayout.findViewById(C5139R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MonthsPagerAdapter$a */
    /* loaded from: classes6.dex */
    public class C5255a implements AdapterView.OnItemClickListener {

        /* renamed from: e */
        public final /* synthetic */ MaterialCalendarGridView f31187e;

        public C5255a(MaterialCalendarGridView materialCalendarGridView) {
            this.f31187e = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f31187e.getAdapter().m24026r(i)) {
                MonthsPagerAdapter.this.f31183g.mo23951a(this.f31187e.getAdapter().getItem(i).longValue());
            }
        }
    }

    public MonthsPagerAdapter(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, @Nullable DayViewDecorator dayViewDecorator, MaterialCalendar.InterfaceC5247l interfaceC5247l) {
        Month start = calendarConstraints.getStart();
        Month end = calendarConstraints.getEnd();
        Month openAt = calendarConstraints.getOpenAt();
        if (start.compareTo(openAt) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (openAt.compareTo(end) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f31184h = (C5263b.f31212k * MaterialCalendar.m23938y0(context)) + (MaterialDatePicker.m23958D0(context) ? MaterialCalendar.m23938y0(context) : 0);
        this.f31180d = calendarConstraints;
        this.f31181e = dateSelector;
        this.f31182f = dayViewDecorator;
        this.f31183g = interfaceC5247l;
        setHasStableIds(true);
    }

    @NonNull
    /* renamed from: c */
    public Month m23985c(int i) {
        return this.f31180d.getStart().monthsLater(i);
    }

    @NonNull
    /* renamed from: d */
    public CharSequence m23986d(int i) {
        return m23985c(i).getLongName();
    }

    /* renamed from: e */
    public int m23987e(@NonNull Month month) {
        return this.f31180d.getStart().monthsUntil(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        Month monthsLater = this.f31180d.getStart().monthsLater(i);
        viewHolder.f31185H.setText(monthsLater.getLongName());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder.f31186I.findViewById(C5139R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthsLater.equals(materialCalendarGridView.getAdapter().f31215e)) {
            C5263b c5263b = new C5263b(monthsLater, this.f31181e, this.f31180d, this.f31182f);
            materialCalendarGridView.setNumColumns(monthsLater.daysInWeek);
            materialCalendarGridView.setAdapter((ListAdapter) c5263b);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m24025q(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new C5255a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(C5139R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.m23958D0(viewGroup.getContext())) {
            return new ViewHolder(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f31184h));
        return new ViewHolder(linearLayout, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f31180d.getMonthSpan();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.f31180d.getStart().monthsLater(i).getStableId();
    }
}
