package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupNoteModeBindingImpl extends PopupNoteModeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57745u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57746v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57747q0;

    /* renamed from: t0 */
    public long f57748t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57746v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.lly_stylus_mode, 1);
        sparseIntArray.put(C10651R.id.iv_stylus_mode_selected, 2);
        sparseIntArray.put(C10651R.id.lly_finger_mode, 3);
        sparseIntArray.put(C10651R.id.iv_finger_mode_selected, 4);
        sparseIntArray.put(C10651R.id.lly_reading_mode, 5);
        sparseIntArray.put(C10651R.id.iv_reading_mode_selected, 6);
    }

    public PopupNoteModeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57745u0, f57746v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57748t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57748t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57748t0 = 1L;
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

    public PopupNoteModeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[4], (TintImageView) objArr[6], (TintImageView) objArr[2], (TintLinearLayout) objArr[3], (TintLinearLayout) objArr[5], (TintLinearLayout) objArr[1]);
        this.f57748t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57747q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
