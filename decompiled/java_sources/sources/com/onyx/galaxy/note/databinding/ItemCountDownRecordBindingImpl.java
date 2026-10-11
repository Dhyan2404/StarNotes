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

/* loaded from: classes9.dex */
public class ItemCountDownRecordBindingImpl extends ItemCountDownRecordBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56957t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56958u0;

    /* renamed from: q0 */
    public long f56959q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56958u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_total_time, 1);
        sparseIntArray.put(C10651R.id.fly_name, 2);
        sparseIntArray.put(C10651R.id.tv_count_name, 3);
        sparseIntArray.put(C10651R.id.fly_input, 4);
        sparseIntArray.put(C10651R.id.edit_counter_name, 5);
        sparseIntArray.put(C10651R.id.tv_time, 6);
        sparseIntArray.put(C10651R.id.iv_more_option, 7);
        sparseIntArray.put(C10651R.id.checkbox, 8);
    }

    public ItemCountDownRecordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56957t0, f56958u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56959q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56959q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56959q0 = 1L;
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

    public ItemCountDownRecordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[8], (TintConstraintLayout) objArr[0], (TintEditText) objArr[5], (TintFrameLayout) objArr[4], (TintFrameLayout) objArr[2], (TintImageView) objArr[7], (TintTextView) objArr[3], (TintTextView) objArr[6], (TintTextView) objArr[1]);
        this.f56959q0 = -1L;
        this.clContentLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
