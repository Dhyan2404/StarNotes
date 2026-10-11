package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes9.dex */
public class LayoutStickerCategorySubBindingImpl extends LayoutStickerCategorySubBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57482u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57483v0 = null;

    /* renamed from: q0 */
    @NonNull
    public final RelativeLayout f57484q0;

    /* renamed from: t0 */
    public long f57485t0;

    public LayoutStickerCategorySubBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57482u0, f57483v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f57485t0;
            this.f57485t0 = 0L;
        }
        StickerCategoryModel stickerCategoryModel = this.mModel;
        long j2 = j & 3;
        String localTitle = (j2 == 0 || stickerCategoryModel == null) ? null : stickerCategoryModel.getLocalTitle();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.categoryNameButton, localTitle);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57485t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57485t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutStickerCategorySubBinding
    public void setModel(@Nullable StickerCategoryModel stickerCategoryModel) {
        this.mModel = stickerCategoryModel;
        synchronized (this) {
            this.f57485t0 |= 1;
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

    public LayoutStickerCategorySubBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[1]);
        this.f57485t0 = -1L;
        this.categoryNameButton.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f57484q0 = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
