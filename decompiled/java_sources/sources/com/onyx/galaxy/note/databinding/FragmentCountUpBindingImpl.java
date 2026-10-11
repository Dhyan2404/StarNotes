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
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.CountingTextView;

/* loaded from: classes9.dex */
public class FragmentCountUpBindingImpl extends FragmentCountUpBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56623u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56624v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56625q0;

    /* renamed from: t0 */
    public long f56626t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56624v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_counter, 1);
        sparseIntArray.put(C10651R.id.tv_start, 2);
        sparseIntArray.put(C10651R.id.tv_last_count, 3);
        sparseIntArray.put(C10651R.id.ll_menu, 4);
        sparseIntArray.put(C10651R.id.tv_label_counter_name, 5);
        sparseIntArray.put(C10651R.id.edt_counter_name, 6);
        sparseIntArray.put(C10651R.id.rl_timer_history_record, 7);
        sparseIntArray.put(C10651R.id.tv_timer_history_record, 8);
        sparseIntArray.put(C10651R.id.iv_new_record_indicator, 9);
    }

    public FragmentCountUpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56623u0, f56624v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56626t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56626t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56626t0 = 1L;
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

    public FragmentCountUpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintEditText) objArr[6], (TintImageView) objArr[9], (TintLinearLayout) objArr[4], (TintRelativeLayout) objArr[7], (CountingTextView) objArr[1], (TintTextView) objArr[5], (TintTextView) objArr[3], (TintTextView) objArr[2], (TintTextView) objArr[8]);
        this.f56626t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56625q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
