package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutScaleIndicatorBindingImpl extends LayoutScaleIndicatorBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57440u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57441v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57442q0;

    /* renamed from: t0 */
    public long f57443t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57441v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_scale_container, 1);
        sparseIntArray.put(C10651R.id.iv_collection, 2);
        sparseIntArray.put(C10651R.id.ll_percent, 3);
        sparseIntArray.put(C10651R.id.percent, 4);
        sparseIntArray.put(C10651R.id.iv_arrow, 5);
        sparseIntArray.put(C10651R.id.lock, 6);
        sparseIntArray.put(C10651R.id.reset, 7);
    }

    public LayoutScaleIndicatorBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57440u0, f57441v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57443t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57443t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57443t0 = 1L;
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

    public LayoutScaleIndicatorBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[5], (TintImageView) objArr[2], (LinearLayout) objArr[3], (TintLinearLayout) objArr[1], (ImageView) objArr[6], (TintTextView) objArr[4], (TintImageView) objArr[7]);
        this.f57443t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57442q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
