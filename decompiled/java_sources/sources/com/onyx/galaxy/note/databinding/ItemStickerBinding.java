package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemStickerBinding extends ViewDataBinding {

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final TintFrameLayout flyAdd;

    @NonNull
    public final AppCompatImageView image;

    @NonNull
    public final TintImageView ivAdd;

    @NonNull
    public final TintRelativeLayout rlySticker;

    public ItemStickerBinding(Object obj, View view, int i, TintCheckBox tintCheckBox, TintFrameLayout tintFrameLayout, AppCompatImageView appCompatImageView, TintImageView tintImageView, TintRelativeLayout tintRelativeLayout) {
        super(obj, view, i);
        this.checkbox = tintCheckBox;
        this.flyAdd = tintFrameLayout;
        this.image = appCompatImageView;
        this.ivAdd = tintImageView;
        this.rlySticker = tintRelativeLayout;
    }

    public static ItemStickerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemStickerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemStickerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_sticker);
    }

    @NonNull
    @Deprecated
    public static ItemStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemStickerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_sticker, viewGroup, z, obj);
    }

    @NonNull
    public static ItemStickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemStickerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_sticker, null, false, obj);
    }
}
