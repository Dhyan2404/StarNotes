package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutLassoTypeParamsContainerBindingImpl extends LayoutLassoTypeParamsContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57375u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57376v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57377q0;

    /* renamed from: t0 */
    public long f57378t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57376v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.free_lasso_type, 1);
        sparseIntArray.put(C10651R.id.rectangle_lasso_type, 2);
    }

    public LayoutLassoTypeParamsContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57375u0, f57376v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57378t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57378t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57378t0 = 1L;
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

    public LayoutLassoTypeParamsContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[1], (TintImageView) objArr[2]);
        this.f57378t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57377q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
