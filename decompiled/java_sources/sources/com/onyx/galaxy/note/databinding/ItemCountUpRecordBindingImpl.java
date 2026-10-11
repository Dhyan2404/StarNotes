package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;

/* loaded from: classes9.dex */
public class ItemCountUpRecordBindingImpl extends ItemCountUpRecordBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56968u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56969v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56970q0;

    /* renamed from: t0 */
    public long f56971t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56969v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_total_time, 1);
        sparseIntArray.put(C10651R.id.fly_name, 2);
        sparseIntArray.put(C10651R.id.tv_count_name, 3);
        sparseIntArray.put(C10651R.id.fly_input, 4);
        sparseIntArray.put(C10651R.id.edit_counter_name, 5);
        sparseIntArray.put(C10651R.id.iv_more_option, 6);
        sparseIntArray.put(C10651R.id.checkbox, 7);
        sparseIntArray.put(C10651R.id.tv_time, 8);
        sparseIntArray.put(C10651R.id.iv_expand_flag_arrow, 9);
        sparseIntArray.put(C10651R.id.rv_task_time_list, 10);
    }

    public ItemCountUpRecordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56968u0, f56969v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56971t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56971t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56971t0 = 1L;
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

    public ItemCountUpRecordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[7], (TintEditText) objArr[5], (TintFrameLayout) objArr[4], (TintFrameLayout) objArr[2], (TintImageView) objArr[9], (TintImageView) objArr[6], (ThemeRecyclerView) objArr[10], (TintTextView) objArr[3], (TintTextView) objArr[8], (TintTextView) objArr[1]);
        this.f56971t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56970q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
