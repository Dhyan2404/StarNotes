package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeIconView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class ItemToolbarCustomBindingImpl extends ItemToolbarCustomBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57241t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57242u0;

    /* renamed from: q0 */
    public long f57243q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57242u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ic_eye, 1);
        sparseIntArray.put(C10651R.id.menu_icon, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.ic_drag_tag, 4);
        sparseIntArray.put(C10651R.id.v_line, 5);
    }

    public ItemToolbarCustomBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57241t0, f57242u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57243q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57243q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57243q0 = 1L;
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

    public ItemToolbarCustomBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[4], (TintImageView) objArr[1], (ShapeIconView) objArr[2], (ShadowLayout) objArr[0], (TintTextView) objArr[3], (TintView) objArr[5]);
        this.f57243q0 = -1L;
        this.shadowLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
