package com.canhub.cropper.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.canhub.cropper.C2055R;
import com.canhub.cropper.CropOverlayView;

/* loaded from: classes3.dex */
public final class CropImageViewBinding implements ViewBinding {

    @NonNull
    public final CropOverlayView CropOverlayView;

    @NonNull
    public final ProgressBar CropProgressBar;

    @NonNull
    public final ImageView ImageViewImage;

    /* renamed from: e */
    @NonNull
    public final View f15746e;

    public CropImageViewBinding(@NonNull View view, @NonNull CropOverlayView cropOverlayView, @NonNull ProgressBar progressBar, @NonNull ImageView imageView) {
        this.f15746e = view;
        this.CropOverlayView = cropOverlayView;
        this.CropProgressBar = progressBar;
        this.ImageViewImage = imageView;
    }

    @NonNull
    public static CropImageViewBinding bind(@NonNull View view) {
        int i = C2055R.id.CropOverlayView;
        CropOverlayView cropOverlayView = (CropOverlayView) ViewBindings.findChildViewById(view, i);
        if (cropOverlayView != null) {
            i = C2055R.id.CropProgressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
            if (progressBar != null) {
                i = C2055R.id.ImageView_image;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    return new CropImageViewBinding(view, cropOverlayView, progressBar, imageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static CropImageViewBinding inflate(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        if (viewGroup == null) {
            throw new NullPointerException("parent");
        }
        layoutInflater.inflate(C2055R.layout.crop_image_view, viewGroup);
        return bind(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f15746e;
    }
}
