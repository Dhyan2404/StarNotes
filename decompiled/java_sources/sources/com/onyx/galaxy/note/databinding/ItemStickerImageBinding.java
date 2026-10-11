package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemStickerImageBinding extends ViewDataBinding {

    @NonNull
    public final ImageView image;

    public ItemStickerImageBinding(Object obj, View view, int i, ImageView imageView) {
        super(obj, view, i);
        this.image = imageView;
    }

    public static ItemStickerImageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemStickerImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemStickerImageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemStickerImageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_sticker_image);
    }

    @NonNull
    @Deprecated
    public static ItemStickerImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemStickerImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_sticker_image, viewGroup, z, obj);
    }

    @NonNull
    public static ItemStickerImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemStickerImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemStickerImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_sticker_image, null, false, obj);
    }
}
