package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView;

/* loaded from: classes9.dex */
public class LayoutShapeParamsContainerBindingImpl extends LayoutShapeParamsContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57459u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57460v0;

    /* renamed from: q0 */
    @Nullable
    public final LayoutColorPropertyBinding f57461q0;

    /* renamed from: t0 */
    public long f57462t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(11);
        f57459u0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_color_property"}, new int[]{2}, new int[]{C10651R.layout.layout_color_property});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57460v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_color_set_status, 3);
        sparseIntArray.put(C10651R.id.view_line, 4);
        sparseIntArray.put(C10651R.id.shape_size_container, 5);
        sparseIntArray.put(C10651R.id.lineStyleGroup, 6);
        sparseIntArray.put(C10651R.id.lineStyleDivider, 7);
        sparseIntArray.put(C10651R.id.lineStyleContainer, 8);
        sparseIntArray.put(C10651R.id.lineStyleImage, 9);
        sparseIntArray.put(C10651R.id.lineStyleArrow, 10);
    }

    public LayoutShapeParamsContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f57459u0, f57460v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57462t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.f57461q0);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f57462t0 != 0) {
                return true;
            }
            return this.f57461q0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57462t0 = 1L;
        }
        this.f57461q0.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f57461q0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public LayoutShapeParamsContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ColorSizePropertyView) objArr[1], (TintImageView) objArr[3], (TintImageView) objArr[10], (TintLinearLayout) objArr[8], (TintView) objArr[7], (TintLinearLayout) objArr[6], (TintImageView) objArr[9], (LinearLayout) objArr[0], (LinearLayout) objArr[5], (TintView) objArr[4]);
        this.f57462t0 = -1L;
        this.colorSizeProperty.setTag(null);
        LayoutColorPropertyBinding layoutColorPropertyBinding = (LayoutColorPropertyBinding) objArr[2];
        this.f57461q0 = layoutColorPropertyBinding;
        setContainedBinding(layoutColorPropertyBinding);
        this.paramsContainer.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
