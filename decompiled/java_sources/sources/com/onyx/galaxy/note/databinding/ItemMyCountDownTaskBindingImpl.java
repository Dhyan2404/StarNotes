package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemMyCountDownTaskBindingImpl extends ItemMyCountDownTaskBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57071u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57072v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57073q0;

    /* renamed from: t0 */
    public long f57074t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57072v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_count_name, 1);
        sparseIntArray.put(C10651R.id.tv_total_time, 2);
        sparseIntArray.put(C10651R.id.iv_expand_flag_arrow, 3);
        sparseIntArray.put(C10651R.id.iv_more_option, 4);
        sparseIntArray.put(C10651R.id.tv_start, 5);
        sparseIntArray.put(C10651R.id.rv_task_time_list, 6);
    }

    public ItemMyCountDownTaskBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57071u0, f57072v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57074t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57074t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57074t0 = 1L;
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

    public ItemMyCountDownTaskBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[3], (TintImageView) objArr[4], (TintRecycleView) objArr[6], (TintTextView) objArr[1], (TintTextView) objArr[5], (TintTextView) objArr[2]);
        this.f57074t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57073q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
