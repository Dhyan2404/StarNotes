package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutPageNumFloatBarBindingImpl extends LayoutPageNumFloatBarBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57408t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57409u0;

    /* renamed from: q0 */
    public long f57410q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57409u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.pageScrollerVertical, 1);
        sparseIntArray.put(C10651R.id.pageScrollerHorizon, 2);
    }

    public LayoutPageNumFloatBarBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57408t0, f57409u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57410q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57410q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57410q0 = 1L;
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

    public LayoutPageNumFloatBarBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[0], (TintImageView) objArr[2], (TintImageView) objArr[1]);
        this.f57410q0 = -1L;
        this.pageScrollerContainer.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
