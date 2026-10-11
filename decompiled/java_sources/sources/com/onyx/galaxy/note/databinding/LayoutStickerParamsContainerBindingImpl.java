package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutStickerParamsContainerBindingImpl extends LayoutStickerParamsContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57486u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57487v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57488q0;

    /* renamed from: t0 */
    public long f57489t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57487v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.listview, 1);
    }

    public LayoutStickerParamsContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57486u0, f57487v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57489t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57489t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57489t0 = 1L;
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

    public LayoutStickerParamsContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[1]);
        this.f57489t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57488q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
