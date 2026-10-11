package com.onyx.android.sdk.imagepicker.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;

/* loaded from: classes7.dex */
public class ActivityFilePickerBindingImpl extends ActivityFilePickerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f42687u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f42688v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f42689q0;

    /* renamed from: t0 */
    public long f42690t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f42688v0 = sparseIntArray;
        sparseIntArray.put(C7453R.id.tv_title, 1);
        sparseIntArray.put(C7453R.id.iv_back, 2);
        sparseIntArray.put(C7453R.id.tv_import, 3);
        sparseIntArray.put(C7453R.id.title_input_layout, 4);
        sparseIntArray.put(C7453R.id.title_edit, 5);
        sparseIntArray.put(C7453R.id.iv_search, 6);
        sparseIntArray.put(C7453R.id.tv_system_file_manager, 7);
        sparseIntArray.put(C7453R.id.tab_layout, 8);
        sparseIntArray.put(C7453R.id.divider, 9);
        sparseIntArray.put(C7453R.id.rl_file_list, 10);
        sparseIntArray.put(C7453R.id.ll_empty_container, 11);
        sparseIntArray.put(C7453R.id.tv_search_empty, 12);
    }

    public ActivityFilePickerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f42687u0, f42688v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f42690t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f42690t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f42690t0 = 1L;
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

    public ActivityFilePickerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[9], (TintImageView) objArr[2], (TintImageView) objArr[6], (LinearLayout) objArr[11], (RecyclerView) objArr[10], (TintTabLayoutView) objArr[8], (TintTextInputEditTextView) objArr[5], (TintTextInputLayoutView) objArr[4], (MediumTextView) objArr[3], (TintTextView) objArr[12], (TintTextView) objArr[7], (MediumTextView) objArr[1]);
        this.f42690t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f42689q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
