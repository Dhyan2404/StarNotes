package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class LayoutShapesLocationBarBindingImpl extends LayoutShapesLocationBarBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57467u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57468v0;

    /* renamed from: q0 */
    @NonNull
    public final ShadowLayout f57469q0;

    /* renamed from: t0 */
    public long f57470t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57468v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.container, 1);
        sparseIntArray.put(C10651R.id.prev, 2);
        sparseIntArray.put(C10651R.id.origin, 3);
        sparseIntArray.put(C10651R.id.next, 4);
    }

    public LayoutShapesLocationBarBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57467u0, f57468v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57470t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57470t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57470t0 = 1L;
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

    public LayoutShapesLocationBarBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintFrameLayout) objArr[1], (TintImageView) objArr[4], (TintImageView) objArr[3], (TintImageView) objArr[2]);
        this.f57470t0 = -1L;
        ShadowLayout shadowLayout = (ShadowLayout) objArr[0];
        this.f57469q0 = shadowLayout;
        shadowLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
