package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupLoadingBindingImpl extends PopupLoadingBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57689u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57690v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57691q0;

    /* renamed from: t0 */
    public long f57692t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57690v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.loadingView, 1);
        sparseIntArray.put(C10651R.id.contentViewWrapper, 2);
    }

    public PopupLoadingBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57689u0, f57690v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57692t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57692t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57692t0 = 1L;
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

    public PopupLoadingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[2], (TintTextView) objArr[1]);
        this.f57692t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57691q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
