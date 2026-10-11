package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutStickerCategorySubBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView categoryNameButton;

    @Bindable
    protected StickerCategoryModel mModel;

    public LayoutStickerCategorySubBinding(Object obj, View view, int i, TintTextView tintTextView) {
        super(obj, view, i);
        this.categoryNameButton = tintTextView;
    }

    public static LayoutStickerCategorySubBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutStickerCategorySubBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public StickerCategoryModel getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable StickerCategoryModel stickerCategoryModel);

    @Deprecated
    public static LayoutStickerCategorySubBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutStickerCategorySubBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_sticker_category_sub);
    }

    @NonNull
    @Deprecated
    public static LayoutStickerCategorySubBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutStickerCategorySubBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_sticker_category_sub, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutStickerCategorySubBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutStickerCategorySubBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutStickerCategorySubBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_sticker_category_sub, null, false, obj);
    }
}
