package androidx.databinding.adapters;

import android.widget.CalendarView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethod;
import androidx.databinding.InverseBindingMethods;

@InverseBindingMethods({@InverseBindingMethod(attribute = "android:date", type = CalendarView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class CalendarViewBindingAdapter {

    /* renamed from: androidx.databinding.adapters.CalendarViewBindingAdapter$a */
    /* loaded from: classes3.dex */
    public class C0981a implements CalendarView.OnDateChangeListener {

        /* renamed from: a */
        public final /* synthetic */ CalendarView.OnDateChangeListener f6747a;

        /* renamed from: b */
        public final /* synthetic */ InverseBindingListener f6748b;

        public C0981a(CalendarView.OnDateChangeListener onDateChangeListener, InverseBindingListener inverseBindingListener) {
            this.f6747a = onDateChangeListener;
            this.f6748b = inverseBindingListener;
        }

        @Override // android.widget.CalendarView.OnDateChangeListener
        public void onSelectedDayChange(CalendarView calendarView, int i, int i2, int i3) {
            CalendarView.OnDateChangeListener onDateChangeListener = this.f6747a;
            if (onDateChangeListener != null) {
                onDateChangeListener.onSelectedDayChange(calendarView, i, i2, i3);
            }
            this.f6748b.onChange();
        }
    }

    @BindingAdapter({"android:date"})
    public static void setDate(CalendarView calendarView, long j) {
        if (calendarView.getDate() != j) {
            calendarView.setDate(j);
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onSelectedDayChange", "android:dateAttrChanged"})
    public static void setListeners(CalendarView calendarView, CalendarView.OnDateChangeListener onDateChangeListener, InverseBindingListener inverseBindingListener) {
        if (inverseBindingListener == null) {
            calendarView.setOnDateChangeListener(onDateChangeListener);
        } else {
            calendarView.setOnDateChangeListener(new C0981a(onDateChangeListener, inverseBindingListener));
        }
    }
}
