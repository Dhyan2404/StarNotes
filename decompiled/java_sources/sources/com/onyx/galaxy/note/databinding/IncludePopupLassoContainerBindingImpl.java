package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class IncludePopupLassoContainerBindingImpl extends IncludePopupLassoContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56917u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56918v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56919q0;

    /* renamed from: t0 */
    public long f56920t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56918v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_lasso_type_container, 1);
        sparseIntArray.put(C10651R.id.free_lasso_type, 2);
        sparseIntArray.put(C10651R.id.rectangle_lasso_type, 3);
        sparseIntArray.put(C10651R.id.tv_select_element_title, 4);
        sparseIntArray.put(C10651R.id.element_divider, 5);
        sparseIntArray.put(C10651R.id.lasso_element_list, 6);
    }

    public IncludePopupLassoContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56917u0, f56918v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56920t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56920t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56920t0 = 1L;
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

    public IncludePopupLassoContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[5], (TintImageView) objArr[2], (RecyclerView) objArr[6], (LinearLayout) objArr[1], (TintImageView) objArr[3], (TintTextView) objArr[4]);
        this.f56920t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56919q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
