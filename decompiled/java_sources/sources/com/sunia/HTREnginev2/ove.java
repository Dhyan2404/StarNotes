package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C5139R;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes6.dex */
public class ove extends BaseAdapter {

    /* renamed from: h */
    public static final int f80180h = 4;

    /* renamed from: i */
    public static final int f80181i = 4;

    /* renamed from: e */
    @NonNull
    public final Calendar f80182e;

    /* renamed from: f */
    public final int f80183f;

    /* renamed from: g */
    public final int f80184g;

    public ove() {
        Calendar m58538x = yyn.m58538x();
        this.f80182e = m58538x;
        this.f80183f = m58538x.getMaximum(7);
        this.f80184g = m58538x.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer getItem(int i) {
        if (i >= this.f80183f) {
            return null;
        }
        return Integer.valueOf(m56168b(i));
    }

    /* renamed from: b */
    public final int m56168b(int i) {
        int i2 = i + this.f80184g;
        int i3 = this.f80183f;
        return i2 > i3 ? i2 - i3 : i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f80183f;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    @Nullable
    @SuppressLint({"WrongConstant"})
    public View getView(int i, @Nullable View view, @NonNull ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(C5139R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        this.f80182e.set(7, m56168b(i));
        textView.setText(this.f80182e.getDisplayName(7, f80181i, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(C5139R.string.mtrl_picker_day_of_week_column_header), this.f80182e.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public ove(int i) {
        Calendar m58538x = yyn.m58538x();
        this.f80182e = m58538x;
        this.f80183f = m58538x.getMaximum(7);
        this.f80184g = i;
    }
}
