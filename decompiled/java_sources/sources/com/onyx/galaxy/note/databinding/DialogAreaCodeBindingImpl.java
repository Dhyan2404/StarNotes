package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogAreaCodeBindingImpl extends DialogAreaCodeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56322u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56323v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56324q0;

    /* renamed from: t0 */
    public long f56325t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56323v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.scrollable_tab_layout, 1);
        sparseIntArray.put(C10651R.id.f53355rv, 2);
    }

    public DialogAreaCodeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f56322u0, f56323v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56325t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56325t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56325t0 = 1L;
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

    public DialogAreaCodeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[2], (TintTabLayoutView) objArr[1]);
        this.f56325t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56324q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
