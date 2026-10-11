package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class ItemColorSetBindingImpl extends ItemColorSetBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56947t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56948u0;

    /* renamed from: q0 */
    public long f56949q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56948u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.nameText, 1);
        sparseIntArray.put(C10651R.id.iv_menu, 2);
        sparseIntArray.put(C10651R.id.gridLayout, 3);
        sparseIntArray.put(C10651R.id.grid1, 4);
        sparseIntArray.put(C10651R.id.grid2, 5);
        sparseIntArray.put(C10651R.id.grid3, 6);
        sparseIntArray.put(C10651R.id.grid4, 7);
        sparseIntArray.put(C10651R.id.grid5, 8);
    }

    public ItemColorSetBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56947t0, f56948u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56949q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56949q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56949q0 = 1L;
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

    public ItemColorSetBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ColorView) objArr[4], (ColorView) objArr[5], (ColorView) objArr[6], (ColorView) objArr[7], (ColorView) objArr[8], (TintLinearLayout) objArr[3], (TintImageView) objArr[2], (TintTextView) objArr[1], (ShadowLayout) objArr[0]);
        this.f56949q0 = -1L;
        this.shadowLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
