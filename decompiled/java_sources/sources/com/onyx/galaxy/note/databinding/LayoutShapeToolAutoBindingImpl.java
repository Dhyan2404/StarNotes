package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.HorizontalScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer;

/* loaded from: classes9.dex */
public class LayoutShapeToolAutoBindingImpl extends LayoutShapeToolAutoBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57463u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57464v0;

    /* renamed from: q0 */
    @NonNull
    public final HorizontalScrollView f57465q0;

    /* renamed from: t0 */
    public long f57466t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57464v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_shape_tool_container, 1);
    }

    public LayoutShapeToolAutoBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57463u0, f57464v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57466t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57466t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57466t0 = 1L;
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

    public LayoutShapeToolAutoBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShapeToolContainer) objArr[1]);
        this.f57466t0 = -1L;
        HorizontalScrollView horizontalScrollView = (HorizontalScrollView) objArr[0];
        this.f57465q0 = horizontalScrollView;
        horizontalScrollView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
