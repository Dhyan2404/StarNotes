package androidx.databinding.adapters;

import android.widget.SeekBar;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.InverseBindingMethod;
import androidx.databinding.InverseBindingMethods;

@InverseBindingMethods({@InverseBindingMethod(attribute = "android:progress", type = SeekBar.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class SeekBarBindingAdapter {

    /* loaded from: classes3.dex */
    public interface OnProgressChanged {
        void onProgressChanged(SeekBar seekBar, int i, boolean z);
    }

    /* loaded from: classes3.dex */
    public interface OnStartTrackingTouch {
        void onStartTrackingTouch(SeekBar seekBar);
    }

    /* loaded from: classes3.dex */
    public interface OnStopTrackingTouch {
        void onStopTrackingTouch(SeekBar seekBar);
    }

    /* renamed from: androidx.databinding.adapters.SeekBarBindingAdapter$a */
    /* loaded from: classes3.dex */
    public class C0990a implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: e */
        public final /* synthetic */ OnProgressChanged f6766e;

        /* renamed from: f */
        public final /* synthetic */ InverseBindingListener f6767f;

        /* renamed from: g */
        public final /* synthetic */ OnStartTrackingTouch f6768g;

        /* renamed from: h */
        public final /* synthetic */ OnStopTrackingTouch f6769h;

        public C0990a(OnProgressChanged onProgressChanged, InverseBindingListener inverseBindingListener, OnStartTrackingTouch onStartTrackingTouch, OnStopTrackingTouch onStopTrackingTouch) {
            this.f6766e = onProgressChanged;
            this.f6767f = inverseBindingListener;
            this.f6768g = onStartTrackingTouch;
            this.f6769h = onStopTrackingTouch;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            OnProgressChanged onProgressChanged = this.f6766e;
            if (onProgressChanged != null) {
                onProgressChanged.onProgressChanged(seekBar, i, z);
            }
            InverseBindingListener inverseBindingListener = this.f6767f;
            if (inverseBindingListener != null) {
                inverseBindingListener.onChange();
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            OnStartTrackingTouch onStartTrackingTouch = this.f6768g;
            if (onStartTrackingTouch != null) {
                onStartTrackingTouch.onStartTrackingTouch(seekBar);
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            OnStopTrackingTouch onStopTrackingTouch = this.f6769h;
            if (onStopTrackingTouch != null) {
                onStopTrackingTouch.onStopTrackingTouch(seekBar);
            }
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:onStartTrackingTouch", "android:onStopTrackingTouch", "android:onProgressChanged", "android:progressAttrChanged"})
    public static void setOnSeekBarChangeListener(SeekBar seekBar, OnStartTrackingTouch onStartTrackingTouch, OnStopTrackingTouch onStopTrackingTouch, OnProgressChanged onProgressChanged, InverseBindingListener inverseBindingListener) {
        if (onStartTrackingTouch == null && onStopTrackingTouch == null && onProgressChanged == null && inverseBindingListener == null) {
            seekBar.setOnSeekBarChangeListener(null);
        } else {
            seekBar.setOnSeekBarChangeListener(new C0990a(onProgressChanged, inverseBindingListener, onStartTrackingTouch, onStopTrackingTouch));
        }
    }

    @BindingAdapter({"android:progress"})
    public static void setProgress(SeekBar seekBar, int i) {
        if (i != seekBar.getProgress()) {
            seekBar.setProgress(i);
        }
    }
}
