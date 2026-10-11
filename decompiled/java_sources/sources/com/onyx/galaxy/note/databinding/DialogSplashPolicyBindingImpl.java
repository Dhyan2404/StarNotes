package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogSplashPolicyBindingImpl extends DialogSplashPolicyBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56543t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56544u0;

    /* renamed from: q0 */
    public long f56545q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56544u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_dialog_title, 1);
        sparseIntArray.put(C10651R.id.btn_ok, 2);
        sparseIntArray.put(C10651R.id.btn_cancel, 3);
    }

    public DialogSplashPolicyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f56543t0, f56544u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56545q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56545q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56545q0 = 1L;
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

    public DialogSplashPolicyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[3], (TintTextView) objArr[2], (FrameLayout) objArr[0], (TintCheckBox) objArr[1]);
        this.f56545q0 = -1L;
        this.flPrivacy.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
