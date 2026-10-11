package com.onyx.android.sdk.p039ui.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public class DialogNameEditBindingImpl extends DialogNameEditBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f47194u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f47195v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f47196q0;

    /* renamed from: t0 */
    public long f47197t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47195v0 = sparseIntArray;
        sparseIntArray.put(C8037R.id.tv_cancel, 1);
        sparseIntArray.put(C8037R.id.tv_title, 2);
        sparseIntArray.put(C8037R.id.tv_confirm, 3);
        sparseIntArray.put(C8037R.id.tv_edit_title, 4);
        sparseIntArray.put(C8037R.id.til_name, 5);
        sparseIntArray.put(C8037R.id.tie_name, 6);
        sparseIntArray.put(C8037R.id.tv_error_tips, 7);
        sparseIntArray.put(C8037R.id.tv_counter, 8);
    }

    public DialogNameEditBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f47194u0, f47195v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f47197t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47197t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47197t0 = 1L;
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

    public DialogNameEditBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (MaxLengthInputTextEdit) objArr[6], (TintTextInputLayoutView) objArr[5], (TintTextView) objArr[1], (MediumTextView) objArr[3], (TintTextView) objArr[8], (TintTextView) objArr[4], (TintTextView) objArr[7], (MediumTextView) objArr[2]);
        this.f47197t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f47196q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
