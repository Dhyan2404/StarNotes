package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentSettingsStylusBindingImpl extends FragmentSettingsStylusBinding {

    /* renamed from: w0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56855w0 = null;

    /* renamed from: x0 */
    @Nullable
    public static final SparseIntArray f56856x0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56857q0;

    /* renamed from: t0 */
    @NonNull
    public final LinearLayout f56858t0;

    /* renamed from: u0 */
    @NonNull
    public final LinearLayout f56859u0;

    /* renamed from: v0 */
    public long f56860v0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56856x0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_pinch_slide, 3);
        sparseIntArray.put(C10651R.id.include_special_device, 4);
        sparseIntArray.put(C10651R.id.include_stylus_fun, 5);
        sparseIntArray.put(C10651R.id.common_device_stylus_container, 6);
        sparseIntArray.put(C10651R.id.double_click_container, 7);
        sparseIntArray.put(C10651R.id.tv_stylus_pen_double_click_name, 8);
        sparseIntArray.put(C10651R.id.tv_stylus_pen_double_click_fun, 9);
        sparseIntArray.put(C10651R.id.long_press_container, 10);
        sparseIntArray.put(C10651R.id.tv_long_press_name, 11);
        sparseIntArray.put(C10651R.id.tv_stylus_button_long_press_fun, 12);
        sparseIntArray.put(C10651R.id.primary_click_container, 13);
        sparseIntArray.put(C10651R.id.tv_primary_click_name, 14);
        sparseIntArray.put(C10651R.id.tv_primary_click_fun, 15);
        sparseIntArray.put(C10651R.id.secondary_click_container, 16);
        sparseIntArray.put(C10651R.id.tv_secondary_click_name, 17);
        sparseIntArray.put(C10651R.id.tv_secondary_click_fun, 18);
    }

    public FragmentSettingsStylusBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f56855w0, f56856x0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56860v0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56860v0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56860v0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentSettingsStylusBindingImpl(androidx.databinding.DataBindingComponent r23, android.view.View r24, java.lang.Object[] r25) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSettingsStylusBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
