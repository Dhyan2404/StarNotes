package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutTimePickerViewBindingImpl extends LayoutTimePickerViewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57502u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57503v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57504q0;

    /* renamed from: t0 */
    public long f57505t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57503v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.wv_hour, 1);
        sparseIntArray.put(C10651R.id.wv_minute, 2);
        sparseIntArray.put(C10651R.id.wv_second, 3);
    }

    public LayoutTimePickerViewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f57502u0, f57503v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57505t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57505t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57505t0 = 1L;
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

    public LayoutTimePickerViewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (WheelView) objArr[1], (WheelView) objArr[2], (WheelView) objArr[3]);
        this.f57505t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57504q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
