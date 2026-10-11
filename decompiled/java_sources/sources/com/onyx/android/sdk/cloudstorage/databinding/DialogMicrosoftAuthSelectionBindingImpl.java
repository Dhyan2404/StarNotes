package com.onyx.android.sdk.cloudstorage.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.cloudstorage.C7153R;

/* loaded from: classes7.dex */
public class DialogMicrosoftAuthSelectionBindingImpl extends DialogMicrosoftAuthSelectionBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f41109u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f41110v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f41111q0;

    /* renamed from: t0 */
    public long f41112t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41110v0 = sparseIntArray;
        sparseIntArray.put(C7153R.id.live_signin, 1);
        sparseIntArray.put(C7153R.id.office_signin, 2);
    }

    public DialogMicrosoftAuthSelectionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f41109u0, f41110v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f41112t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41112t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41112t0 = 1L;
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

    public DialogMicrosoftAuthSelectionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[1], (LinearLayout) objArr[2]);
        this.f41112t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f41111q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
