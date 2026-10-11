package androidx.databinding.adapters;

import android.widget.DatePicker;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethod;
import androidx.databinding.InverseBindingMethods;
import androidx.databinding.library.baseAdapters.C1002R;

@InverseBindingMethods({@InverseBindingMethod(attribute = "android:year", type = DatePicker.class), @InverseBindingMethod(attribute = "android:month", type = DatePicker.class), @InverseBindingMethod(attribute = "android:day", method = "getDayOfMonth", type = DatePicker.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class DatePickerBindingAdapter {

    /* renamed from: androidx.databinding.adapters.DatePickerBindingAdapter$b */
    /* loaded from: classes3.dex */
    public static class C0984b implements DatePicker.OnDateChangedListener {

        /* renamed from: e */
        public DatePicker.OnDateChangedListener f6751e;

        /* renamed from: f */
        public InverseBindingListener f6752f;

        /* renamed from: g */
        public InverseBindingListener f6753g;

        /* renamed from: h */
        public InverseBindingListener f6754h;

        public C0984b() {
        }

        /* renamed from: a */
        public void m4108a(DatePicker.OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
            this.f6751e = onDateChangedListener;
            this.f6752f = inverseBindingListener;
            this.f6753g = inverseBindingListener2;
            this.f6754h = inverseBindingListener3;
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            DatePicker.OnDateChangedListener onDateChangedListener = this.f6751e;
            if (onDateChangedListener != null) {
                onDateChangedListener.onDateChanged(datePicker, i, i2, i3);
            }
            InverseBindingListener inverseBindingListener = this.f6752f;
            if (inverseBindingListener != null) {
                inverseBindingListener.onChange();
            }
            InverseBindingListener inverseBindingListener2 = this.f6753g;
            if (inverseBindingListener2 != null) {
                inverseBindingListener2.onChange();
            }
            InverseBindingListener inverseBindingListener3 = this.f6754h;
            if (inverseBindingListener3 != null) {
                inverseBindingListener3.onChange();
            }
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:year", "android:month", "android:day", "android:onDateChanged", "android:yearAttrChanged", "android:monthAttrChanged", "android:dayAttrChanged"})
    public static void setListeners(DatePicker datePicker, int i, int i2, int i3, DatePicker.OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
        if (i == 0) {
            i = datePicker.getYear();
        }
        if (i3 == 0) {
            i3 = datePicker.getDayOfMonth();
        }
        if (inverseBindingListener == null && inverseBindingListener2 == null && inverseBindingListener3 == null) {
            datePicker.init(i, i2, i3, onDateChangedListener);
            return;
        }
        C0984b c0984b = (C0984b) ListenerUtil.getListener(datePicker, C1002R.id.onDateChanged);
        if (c0984b == null) {
            c0984b = new C0984b();
            ListenerUtil.trackListener(datePicker, c0984b, C1002R.id.onDateChanged);
        }
        c0984b.m4108a(onDateChangedListener, inverseBindingListener, inverseBindingListener2, inverseBindingListener3);
        datePicker.init(i, i2, i3, c0984b);
    }
}
