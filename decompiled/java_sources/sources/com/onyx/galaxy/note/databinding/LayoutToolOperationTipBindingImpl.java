package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class LayoutToolOperationTipBindingImpl extends LayoutToolOperationTipBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57509u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57510v0;

    /* renamed from: q0 */
    @NonNull
    public final ShadowLayout f57511q0;

    /* renamed from: t0 */
    public long f57512t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57510v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_tip, 1);
        sparseIntArray.put(C10651R.id.tv_action, 2);
        sparseIntArray.put(C10651R.id.tv_action_second, 3);
        sparseIntArray.put(C10651R.id.tv_ignore, 4);
    }

    public LayoutToolOperationTipBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57509u0, f57510v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57512t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57512t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57512t0 = 1L;
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

    public LayoutToolOperationTipBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[2], (TintTextView) objArr[3], (TintTextView) objArr[4], (TintTextView) objArr[1]);
        this.f57512t0 = -1L;
        ShadowLayout shadowLayout = (ShadowLayout) objArr[0];
        this.f57511q0 = shadowLayout;
        shadowLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
