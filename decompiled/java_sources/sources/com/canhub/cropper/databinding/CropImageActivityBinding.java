package com.canhub.cropper.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.canhub.cropper.C2055R;
import com.canhub.cropper.CropImageView;

/* loaded from: classes3.dex */
public final class CropImageActivityBinding implements ViewBinding {

    @NonNull
    public final CropImageView cropImageView;

    /* renamed from: e */
    @NonNull
    public final CropImageView f15745e;

    public CropImageActivityBinding(@NonNull CropImageView cropImageView, @NonNull CropImageView cropImageView2) {
        this.f15745e = cropImageView;
        this.cropImageView = cropImageView2;
    }

    @NonNull
    public static CropImageActivityBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        CropImageView cropImageView = (CropImageView) view;
        return new CropImageActivityBinding(cropImageView, cropImageView);
    }

    @NonNull
    public static CropImageActivityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static CropImageActivityBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C2055R.layout.crop_image_activity, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public CropImageView getRoot() {
        return this.f15745e;
    }
}
