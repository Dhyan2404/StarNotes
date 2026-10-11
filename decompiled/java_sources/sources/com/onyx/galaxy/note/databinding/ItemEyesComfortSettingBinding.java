package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemEyesComfortSettingBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57005e;

    @NonNull
    public final ShapeableImageView icIndicatorColor;

    @NonNull
    public final TintView ivStroke;

    @NonNull
    public final TintTextView tvSettingTitle;

    public ItemEyesComfortSettingBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull ShapeableImageView shapeableImageView, @NonNull TintView tintView, @NonNull TintTextView tintTextView) {
        this.f57005e = tintLinearLayout;
        this.icIndicatorColor = shapeableImageView;
        this.ivStroke = tintView;
        this.tvSettingTitle = tintTextView;
    }

    @NonNull
    public static ItemEyesComfortSettingBinding bind(@NonNull View view) {
        int i = C10651R.id.ic_indicator_color;
        ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
        if (shapeableImageView != null) {
            i = C10651R.id.iv_stroke;
            TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
            if (tintView != null) {
                i = C10651R.id.tv_setting_title;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    return new ItemEyesComfortSettingBinding((TintLinearLayout) view, shapeableImageView, tintView, tintTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemEyesComfortSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemEyesComfortSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_eyes_comfort_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57005e;
    }
}
