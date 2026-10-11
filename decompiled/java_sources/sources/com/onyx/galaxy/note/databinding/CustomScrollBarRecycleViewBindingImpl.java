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
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;

/* loaded from: classes9.dex */
public class CustomScrollBarRecycleViewBindingImpl extends CustomScrollBarRecycleViewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56308u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56309v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56310q0;

    /* renamed from: t0 */
    public long f56311t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56309v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.recycle_view, 1);
        sparseIntArray.put(C10651R.id.scroll_bar, 2);
    }

    public CustomScrollBarRecycleViewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f56308u0, f56309v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56311t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56311t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56311t0 = 1L;
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

    public CustomScrollBarRecycleViewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AutoFitRecycleView) objArr[1], (TintImageView) objArr[2]);
        this.f56311t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56310q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
