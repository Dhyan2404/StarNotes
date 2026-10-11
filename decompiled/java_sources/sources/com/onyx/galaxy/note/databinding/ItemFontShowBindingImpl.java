package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemFontShowBindingImpl extends ItemFontShowBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57036u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57037v0;

    /* renamed from: q0 */
    @NonNull
    public final TintRelativeLayout f57038q0;

    /* renamed from: t0 */
    public long f57039t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57037v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.previewImage, 2);
        sparseIntArray.put(C10651R.id.v_line, 3);
        sparseIntArray.put(C10651R.id.func_btn_container, 4);
        sparseIntArray.put(C10651R.id.selectButton, 5);
        sparseIntArray.put(C10651R.id.deleteButton, 6);
        sparseIntArray.put(C10651R.id.downloadingButton, 7);
        sparseIntArray.put(C10651R.id.downloadButton, 8);
    }

    public ItemFontShowBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f57036u0, f57037v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57039t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57039t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57039t0 = 1L;
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

    public ItemFontShowBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[6], (TintImageView) objArr[8], (TintImageView) objArr[7], (TintLinearLayout) objArr[4], (TintImageView) objArr[2], (TintImageView) objArr[5], (TintTextView) objArr[1], (TintView) objArr[3]);
        this.f57039t0 = -1L;
        TintRelativeLayout tintRelativeLayout = (TintRelativeLayout) objArr[0];
        this.f57038q0 = tintRelativeLayout;
        tintRelativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
