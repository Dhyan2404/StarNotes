package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupCustomCoverBindingImpl extends PopupCustomCoverBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57594u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57595v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57596q0;

    /* renamed from: t0 */
    public long f57597t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57595v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_import_from_gallery, 1);
        sparseIntArray.put(C10651R.id.tv_import_from_file, 2);
    }

    public PopupCustomCoverBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57594u0, f57595v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57597t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57597t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57597t0 = 1L;
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

    public PopupCustomCoverBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[2], (TintTextView) objArr[1]);
        this.f57597t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57596q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
