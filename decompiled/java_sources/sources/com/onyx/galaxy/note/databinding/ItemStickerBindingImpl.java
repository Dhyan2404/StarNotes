package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemStickerBindingImpl extends ItemStickerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57204u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57205v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57206q0;

    /* renamed from: t0 */
    public long f57207t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57205v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.rly_sticker, 1);
        sparseIntArray.put(C10651R.id.image, 2);
        sparseIntArray.put(C10651R.id.checkbox, 3);
        sparseIntArray.put(C10651R.id.fly_add, 4);
        sparseIntArray.put(C10651R.id.iv_add, 5);
    }

    public ItemStickerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57204u0, f57205v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57207t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57207t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57207t0 = 1L;
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

    public ItemStickerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintCheckBox) objArr[3], (TintFrameLayout) objArr[4], (AppCompatImageView) objArr[2], (TintImageView) objArr[5], (TintRelativeLayout) objArr[1]);
        this.f57207t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57206q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
