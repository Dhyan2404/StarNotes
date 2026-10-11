package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public class FragmentMaterialTemplateBindingImpl extends FragmentMaterialTemplateBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56726u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56727v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56728q0;

    /* renamed from: t0 */
    public long f56729t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56727v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.rl_category_title, 1);
        sparseIntArray.put(C10651R.id.cl_category_added_template, 2);
        sparseIntArray.put(C10651R.id.empty_view, 3);
    }

    public FragmentMaterialTemplateBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f56726u0, f56727v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56729t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56729t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56729t0 = 1L;
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

    public FragmentMaterialTemplateBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintRecycleView) objArr[2], (CommonEmptyView) objArr[3], (TintRecycleView) objArr[1]);
        this.f56729t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56728q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
