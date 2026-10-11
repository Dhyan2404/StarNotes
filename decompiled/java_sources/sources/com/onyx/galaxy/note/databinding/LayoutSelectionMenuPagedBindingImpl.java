package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class LayoutSelectionMenuPagedBindingImpl extends LayoutSelectionMenuPagedBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57456t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57457u0;

    /* renamed from: q0 */
    public long f57458q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57457u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cl_annotation_menu, 1);
        sparseIntArray.put(C10651R.id.sl_annotation_menu, 2);
        sparseIntArray.put(C10651R.id.iv_highlight, 3);
        sparseIntArray.put(C10651R.id.ivUnderline, 4);
        sparseIntArray.put(C10651R.id.iv_wavy_line, 5);
        sparseIntArray.put(C10651R.id.rv_annotation_color, 6);
        sparseIntArray.put(C10651R.id.fl_sub_menu, 7);
        sparseIntArray.put(C10651R.id.sub_menu_container, 8);
        sparseIntArray.put(C10651R.id.fl_primary_menu, 9);
        sparseIntArray.put(C10651R.id.menuContainer, 10);
        sparseIntArray.put(C10651R.id.arrowView, 11);
    }

    public LayoutSelectionMenuPagedBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f57456t0, f57457u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57458q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57458q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57458q0 = 1L;
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

    public LayoutSelectionMenuPagedBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[11], (TintConstraintLayout) objArr[1], (ShadowLayout) objArr[9], (ShadowLayout) objArr[7], (com.onyx.android.sdk.textbox.widget.TintImageView) objArr[3], (com.onyx.android.sdk.textbox.widget.TintImageView) objArr[4], (com.onyx.android.sdk.textbox.widget.TintImageView) objArr[5], (TintLinearLayout) objArr[10], (TintRecycleView) objArr[6], (ShadowLayout) objArr[2], (TintLinearLayout) objArr[8], (TintConstraintLayout) objArr[0]);
        this.f57458q0 = -1L;
        this.wrapper.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
