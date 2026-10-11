package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;

/* loaded from: classes9.dex */
public class PopupWritePenGroupBindingImpl extends PopupWritePenGroupBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57925u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57926v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57927q0;

    /* renamed from: t0 */
    public long f57928t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(13);
        f57925u0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"include_ink_pen_popup_params", "include_art_ink_pen_popup_params", "include_soft_paint_pen_popup_params", "include_ballpoint_pen_popup_params", "include_pencil_popup_params"}, new int[]{2, 3, 4, 5, 6}, new int[]{C10651R.layout.include_ink_pen_popup_params, C10651R.layout.include_art_ink_pen_popup_params, C10651R.layout.include_soft_paint_pen_popup_params, C10651R.layout.include_ballpoint_pen_popup_params, C10651R.layout.include_pencil_popup_params});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57926v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 7);
        sparseIntArray.put(C10651R.id.divider, 8);
        sparseIntArray.put(C10651R.id.shape_tool_container, 9);
        sparseIntArray.put(C10651R.id.tv_color_title, 10);
        sparseIntArray.put(C10651R.id.color_layout, 11);
        sparseIntArray.put(C10651R.id.add_to_pen_box, 12);
    }

    public PopupWritePenGroupBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f57925u0, f57926v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57928t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.inkParams);
        ViewDataBinding.executeBindingsOn(this.artPenParams);
        ViewDataBinding.executeBindingsOn(this.softPaintPenParams);
        ViewDataBinding.executeBindingsOn(this.ballpointPenParams);
        ViewDataBinding.executeBindingsOn(this.pencilParams);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f57928t0 != 0) {
                return true;
            }
            return this.inkParams.hasPendingBindings() || this.artPenParams.hasPendingBindings() || this.softPaintPenParams.hasPendingBindings() || this.ballpointPenParams.hasPendingBindings() || this.pencilParams.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57928t0 = 32L;
        }
        this.inkParams.invalidateAll();
        this.artPenParams.invalidateAll();
        this.softPaintPenParams.invalidateAll();
        this.ballpointPenParams.invalidateAll();
        this.pencilParams.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45368t((IncludeInkPenPopupParamsBinding) obj, i2);
        }
        if (i == 1) {
            return m45370v((IncludeSoftPaintPenPopupParamsBinding) obj, i2);
        }
        if (i == 2) {
            return m45366r((IncludeArtInkPenPopupParamsBinding) obj, i2);
        }
        if (i == 3) {
            return m45367s((IncludeBallpointPenPopupParamsBinding) obj, i2);
        }
        if (i != 4) {
            return false;
        }
        return m45369u((IncludePencilPopupParamsBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45366r(IncludeArtInkPenPopupParamsBinding includeArtInkPenPopupParamsBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57928t0 |= 4;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45367s(IncludeBallpointPenPopupParamsBinding includeBallpointPenPopupParamsBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57928t0 |= 8;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.inkParams.setLifecycleOwner(lifecycleOwner);
        this.artPenParams.setLifecycleOwner(lifecycleOwner);
        this.softPaintPenParams.setLifecycleOwner(lifecycleOwner);
        this.ballpointPenParams.setLifecycleOwner(lifecycleOwner);
        this.pencilParams.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    /* renamed from: t */
    public final boolean m45368t(IncludeInkPenPopupParamsBinding includeInkPenPopupParamsBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57928t0 |= 1;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45369u(IncludePencilPopupParamsBinding includePencilPopupParamsBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57928t0 |= 16;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45370v(IncludeSoftPaintPenPopupParamsBinding includeSoftPaintPenPopupParamsBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57928t0 |= 2;
        }
        return true;
    }

    public PopupWritePenGroupBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 5, (TintTextView) objArr[12], (IncludeArtInkPenPopupParamsBinding) objArr[3], (IncludeBallpointPenPopupParamsBinding) objArr[5], (ShapeColorArgsPropertyLayout) objArr[11], (TintView) objArr[8], (IncludeInkPenPopupParamsBinding) objArr[2], (FrameLayout) objArr[1], (IncludePencilPopupParamsBinding) objArr[6], (PhysicalShapeIconContainer) objArr[9], (IncludeSoftPaintPenPopupParamsBinding) objArr[4], (TintTextView) objArr[10], (MediumTextView) objArr[7]);
        this.f57928t0 = -1L;
        setContainedBinding(this.artPenParams);
        setContainedBinding(this.ballpointPenParams);
        setContainedBinding(this.inkParams);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57927q0 = frameLayout;
        frameLayout.setTag(null);
        this.paramsContainer.setTag(null);
        setContainedBinding(this.pencilParams);
        setContainedBinding(this.softPaintPenParams);
        setRootTag(view);
        invalidateAll();
    }
}
