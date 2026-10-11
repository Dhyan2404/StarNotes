package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public class DialogLocalRecoveryBindingImpl extends DialogLocalRecoveryBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56429u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56430v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56431q0;

    /* renamed from: t0 */
    public long f56432t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56430v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.iv_close, 2);
        sparseIntArray.put(C10651R.id.progress, 3);
        sparseIntArray.put(C10651R.id.tv_progress, 4);
        sparseIntArray.put(C10651R.id.tv_finish_title, 5);
        sparseIntArray.put(C10651R.id.tv_finish_sub_title, 6);
        sparseIntArray.put(C10651R.id.tv_error_title, 7);
        sparseIntArray.put(C10651R.id.tv_error_sub_title, 8);
        sparseIntArray.put(C10651R.id.group_progress, 9);
        sparseIntArray.put(C10651R.id.group_finished, 10);
        sparseIntArray.put(C10651R.id.group_error, 11);
        sparseIntArray.put(C10651R.id.item_error_list_layout, 12);
        sparseIntArray.put(C10651R.id.item_error_list, 13);
    }

    public DialogLocalRecoveryBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f56429u0, f56430v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56432t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56432t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56432t0 = 1L;
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

    public DialogLocalRecoveryBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Group) objArr[11], (Group) objArr[10], (Group) objArr[9], (MaxHeightRecyclerView) objArr[13], (TintLinearLayout) objArr[12], (TintImageView) objArr[2], (TintProgressBar) objArr[3], (TintTextView) objArr[8], (TintTextView) objArr[7], (TintTextView) objArr[6], (TintTextView) objArr[5], (TintTextView) objArr[4], (MediumTextView) objArr[1]);
        this.f56432t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f56431q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
