package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutPlaceholderStickerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57432e;

    @NonNull
    public final DynamicImageView ivHolder;

    @NonNull
    public final TintTextView tvSubTitle;

    @NonNull
    public final TintTextView tvTitle;

    public LayoutPlaceholderStickerBinding(@NonNull LinearLayout linearLayout, @NonNull DynamicImageView dynamicImageView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2) {
        this.f57432e = linearLayout;
        this.ivHolder = dynamicImageView;
        this.tvSubTitle = tintTextView;
        this.tvTitle = tintTextView2;
    }

    @NonNull
    public static LayoutPlaceholderStickerBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_holder;
        DynamicImageView dynamicImageView = (DynamicImageView) ViewBindings.findChildViewById(view, i);
        if (dynamicImageView != null) {
            i = C10651R.id.tv_sub_title;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.tv_title;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    return new LayoutPlaceholderStickerBinding((LinearLayout) view, dynamicImageView, tintTextView, tintTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutPlaceholderStickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPlaceholderStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_placeholder_sticker, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57432e;
    }
}
