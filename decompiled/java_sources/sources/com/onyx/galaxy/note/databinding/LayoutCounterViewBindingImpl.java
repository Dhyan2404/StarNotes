package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.CounterTimeListView;
import com.onyx.galaxy.note.editor.view.CountingTextView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class LayoutCounterViewBindingImpl extends LayoutCounterViewBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57323t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57324u0;

    /* renamed from: q0 */
    public long f57325q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57324u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.counter_time_list, 1);
        sparseIntArray.put(C10651R.id.fl_collapse, 2);
        sparseIntArray.put(C10651R.id.tv_collapse_counting, 3);
        sparseIntArray.put(C10651R.id.ctl_expand, 4);
        sparseIntArray.put(C10651R.id.iv_collapse, 5);
        sparseIntArray.put(C10651R.id.divider_icon, 6);
        sparseIntArray.put(C10651R.id.tv_count_name, 7);
        sparseIntArray.put(C10651R.id.tv_expand_counting, 8);
        sparseIntArray.put(C10651R.id.fl_control, 9);
        sparseIntArray.put(C10651R.id.tv_control, 10);
        sparseIntArray.put(C10651R.id.tv_reset, 11);
        sparseIntArray.put(C10651R.id.tv_split_time, 12);
        sparseIntArray.put(C10651R.id.tv_shutdown, 13);
    }

    public LayoutCounterViewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57323t0, f57324u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57325q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57325q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57325q0 = 1L;
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

    public LayoutCounterViewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CounterTimeListView) objArr[1], (TintConstraintLayout) objArr[4], (TintView) objArr[6], (TintFrameLayout) objArr[2], (FrameLayout) objArr[9], (ShadowLayout) objArr[0], (TintImageView) objArr[5], (CountingTextView) objArr[3], (TextView) objArr[10], (TintTextView) objArr[7], (CountingTextView) objArr[8], (TintTextView) objArr[11], (TintTextView) objArr[13], (TintTextView) objArr[12]);
        this.f57325q0 = -1L;
        this.icon.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
