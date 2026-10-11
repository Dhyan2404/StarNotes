package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.common.view.SwipeFrameLayout;

/* loaded from: classes9.dex */
public class LayoutSwipeRecycleViewBindingImpl extends LayoutSwipeRecycleViewBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57496t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57497u0;

    /* renamed from: q0 */
    public long f57498q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57497u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.recyclerView, 1);
    }

    public LayoutSwipeRecycleViewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57496t0, f57497u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57498q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57498q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57498q0 = 1L;
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

    public LayoutSwipeRecycleViewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomScrollBarRecycleView) objArr[1], (SwipeFrameLayout) objArr[0]);
        this.f57498q0 = -1L;
        this.swipeContainer.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
