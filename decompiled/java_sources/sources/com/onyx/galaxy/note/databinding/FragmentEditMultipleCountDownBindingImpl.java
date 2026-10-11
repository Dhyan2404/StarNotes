package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.TimePickerView;
import com.onyx.galaxy.note.p048ui.view.ExpandToMaxHeightRecyclerView;

/* loaded from: classes9.dex */
public class FragmentEditMultipleCountDownBindingImpl extends FragmentEditMultipleCountDownBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56670u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56671v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56672q0;

    /* renamed from: t0 */
    public long f56673t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56671v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.rl_task_name, 1);
        sparseIntArray.put(C10651R.id.tv_total_time, 2);
        sparseIntArray.put(C10651R.id.edt_counter_name, 3);
        sparseIntArray.put(C10651R.id.divider, 4);
        sparseIntArray.put(C10651R.id.rv_task_time_list, 5);
        sparseIntArray.put(C10651R.id.rl_button, 6);
        sparseIntArray.put(C10651R.id.iv_icon_task_time_add, 7);
        sparseIntArray.put(C10651R.id.tv_task_time_add, 8);
        sparseIntArray.put(C10651R.id.time_picker, 9);
        sparseIntArray.put(C10651R.id.tv_save_time, 10);
    }

    public FragmentEditMultipleCountDownBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56670u0, f56671v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56673t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56673t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56673t0 = 1L;
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

    public FragmentEditMultipleCountDownBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[4], (TintEditText) objArr[3], (TintImageView) objArr[7], (TintRelativeLayout) objArr[6], (TintRelativeLayout) objArr[1], (ExpandToMaxHeightRecyclerView) objArr[5], (TimePickerView) objArr[9], (TintTextView) objArr[10], (TintTextView) objArr[8], (TintTextView) objArr[2]);
        this.f56673t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56672q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
