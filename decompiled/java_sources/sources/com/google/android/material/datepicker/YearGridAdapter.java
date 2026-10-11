package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.C5139R;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.timepicker.TimeModel;
import com.sunia.HTREnginev2.kve;
import com.sunia.HTREnginev2.smd;
import com.sunia.HTREnginev2.tmd;
import com.sunia.HTREnginev2.yyn;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes6.dex */
public class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: d */
    public final MaterialCalendar<?> f31200d;

    /* loaded from: classes6.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: H */
        public final TextView f31201H;

        public ViewHolder(TextView textView) {
            super(textView);
            this.f31201H = textView;
        }
    }

    /* renamed from: com.google.android.material.datepicker.YearGridAdapter$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5261a implements View.OnClickListener {

        /* renamed from: e */
        public final /* synthetic */ int f31202e;

        public ViewOnClickListenerC5261a(int i) {
            this.f31202e = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            YearGridAdapter.this.f31200d.m23942C0(YearGridAdapter.this.f31200d.m23948v0().clamp(Month.create(this.f31202e, YearGridAdapter.this.f31200d.m23950x0().month)));
            YearGridAdapter.this.f31200d.m23943D0(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    public YearGridAdapter(MaterialCalendar<?> materialCalendar) {
        this.f31200d = materialCalendar;
    }

    @NonNull
    /* renamed from: c */
    public final View.OnClickListener m23997c(int i) {
        return new ViewOnClickListenerC5261a(i);
    }

    /* renamed from: d */
    public int m23998d(int i) {
        return i - this.f31200d.m23948v0().getStart().year;
    }

    /* renamed from: e */
    public int m23999e(int i) {
        return this.f31200d.m23948v0().getStart().year + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        int m23999e = m23999e(i);
        viewHolder.f31201H.setText(String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, Integer.valueOf(m23999e)));
        TextView textView = viewHolder.f31201H;
        textView.setContentDescription(kve.m55338k(textView.getContext(), m23999e));
        tmd m23949w0 = this.f31200d.m23949w0();
        Calendar m58536v = yyn.m58536v();
        smd smdVar = m58536v.get(1) == m23999e ? m23949w0.f85486f : m23949w0.f85484d;
        Iterator<Long> it2 = this.f31200d.getDateSelector().getSelectedDays().iterator();
        while (it2.hasNext()) {
            m58536v.setTimeInMillis(it2.next().longValue());
            if (m58536v.get(1) == m23999e) {
                smdVar = m23949w0.f85485e;
            }
        }
        smdVar.m57177f(viewHolder.f31201H);
        viewHolder.f31201H.setOnClickListener(m23997c(m23999e));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C5139R.layout.mtrl_calendar_year, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f31200d.m23948v0().getYearSpan();
    }
}
