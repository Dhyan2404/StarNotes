package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.canhub.cropper.CropImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentImageCropBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final CropImageView cropImageView;

    @NonNull
    public final TextView finishButton;

    @NonNull
    public final LinearLayout rootLayout;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TextView titleText;

    public FragmentImageCropBinding(Object obj, View view, int i, TintImageView tintImageView, CropImageView cropImageView, TextView textView, LinearLayout linearLayout, FrameLayout frameLayout, TextView textView2) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.cropImageView = cropImageView;
        this.finishButton = textView;
        this.rootLayout = linearLayout;
        this.titleBar = frameLayout;
        this.titleText = textView2;
    }

    public static FragmentImageCropBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentImageCropBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentImageCropBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentImageCropBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_image_crop);
    }

    @NonNull
    @Deprecated
    public static FragmentImageCropBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentImageCropBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_image_crop, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentImageCropBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentImageCropBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentImageCropBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_image_crop, null, false, obj);
    }
}
