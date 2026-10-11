package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutStickerCategorySelectBindingImpl extends LayoutStickerCategorySelectBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57478u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57479v0;

    /* renamed from: q0 */
    @NonNull
    public final TintTextView f57480q0;

    /* renamed from: t0 */
    public long f57481t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57479v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.selected_image, 2);
    }

    public LayoutStickerCategorySelectBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57478u0, f57479v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f57481t0;
            this.f57481t0 = 0L;
        }
        StickerCategoryModel stickerCategoryModel = this.mModel;
        long j2 = j & 3;
        String localTitle = (j2 == 0 || stickerCategoryModel == null) ? null : stickerCategoryModel.getLocalTitle();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.f57480q0, localTitle);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57481t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57481t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutStickerCategorySelectBinding
    public void setModel(@Nullable StickerCategoryModel stickerCategoryModel) {
        this.mModel = stickerCategoryModel;
        synchronized (this) {
            this.f57481t0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((StickerCategoryModel) obj);
        return true;
    }

    public LayoutStickerCategorySelectBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[0], (TintImageView) objArr[2]);
        this.f57481t0 = -1L;
        this.item.setTag(null);
        TintTextView tintTextView = (TintTextView) objArr[1];
        this.f57480q0 = tintTextView;
        tintTextView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
