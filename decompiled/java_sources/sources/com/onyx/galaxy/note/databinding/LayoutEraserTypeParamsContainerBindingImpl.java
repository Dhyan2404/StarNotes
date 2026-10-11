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
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView;

/* loaded from: classes9.dex */
public class LayoutEraserTypeParamsContainerBindingImpl extends LayoutEraserTypeParamsContainerBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57344v0;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f57345w0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57346q0;

    /* renamed from: t0 */
    @Nullable
    public final LayoutColorPropertyBinding f57347t0;

    /* renamed from: u0 */
    public long f57348u0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(8);
        f57344v0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_color_property"}, new int[]{2}, new int[]{C10651R.layout.layout_color_property});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57345w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.pixel_eraser, 3);
        sparseIntArray.put(C10651R.id.stroke_eraser, 4);
        sparseIntArray.put(C10651R.id.select_eraser, 5);
        sparseIntArray.put(C10651R.id.view_line, 6);
        sparseIntArray.put(C10651R.id.shape_size_container, 7);
    }

    public LayoutEraserTypeParamsContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57344v0, f57345w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57348u0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.f57347t0);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f57348u0 != 0) {
                return true;
            }
            return this.f57347t0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57348u0 = 1L;
        }
        this.f57347t0.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.f57347t0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public LayoutEraserTypeParamsContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ColorSizePropertyView) objArr[1], (TintImageView) objArr[3], (TintImageView) objArr[5], (LinearLayout) objArr[7], (TintImageView) objArr[4], (TintView) objArr[6]);
        this.f57348u0 = -1L;
        this.colorSizeProperty.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57346q0 = linearLayout;
        linearLayout.setTag(null);
        LayoutColorPropertyBinding layoutColorPropertyBinding = (LayoutColorPropertyBinding) objArr[2];
        this.f57347t0 = layoutColorPropertyBinding;
        setContainedBinding(layoutColorPropertyBinding);
        setRootTag(view);
        invalidateAll();
    }
}
