package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogContentInputBindingImpl extends DialogContentInputBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56342u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56343v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56344q0;

    /* renamed from: t0 */
    public long f56345t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56343v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.titleText, 1);
        sparseIntArray.put(C10651R.id.cancelButton, 2);
        sparseIntArray.put(C10651R.id.nextButton, 3);
        sparseIntArray.put(C10651R.id.subTitleText, 4);
        sparseIntArray.put(C10651R.id.countText, 5);
        sparseIntArray.put(C10651R.id.contentLayout, 6);
        sparseIntArray.put(C10651R.id.contentEdit, 7);
    }

    public DialogContentInputBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56342u0, f56343v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56345t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56345t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56345t0 = 1L;
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

    public DialogContentInputBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[2], (MaxLengthInputTextEdit) objArr[7], (TintTextInputLayoutView) objArr[6], (TintTextView) objArr[5], (TintTextView) objArr[3], (TintTextView) objArr[4], (TintTextView) objArr[1]);
        this.f56345t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56344q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
