package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemThemeBindingImpl extends ItemThemeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57234u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57235v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57236q0;

    /* renamed from: t0 */
    public long f57237t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57235v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.theme_container, 1);
        sparseIntArray.put(C10651R.id.iv_theme_thumbnail, 2);
        sparseIntArray.put(C10651R.id.tv_vip_style, 3);
        sparseIntArray.put(C10651R.id.cb_sel, 4);
        sparseIntArray.put(C10651R.id.iv_item_theme_stroke, 5);
        sparseIntArray.put(C10651R.id.iv_payment, 6);
        sparseIntArray.put(C10651R.id.tv_name, 7);
    }

    public ItemThemeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57234u0, f57235v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57237t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57237t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57237t0 = 1L;
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

    public ItemThemeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintCheckBox) objArr[4], (TintView) objArr[5], (ImageView) objArr[6], (ImageView) objArr[2], (ConstraintLayout) objArr[1], (TintTextView) objArr[7], (TextView) objArr[3]);
        this.f57237t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57236q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
