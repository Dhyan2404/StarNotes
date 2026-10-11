package com.onyx.android.sdk.pay.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;

/* loaded from: classes8.dex */
public class DialogThemePayBindingImpl extends DialogThemePayBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f44132u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f44133v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f44134q0;

    /* renamed from: t0 */
    public long f44135t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f44133v0 = sparseIntArray;
        sparseIntArray.put(C7520R.id.tv_title, 1);
        sparseIntArray.put(C7520R.id.divider, 2);
        sparseIntArray.put(C7520R.id.tv_payment_tips, 3);
        sparseIntArray.put(C7520R.id.listView, 4);
        sparseIntArray.put(C7520R.id.tv_cancel, 5);
        sparseIntArray.put(C7520R.id.tv_confirm, 6);
    }

    public DialogThemePayBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f44132u0, f44133v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f44135t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f44135t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f44135t0 = 1L;
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

    public DialogThemePayBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[2], (RecyclerView) objArr[4], (MediumTextView) objArr[5], (MediumTextView) objArr[6], (TintTextView) objArr[3], (MediumTextView) objArr[1]);
        this.f44135t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f44134q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
