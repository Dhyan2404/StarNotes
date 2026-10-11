package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.PenShapeView;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;

/* loaded from: classes9.dex */
public class LayoutPhysicalShapeGroupBindingImpl extends LayoutPhysicalShapeGroupBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57428u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57429v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57430q0;

    /* renamed from: t0 */
    public long f57431t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57429v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ivShape, 1);
        sparseIntArray.put(C10651R.id.phyShapeTool, 2);
    }

    public LayoutPhysicalShapeGroupBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57428u0, f57429v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57431t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57431t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57431t0 = 1L;
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

    public LayoutPhysicalShapeGroupBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (PenShapeView) objArr[1], (PhysicalShapeIconView) objArr[2]);
        this.f57431t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57430q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
