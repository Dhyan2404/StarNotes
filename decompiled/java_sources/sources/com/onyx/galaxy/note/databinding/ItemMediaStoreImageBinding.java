package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.RoundImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemMediaStoreImageBinding extends ViewDataBinding {

    @NonNull
    public final RoundImageView image;

    /* renamed from: rl */
    @NonNull
    public final RelativeLayout f57067rl;

    public ItemMediaStoreImageBinding(Object obj, View view, int i, RoundImageView roundImageView, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.image = roundImageView;
        this.f57067rl = relativeLayout;
    }

    public static ItemMediaStoreImageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemMediaStoreImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemMediaStoreImageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemMediaStoreImageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_media_store_image);
    }

    @NonNull
    @Deprecated
    public static ItemMediaStoreImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemMediaStoreImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_media_store_image, viewGroup, z, obj);
    }

    @NonNull
    public static ItemMediaStoreImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemMediaStoreImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemMediaStoreImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_media_store_image, null, false, obj);
    }
}
