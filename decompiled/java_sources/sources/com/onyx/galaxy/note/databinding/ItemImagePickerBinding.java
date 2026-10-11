package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.RoundImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemImagePickerBinding extends ViewDataBinding {

    @NonNull
    public final RoundImageView ivImage;

    @NonNull
    public final TintImageView ivSelect;

    public ItemImagePickerBinding(Object obj, View view, int i, RoundImageView roundImageView, TintImageView tintImageView) {
        super(obj, view, i);
        this.ivImage = roundImageView;
        this.ivSelect = tintImageView;
    }

    public static ItemImagePickerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemImagePickerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemImagePickerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_image_picker);
    }

    @NonNull
    @Deprecated
    public static ItemImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemImagePickerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_image_picker, viewGroup, z, obj);
    }

    @NonNull
    public static ItemImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemImagePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemImagePickerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_image_picker, null, false, obj);
    }
}
