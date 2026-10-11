package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.TimePickerView;

/* loaded from: classes9.dex */
public class FragmentCountDownBindingImpl extends FragmentCountDownBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56619u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56620v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56621q0;

    /* renamed from: t0 */
    public long f56622t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56620v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.time_picker, 1);
        sparseIntArray.put(C10651R.id.tv_start, 2);
        sparseIntArray.put(C10651R.id.lly_input, 3);
        sparseIntArray.put(C10651R.id.tv_label_counter_name, 4);
        sparseIntArray.put(C10651R.id.edt_counter_name, 5);
        sparseIntArray.put(C10651R.id.ll_more, 6);
        sparseIntArray.put(C10651R.id.tv_my_timer_task, 7);
        sparseIntArray.put(C10651R.id.rl_timer_history_record, 8);
        sparseIntArray.put(C10651R.id.tv_timer_history_record, 9);
        sparseIntArray.put(C10651R.id.iv_new_record_indicator, 10);
    }

    public FragmentCountDownBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56619u0, f56620v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56622t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56622t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56622t0 = 1L;
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

    public FragmentCountDownBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintEditText) objArr[5], (TintImageView) objArr[10], (TintLinearLayout) objArr[6], (TintLinearLayout) objArr[3], (TintRelativeLayout) objArr[8], (TimePickerView) objArr[1], (TintTextView) objArr[4], (TintFrameLayout) objArr[7], (TintTextView) objArr[2], (TintTextView) objArr[9]);
        this.f56622t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56621q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
