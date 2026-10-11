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
public final class LayoutPlaceholderStickerOfflineBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57433e;

    @NonNull
    public final TintTextView highlightTipText;

    @NonNull
    public final DynamicImageView ivHolder;

    @NonNull
    public final TintTextView tvSubTitle;

    @NonNull
    public final TintTextView tvTitle;

    public LayoutPlaceholderStickerOfflineBinding(@NonNull LinearLayout linearLayout, @NonNull TintTextView tintTextView, @NonNull DynamicImageView dynamicImageView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3) {
        this.f57433e = linearLayout;
        this.highlightTipText = tintTextView;
        this.ivHolder = dynamicImageView;
        this.tvSubTitle = tintTextView2;
        this.tvTitle = tintTextView3;
    }

    @NonNull
    public static LayoutPlaceholderStickerOfflineBinding bind(@NonNull View view) {
        int i = C10651R.id.highlightTipText;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            i = C10651R.id.iv_holder;
            DynamicImageView dynamicImageView = (DynamicImageView) ViewBindings.findChildViewById(view, i);
            if (dynamicImageView != null) {
                i = C10651R.id.tv_sub_title;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.tv_title;
                    TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView3 != null) {
                        return new LayoutPlaceholderStickerOfflineBinding((LinearLayout) view, tintTextView, dynamicImageView, tintTextView2, tintTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutPlaceholderStickerOfflineBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPlaceholderStickerOfflineBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_placeholder_sticker_offline, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57433e;
    }
}
