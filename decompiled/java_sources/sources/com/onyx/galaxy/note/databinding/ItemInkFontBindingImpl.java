package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemInkFontBindingImpl extends ItemInkFontBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57049u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57050v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57051q0;

    /* renamed from: t0 */
    public long f57052t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57050v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fontTitleThumbnail, 1);
        sparseIntArray.put(C10651R.id.selectedIcon, 2);
        sparseIntArray.put(C10651R.id.loadingIcon, 3);
        sparseIntArray.put(C10651R.id.downloadButton, 4);
        sparseIntArray.put(C10651R.id.bottomDivider, 5);
    }

    public ItemInkFontBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57049u0, f57050v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57052t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57052t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57052t0 = 1L;
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

    public ItemInkFontBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintView) objArr[5], (TintImageView) objArr[4], (TintImageView) objArr[1], (ImageView) objArr[3], (TintImageView) objArr[2]);
        this.f57052t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57051q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
