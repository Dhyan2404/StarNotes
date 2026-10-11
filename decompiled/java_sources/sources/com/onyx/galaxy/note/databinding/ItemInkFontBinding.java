package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemInkFontBinding extends ViewDataBinding {

    @NonNull
    public final TintView bottomDivider;

    @NonNull
    public final TintImageView downloadButton;

    @NonNull
    public final TintImageView fontTitleThumbnail;

    @NonNull
    public final ImageView loadingIcon;

    @NonNull
    public final TintImageView selectedIcon;

    public ItemInkFontBinding(Object obj, View view, int i, TintView tintView, TintImageView tintImageView, TintImageView tintImageView2, ImageView imageView, TintImageView tintImageView3) {
        super(obj, view, i);
        this.bottomDivider = tintView;
        this.downloadButton = tintImageView;
        this.fontTitleThumbnail = tintImageView2;
        this.loadingIcon = imageView;
        this.selectedIcon = tintImageView3;
    }

    public static ItemInkFontBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemInkFontBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemInkFontBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemInkFontBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_ink_font);
    }

    @NonNull
    @Deprecated
    public static ItemInkFontBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemInkFontBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_ink_font, viewGroup, z, obj);
    }

    @NonNull
    public static ItemInkFontBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemInkFontBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemInkFontBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_ink_font, null, false, obj);
    }
}
